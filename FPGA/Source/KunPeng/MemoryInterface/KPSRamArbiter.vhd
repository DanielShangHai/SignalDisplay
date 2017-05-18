-------------------------------------------------------------------------------
--  SRAM Arbiter
-------------------------------------------------------------------------------
--
-- $Id: Arbiter.vhd,v 1.2 2009/04/23 08:03:02 Yu_Ray Exp $
--
-------------------------------------------------------------------------------
--
-- Accesses SRAM, arbitrating between requests from the Print engine (read only)
-- and SPI interfaces (read/write).
--
-- Note this block assumes the strobe signals are synchronised to the clock.
-- Strobes to be asserted until corresponding start signal is driven.
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity SRAMArbiter is
	port (
		reset			: in	std_logic;
		clk				: in	std_logic;	-- system 50MHz
		
		-- SPI interface, byte addressable
		spiAddress		: in	std_logic_vector(18 downto 0);	-- byte address 17+1
		spiStrobe		: in 	std_logic;						-- access strobe
		spiWrite		: in 	std_logic;						-- 1=write, 0=read
		spiWrData		: in	std_logic_vector(7 downto 0);	-- data to write
		spiRdData		: out	std_logic_vector(7 downto 0);	-- data read
		spiStart		: out	std_logic;						-- indicates start of cycle
		spiDone			: out	std_logic;						-- indicates end of cycle (read data valid)

		-- Data Process interface, word reads
		dpAddress		: in	std_logic_vector(17 downto 0);	-- word address
		dpStrobe		   : in 	std_logic;						-- access strobe
		dpRdData		   : out	std_logic_vector(15 downto 0);	-- data read
		dpRdStart		: out	std_logic;						-- indicates start of read cycle
		dpRdDone		   : out	std_logic;						-- indicates end of read cycle (data valid)
			
		-- SRAM interface
		sramAddress		: out	std_logic_vector(17 downto 0);	-- word address
		sram_Data		: inout	std_logic_vector(15 downto 0);	-- write data (needs external tristate)
		sramCS			: out	std_logic_vector(1 downto 0);	-- chip selects (active high)
		sramOE			: out	std_logic;						-- output enable (active high)
		sramWE			: out	std_logic;						-- write enable (active high)
		sramUB			: out	std_logic;						-- upper byte enable (active high)
		sramLB			: out	std_logic;						-- lower byte enable (active high)
			
		TEST			: out	std_logic_vector(7 downto 0)
	);
end SRAMArbiter;

architecture RTL of SRAMArbiter is

	type States is (Idle,
					dpRead1, dpRead2, dpRead3, dpRead4, dpRead5, dpRead6, dpRead7, dpRead8, 
					spiWrite1, spiWrite2, spiWrite3, spiWrite4, spiWrite5, spiWrite6, spiWrite7, 
					spiRead1, spiRead2, spiRead3, spiRead4, spiRead5, spiRead6, spiRead7);
	signal state : States;

signal		sramWrData		:std_logic_vector(15 downto 0);	-- write data (needs external tristate)
signal		sramRdData		:std_logic_vector(15 downto 0);	-- read data
signal		sramWrite		:std_logic;						-- data bus write to sram


begin
	sramRdData <= sram_Data;	
	sram_Data <=sramWrData when sramWrite='1' else (others=>'Z');
	  

	TEST(7 downto 5) <= (others=>'0');
	
	TEST(0) <='1' when spiAddress="000000000000000000010" else '0';
	TEST(1) <='1' when spiWrData=x"5A" else '0';
	TEST(2) <= spiStrobe ;
	TEST(3) <= sramWrite ;    
	TEST(4) <= '1' when sram_Data(7 downto 0)=x"5A" else '0';
	
	process (clk, reset)
	begin
		if reset='1' then
			state <= Idle;
			sramAddress	<= (others=>'0');
			sramWrData	<= (others=>'0');
			sramWrite	<= '0';
			sramCS		<= "00";
			sramOE		<= '0';
			sramWE		<= '0';
			sramUB		<= '0';
			sramLB		<= '0';
			spiRdData	<= (others=>'0');
			spiStart	<= '0';
			spiDone		<= '0';
			dpRdData	<= (others=>'0');
			dpRdStart	<= '0';
			dpRdDone	<= '0';
		elsif rising_edge(clk) then
			case state is
				when Idle =>
					sramWrite <= '0';
					-- check if either DP or SPI requesting access
					if spiStrobe='1' then
						-- check for SPI first as it can not wait as long as DP
						if spiWrite='0' then
							-- SPI read
							state <= spiRead1;
						else
							-- SPI write
							sramWrite <= '1';
							sramAddress	<= spiAddress(18 downto 1);
							sramWrData <= spiWrData & spiWrData;
							state <= spiWrite1;
						end if;
					elsif dpStrobe='1' then
						-- DP read
						state <= dpRead1;
					end if;
					
				when dpRead1 =>
					dpRdStart <= '1';
					sramAddress	<= dpAddress(18 downto 0);
					sramCS(0) <= not dpAddress(19);
					sramCS(1) <=     dpAddress(19);
					sramOE <= '1';		
					sramUB <= '1';		
					sramLB <= '1';		
					state <= dpRead2;

				when dpRead2 =>
					dpRdStart <= '0';
					state <= dpRead3;

				when dpRead3 =>
					state <= dpRead4;

				when dpRead4 =>
					state <= dpRead5;

				when dpRead5 =>
					state <= dpRead6;

				when dpRead6 =>
					state <= dpRead7;

				when dpRead7 =>
					dpRdDone <= '1';
					dpRdData <= sramRdData;
					sramCS <= "00";
					sramOE <= '0';		
					sramUB <= '0';		
					sramLB <= '0';		
					state <= dpRead8;

				when dpRead8 =>
					dpRdDone <= '0';
					state <= Idle;			
		
		
				when spiRead1 =>
					spiStart <= '1';
					--sramAddress	<= spiAddress(19 downto 1);
					--sramCS(0) <= not spiAddress(20);
					--sramCS(1) <=     spiAddress(20);
					--sramOE <= '1';		
					--sramUB <= '1';		
					--sramLB <= '1';		
					--state <= spiRead2;
					sramAddress	<= spiAddress(18 downto 1);
               sramCS(0) <= '1';
					--sramCS(1) <=     spiAddress(20);
					sramOE <= '1';		
					sramUB <= '1';		
					sramLB <= '1';		
					state <= spiRead2;
				when spiRead2 =>
					spiStart <= '0';
					state <= spiRead3;

				when spiRead3 =>
					state <= spiRead4;

				when spiRead4 =>
					state <= spiRead5;

				when spiRead5 =>
					state <= spiRead6;

				when spiRead6 =>
					spiDone <= '1';
					if spiAddress(0)='0' then
						spiRdData <= sramRdData(7 downto 0);
					else
						spiRdData <= sramRdData(15 downto 8);
					end if;
					sramCS <= "00";
					sramOE <= '0';		
					sramUB <= '0';		
					sramLB <= '0';		
					state <= spiRead7;

				when spiRead7 =>
					spiDone <= '0';
					state <= Idle;			
				
				when spiWrite1 =>
					spiStart <= '1';
					sramCS(0) <= not spiAddress(20);
					sramCS(1) <=     spiAddress(20);
					sramWE <= '1';		
					if spiAddress(0)='0' then
						sramLB <= '1';		
					else
						sramUB <= '1';		
					end if;
					state <= spiWrite2;

				when spiWrite2 =>
					spiStart <= '0';
					state <= spiWrite3;

				when spiWrite3 =>
					state <= spiWrite4;

				when spiWrite4 =>
					state <= spiWrite5;

				when spiWrite5 =>
					state <= spiWrite6;

				when spiWrite6 =>
					spiDone <= '1';
					sramCS <= "00";
					sramWE <= '0';		
					sramUB <= '0';		
					sramLB <= '0';		
					state <= spiWrite7;

				when spiWrite7 =>
					sramWrite <= '0';
					spiDone <= '0';
					state <= Idle;			
								
				when others => 
					state <= Idle;
					sramAddress	<= (others=>'0');
					sramWrData	<= (others=>'0');
					sramWrite	<= '0';
					sramCS		<= "00";
					sramOE		<= '0';
					sramWE		<= '0';
					sramUB		<= '0';
					sramLB		<= '0';
					spiRdData	<= (others=>'0');
					spiStart	<= '0';
					spiDone		<= '0';
					dpRdData	<= (others=>'0');
					dpRdStart	<= '0';
					dpRdDone	<= '0';

			end case;
		end if;
	end process;
	
end RTL;
