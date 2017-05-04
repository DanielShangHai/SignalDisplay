-------------------------------------------------------------------------------
-- Parallel to serial
--
--  Parallel to serial converter, adds one start bit, one stop bit
-------------------------------------------------------------------------------
--	FILE			Par2Ser.vhd
--	Written by   	John Dowdell
--	Started			07 Apr 2006	
--	Latest Update	01 Sep 2013  modified by Daniel Song
--                  Added 10bytes FIFO BUFF control for improving transfering data jam
-------------------------------------------------------------------------------
-- 
--  clk 	clock to serialise with, divided down by Divisor
-- 	reset	active high reset
--
-- 	data	the data to serialise
-- 	req		active high request to serialise
-- 	ack		active high acknowledge that data is sent
--
-- 	outp	serialised output
--

--    For minim the FPGA resource We comment some unusing logic in calypsoUnspi with 
--    Symbol "--%" ------------Daniel Song

-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Par2Ser is										
	generic (
		Bits		: 	integer := 8;
		Divisor		:	integer := 18
	);
	
	port (
		clk			:	in	std_logic;				
		reset		:	in	std_logic;				-- reset input (high)
		
		data		:	in 	std_logic_vector((Bits-1) downto 0);
		req			: 	in	std_logic;
		ack			: 	out std_logic;	
			
--%		rescrc		:	in	std_logic := '1';          all commented by symbol --% is simplified by Daniel Song
--%		crc			:	out	std_logic_vector(15 downto 0);

		outp		:	out	std_logic				
	);
end Par2Ser;

architecture rtl of Par2Ser is

	signal ce 				: std_logic;
	signal divisorCounter	: integer range 0 to (Divisor-1);
	signal bitCounter 		: integer range 0 to Bits;
	
	type Par2SerState is (Idle, Pre_start, Pre_start_Ack1,Pre_start_Ack, Start, DataBits, Stop, Acknowledge);
	signal state 			: Par2SerState;
	
	signal sample			: std_logic;
	signal feedback			: std_logic;
	signal crc16_q			: std_logic_vector(15 downto 0);
	
	
   type array2d is array (natural range <>) of std_logic_vector(7 downto 0);
	signal Data_Buff : array2d(0 to 40);		
	
	signal DataCounter : integer range 0 to 40;
	type DataBuffState is (Idle, WaitPopAck,WaitPushAck);
	signal DataFetch_state 			: DataBuffState;
	signal DataToSend    : std_logic;
	signal POP_Ack       : std_logic;
	signal POP_req       : std_logic;
	signal SendData      : std_logic_vector(7 downto 0);
	
	signal StartedSig    : std_logic;
	
begin

	process (clk, reset)
	begin
		if reset='1' then
			divisorCounter <= 0;
			ce <= '0';
			sample <= '0';
		elsif rising_edge(clk) then
			if state /= Idle then
				if divisorCounter = (Divisor-1) then
					divisorCounter <= 0;
					ce <= '1';
					sample <= '0';
				elsif divisorCounter = (Divisor/2) then
					divisorCounter <= divisorCounter + 1;
					ce <= '0';
					sample <= '1';
				else
					divisorCounter <= divisorCounter+1;
					ce <= '0';
					sample <= '0';
				end if;
			else
				divisorCounter <= 1;
				ce <= '0';
				sample <= '0';				
			end if;
		end if;
	end process;
	
	
	process (clk, reset)
	begin
		if reset='1' then
		   StartedSig <= '0';
		   DataCounter <= 0;
         rstDataBuff: for i in Data_Buff'range loop
					Data_Buff(i) <= x"00";	
				end loop rstDataBuff;
--			Data_Buff(0) <= x"00";	
--			Data_Buff(1) <= x"00";
--			Data_Buff(2) <= x"00";
--			Data_Buff(3) <= x"00";	
--			Data_Buff(4) <= x"00";
--			Data_Buff(5) <= x"00";
--			Data_Buff(6) <= x"00";
--			Data_Buff(7) <= x"00";	
--			Data_Buff(8) <= x"00";
--			Data_Buff(9) <= x"00";	 
--       Data_Buff(10) <= x"00";			
			DataFetch_state <= Idle; 
			ack <= '0';	
			DataToSend <= '0';
			POP_Ack <= '0';			
		elsif rising_edge(clk) then
		  if DataCounter > 0 then
		     DataToSend <= '1';
		  else
		     DataToSend <= '0';
		  end if;
		  case DataFetch_state is
			 when Idle =>
		      if POP_req = '1' then

               shiftDataBuff: for i in 0 to 39 loop
					   Data_Buff(i) <= Data_Buff(i+1);	
				   end loop shiftDataBuff;	
		         Data_Buff(40) <= x"00";				
--			      Data_Buff(0) <= Data_Buff(1);
--				   Data_Buff(1) <= Data_Buff(2);
--				   Data_Buff(2) <= Data_Buff(3);
--				   Data_Buff(3) <= Data_Buff(4);
--				   Data_Buff(4) <= Data_Buff(5);
--			      Data_Buff(5) <= Data_Buff(6);
--				   Data_Buff(6) <= Data_Buff(7);
--				   Data_Buff(7) <= Data_Buff(8);
--				   Data_Buff(8) <= Data_Buff(9);
--				   Data_Buff(9) <= Data_Buff(10);				 
--               Data_Buff(10) <= x"00";	
		         POP_Ack <= '1';
		         if DataCounter > 0 then
					   DataCounter <= DataCounter - 1;
					end if;
		         DataFetch_state <= WaitPopAck;
				elsif req = '1' then
				   ack <= '1';
					StartedSig <= '1';
				   Data_Buff(DataCounter) <= data;
		         if DataCounter < 40 then
					   DataCounter <= DataCounter + 1;
					end if;					
				   DataFetch_state <= WaitPushAck;				
				end if;				
			 when WaitPopAck =>
			   if POP_req = '0' then
			      DataFetch_state <= Idle;
					POP_Ack <= '0';
		  	   end if;
			 when WaitPushAck =>
			   if req = '0' then
			      DataFetch_state <= Idle;
					ack <= '0';
		  	   end if;			
			 when others =>
            DataFetch_state <= Idle;			
		   end case;
		end if;
	end process;	
	
	
	
	process (clk, reset)
	begin
		if reset='1' then
			state <= Idle;
			outp <= '1';
	--		ack <= '0';
			bitCounter <= 0;
			POP_req <= '0';
		elsif rising_edge(clk) then
	--		ack <= '0';
			case state is
				when Idle =>	
					outp <= '1';
	--            if DataToSend='1' then
	            if DataCounter > 0 then
						state <= Pre_start;
					end if;	
		
            when Pre_start => 
		         SendData <= Data_Buff(0);					
					state <= Pre_start_Ack1;
				when Pre_start_Ack1=>
					POP_req <= '1';
					state <= Pre_start_Ack;
				when Pre_start_Ack =>				   
			      if POP_Ack = '1' then	
					  state <= Start;
					  POP_req <= '0';		
               end if;					
				when Start =>
					outp <= '0';
					BitCounter <= 0;
					if ce='1' then
						state <= DataBits;
					end if;
				when DataBits =>
					outp <= SendData(BitCounter);--data(BitCounter);
					if ce='1' then
						if BitCounter = (Bits-1) then	
							state <= Stop;
						else
							BitCounter <= BitCounter+1;
						end if;
					end if;
				when Stop =>
					outp <= '1';
					if ce='1' then
	--					state <= Acknowledge;
	               state <= Idle;
					end if;
	--			when Acknowledge =>
	--				outp <= '1';
	--				ack <= '1';
	--				if req='0' then
	--					ack <= '0';
	--					state <= Idle;
	--				end if;
				when others =>
					outp <= '1';
					state <= Idle;
			end case;
		end if;
	end process;

--%	process (clk, reset)
--%	begin
--%		if reset = '1' then
--%			feedback	<= '0';
--%			crc16_q		<= (others=>'1');
--%		elsif rising_edge(clk) then
--%			feedback	<= data(BitCounter) xor crc16_q(15);
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
--%				crc16_q(5)  <= crc16_q(4) xor feedback;
--%				crc16_q(6)  <= crc16_q(5);
--%				crc16_q(7)  <= crc16_q(6);
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
