-------------------------------------------------------------------------------
-- Serial to Parallel
--
--  Serial to Parallel converter,  one start bit, one stop bit
-------------------------------------------------------------------------------
--	FILE			Ser2Par.vhd
--	Written by   	John Dowdell
--	Started			07 Apr 2006	
--	Latest Update	--	Latest Update	01 Sep 2013  modified by Daniel Song
-------------------------------------------------------------------------------
-- 
--  clk 	clock to deserialise with, baud rate set by Divisor
-- 	reset	active high reset
--
-- 	inp		the serial stream
--
-- 	data	the data recovered
-- 	req		active high request to hand on data
-- 	ack		active high acknowledge that data is received
--
--	rescrc	active high reset of crc register
--	crc		crc16 of input data
--
-- 	FE		frame error
--	OE		overrun error
--


--    For minim the FPGA resource We comment some unusing logic in calypsoUnspi with 
--    Symbol "--%" ------------Daniel Song
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Ser2Par is										
	generic (
		Bits		: 	integer := 8;
		Divisor		:	integer := 18
	);
	
	port (
		clk			:	in	std_logic;				
		reset		:	in	std_logic;				-- reset input (high)
		
		inp			:	in	std_logic;
		synced		: 	out	std_logic;
		
		data		:	out 	std_logic_vector((Bits-1) downto 0);
		req			: 	out	std_logic;
		ack			: 	in std_logic;	
			
--%		rescrc		:	in	std_logic := '1';
--%		crc			:	out	std_Logic_vector(15 downto 0);
		FE			:	out std_logic;			
		OE			:	out std_logic
	);
end Ser2Par;

architecture rtl of Ser2Par is

	signal inp_sync1, inp_sync2, inp_sync3	: std_logic;
	signal inp_sync	: std_logic;

	signal ce 				: std_logic;
	signal sample			: std_logic;
	signal divisorCounter	: integer range 0 to (Divisor-1);
	
	signal shiftreg			: std_logic_vector((Bits-1) downto 0);
	signal done				: std_logic;
	signal BitCounter 		: integer range 0 to (Bits-1);
	
	type Ser2ParState is (Idle, Start, DataBits, Stop);
	signal state 			: Ser2ParState;
	
	type HandShakeState is (hsIdle, hsAcknowledge, hsWaitNoAck);
	signal hsstate			: HandShakeState;
	
	signal feedback			:	std_logic;
	signal crc16_q			:	std_logic_vector(15 downto 0);
	
begin

	synced <= inp_sync2;

	-- synchronise the input to the clock and detect falling edge of start bit
	process (clk, reset)
	begin
		if reset='1' then
			inp_sync1 <= '1';
			inp_sync2 <= '1';
			inp_sync3 <= '1';
		elsif rising_edge(clk) then
			inp_sync1 <= inp;
			inp_sync2 <= inp_sync1;
			inp_sync3 <= inp_sync2;
		end if;
	end process;
	inp_sync <= not inp_sync2 and inp_sync3;	-- falling edge

	process (clk, reset)
	begin
		if reset='1' then
			divisorCounter <= 0;
			sample <= '0';
			ce <= '0';
		elsif rising_edge(clk) then
			-- check for start
			if (state=Idle) or ((state=Start) and (inp_sync='1') and (divisorCounter<(Divisor/2))) then
				-- look for falling edge of input either
				--   in idle (not seen anything yet) or
				--   before the sample point in the start state
				-- this rejects short glitches
				divisorCounter <= 1;
				ce <= '0';
				sample <= '0';
			else
				-- sample in the middle of the bit
				if divisorCounter = (Divisor/2) then
					sample <= '1';
				else
					sample <= '0';
				end if;

				-- ce at the end of the bit
				if divisorCounter = (Divisor-1) then
					divisorCounter <= 0;
					ce <= '1';
				else
					divisorCounter <= divisorCounter+1;
					ce <= '0';
				end if;
			end if;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
			state <= Idle;
			done <= '0';
			shiftreg <= (others=>'0');
			FE <= '0';
			BitCounter <= 0;
		elsif rising_edge(clk) then
			case state is
				when Idle =>	
					done <= '0';
					-- reset frame error 
--%					if rescrc='1' then
--%						FE <= '0';
--%					end if;
					-- check for falling edge of start pulse
					if inp_sync='1' then
						state <= Start;
					end if;
				when Start =>
					-- check that the input stayed low for half a bit period
					if (sample='1') and (inp_sync2 /= '0') then
						state <= Idle;
					end if;
					-- check for end of period: first bit
					if ce = '1' then
						BitCounter <= 0;
						state <= DataBits;
					end if;
				when DataBits =>
					if sample='1' then
						shiftreg(BitCounter) <= inp_sync2;
					end if;
					if ce='1' then
						if BitCounter = (Bits-1) then
							state <= Stop;
						else
							BitCounter <= BitCounter + 1;
						end if;
					end if;
				when Stop =>
					if sample='1' then
						-- stop looking after half of bit to allow for sync to stop for next bit
						if inp_sync2 /= '1' then
							-- if not 1 then frame error
						 	FE <= '1';
						else
							-- otherwise try to send off
							done <= '1';
						end if;
						-- end of character reception
						state <= Idle;
					end if;
				when others =>
					shiftreg <= (others=>'0');
					done <= '0';
					state <= Idle;
			end case;
		end if;
	end process;

	process (clk, reset)
	begin
		if reset='1' then
			hsstate	<= hsIdle;
			data <= (others=>'0');
			req <= '0';
			OE <= '0';
		elsif rising_edge(clk) then
			case hsstate is
				when hsIdle =>
					-- reset overrun
--%					if rescrc='1' then
--%						OE <= '0';
--%					end if;
					-- wait for end of received byte
					if done='1' then
						req <= '1';
						data <= shiftreg;
						hsstate <= hsAcknowledge;
					end if;
					
				when hsAcknowledge =>
					-- overrun error if get end of byte in this state
					if done='1' then
						OE <= '1';
--%					elsif rescrc='1' then
--%						OE <= '0';
					end if;
					-- wait for ack
					if ack='1' then
						req <= '0';
						hsstate <= hsWaitNoAck;
					end if;
					
				when hsWaitNoAck =>
					-- overrun error if get end of byte in this state
					if done='1' then
						OE <= '1';
--%					elsif rescrc='1' then
--%						OE <= '0';
					end if;
					-- wait for ack to disappear
					if ack='0' then
						hsstate <= hsIdle;
					end if;
					
				when others =>
					hsstate	<= hsIdle;
					data <= (others=>'0');
					req <= '0';
					OE <= '0';
			end case;
		end if;
	end process;

--%	process (clk, reset)
--%	begin
--%		if reset = '1' then
--%			feedback	<= '0';
--%			crc16_q		<= (others=>'1');
--%		elsif rising_edge(clk) then
--%			feedback	<= inp_sync2 xor crc16_q(15);
--%			crc			<= crc16_q(0) & crc16_q(1) & crc16_q(2) & crc16_q(3) &
--%							crc16_q(4) & crc16_q(5) & crc16_q(6) & crc16_q(7) &
--%							crc16_q(8) & crc16_q(9) & crc16_q(10) & crc16_q(11) &
--%							crc16_q(12) & crc16_q(13) & crc16_q(14) & crc16_q(15);
--%			if rescrc = '1' then
--%				crc16_q <= (others=>'1');
--%			elsif (state = DataBits and sample = '1') then
--%				crc16_q(0)  <= feedback;
--%				crc16_q(1)  <= crc16_q(0);
--%				crc16_q(2)  <= crc16_q(1);
--%				crc16_q(3)  <= crc16_q(2);
--%				crc16_q(4)  <= crc16_q(3);
--%			crc16_q(5)  <= crc16_q(4) xor feedback;
--%				crc16_q(6)  <= crc16_q(5);
--%			crc16_q(7)  <= crc16_q(6);
--%				crc16_q(8)  <= crc16_q(7);
--%				crc16_q(9)  <= crc16_q(8);
--%				crc16_q(10) <= crc16_q(9);
--%				crc16_q(11) <= crc16_q(10);
--%				crc16_q(12) <= crc16_q(11) xor feedback;
--%				crc16_q(13) <= crc16_q(12);
--%				crc16_q(14) <= crc16_q(13);
--%				crc16_q(15) <= crc16_q(14);
--%			end if;
--%		end if;
--%	end process;

end rtl;
