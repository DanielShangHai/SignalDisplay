-------------------------------------------------------------------------------
--  SRAM Arbiter
-------------------------------------------------------------------------------
--
-- $Id: KPSRamArbiter.vhd,v 1.2 2017/06/07 20:03:02 Daniel_Song Exp $
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

entity KPSRamArbiter is
	port (
		reset			: in	std_logic;
		clk			: in	std_logic;	-- system 50MHz
		
		RAM_W_ADDR    : in  std_logic_vector(18 downto 0);
		RAM_W_STROBE  : in  std_logic;
		RAM_W_WRITE   : in  std_logic;
		RAM_W_DATA    : in  std_logic_vector(15 downto 0);
		RAM_W_START : out std_logic;
		RAM_W_DONE  : out std_logic;	
		
		RAM_SAMPLE_READ_STROBE: in std_logic;
		RAM_SAMPLE_READ_ADDR : in std_logic_vector(23 downto 0);
		

		RAM_SAMPLE_READ_DATA : out std_logic_vector(15 downto 0);
		RAM_SAMPLE_READ_START : out std_logic;
		RAM_SAMPLE_READ_DONE  : out std_logic;
		
-- SRAM interface
		sramAddress		: out	std_logic_vector(18 downto 0);	-- word address
		sram_Data		: inout	std_logic_vector(15 downto 0);	-- write data (needs external tristate)
		sramCS			: out	std_logic_vector(1 downto 0);	-- chip selects (active high)
		sramOE			: out	std_logic;						-- output enable (active high)
		sramWE			: out	std_logic;						-- write enable (active high)
		sramUB			: out	std_logic;						-- upper byte enable (active high)
		sramLB			: out	std_logic;						-- lower byte enable (active high)


		
		
		-- SPI interface, byte addressable
--		spiAddress		: in	std_logic_vector(18 downto 0);	-- byte address 17+1
--		spiStrobe		: in 	std_logic;						-- access strobe
--		spiWrite		: in 	std_logic;						-- 1=write, 0=read
--		spiWrData		: in	std_logic_vector(7 downto 0);	-- data to write
--		spiRdData		: out	std_logic_vector(7 downto 0);	-- data read
--		spiStart		: out	std_logic;						-- indicates start of cycle
--		spiDone			: out	std_logic;						-- indicates end of cycle (read data valid)

		-- Data Process interface, word reads
--		dpAddress		: in	std_logic_vector(17 downto 0);	-- word address
--		dpStrobe		   : in 	std_logic;						-- access strobe
--		dpRdData		   : out	std_logic_vector(15 downto 0);	-- data read
--		dpRdStart		: out	std_logic;						-- indicates start of read cycle
--		dpRdDone		   : out	std_logic;						-- indicates end of read cycle (data valid)
			
		
			
	  TEST			: out	std_logic_vector(7 downto 0)
	);
end KPSRamArbiter;

architecture RTL of KPSRamArbiter is

	--type States is (Idle,
	--				dpRead1, dpRead2, dpRead3, dpRead4, dpRead5, dpRead6, dpRead7, dpRead8, 
	--				spiWrite1, spiWrite2, spiWrite3, spiWrite4, spiWrite5, spiWrite6, spiWrite7, 
	--				spiRead1, spiRead2, spiRead3, spiRead4, spiRead5, spiRead6, spiRead7);

					
	type States is (Idle,
					ISARead1, ISARead2, ISARead3, ISARead4,ISARead5,ISARead6,ISARead7,ISARead8, samplingWrite1, samplingWrite2,
					samplingWrite3, samplingWrite4, samplingWrite5, samplingWrite6, samplingWrite7, 
					spiRead1, spiRead2, spiRead3, spiRead4, spiRead5, spiRead6, spiRead7);				
					
	signal state : States;

signal		sramWrData		:std_logic_vector(15 downto 0);	-- write data (needs external tristate)
signal		sramRdData		:std_logic_vector(15 downto 0);	-- read data
signal		sramWrite		:std_logic;						-- data bus write to sram


begin
	sramRdData <= sram_Data;	
	sram_Data <=sramWrData when sramWrite='1' else (others=>'Z');
	  

--	TEST(7 downto 5) <= (others=>'0');
	
--	TEST(0) <='1' when spiAddress="000000000000000000010" else '0';
--	TEST(1) <='1' when spiWrData=x"5A" else '0';
--	TEST(2) <= spiStrobe ;
--	TEST(3) <= sramWrite ;    
--	TEST(4) <= '1' when sram_Data(7 downto 0)=x"5A" else '0';

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
--			spiRdData	<= (others=>'0');
			
			RAM_W_START <= '0';
			RAM_W_DONE  <= '0';
--			spiStart	<= '0';
--			spiDone		<= '0';
--			dpRdData	<= (others=>'0');
--			dpRdStart	<= '0';
--			dpRdDone	<= '0';
         RAM_SAMPLE_READ_DATA	<= (others=>'0');
         RAM_SAMPLE_READ_START <= '0';
			RAM_SAMPLE_READ_DONE <= '0';
		elsif rising_edge(clk) then
			case state is
				when Idle =>
					sramWrite <= '0';
					-- check if either DP or SPI requesting access
					if RAM_SAMPLE_READ_STROBE='1' then
					   state <= ISARead1;
               elsif RAM_W_STROBE='1' then
			         if RAM_W_WRITE='0' then
							-- SPI read
							state <= spiRead1;
						else
							-- ADC SAMPLING write
							sramWrite <= '1';
							sramAddress	<= RAM_W_ADDR(18 downto 0);
							sramWrData <= RAM_W_DATA(15 downto 0);
							state <= samplingWrite1;
						end if;		
					end if;
					
					
					--if spiStrobe='1' then
						-- check for SPI first as it can not wait as long as DP
					--	if spiWrite='0' then
					--		-- SPI read
					--		state <= spiRead1;
					--	else
							-- SPI write
					--		sramWrite <= '1';
					--		sramAddress	<= spiAddress(18 downto 1);
					--		sramWrData <= spiWrData & spiWrData;
					--		state <= spiWrite1;
					--	end if;
					--elsif dpStrobe='1' then
						-- DP read
					--	state <= dpRead1;
					--end if;
			   
				when ISARead1 =>
					  RAM_SAMPLE_READ_START <= '1';
				     sramAddress	<= RAM_SAMPLE_READ_ADDR(18 downto 0); 
				     sramCS(0) <= not RAM_SAMPLE_READ_ADDR(19);
				     sramCS(1) <=     RAM_SAMPLE_READ_ADDR(19);
				     sramOE <= '1';		
				     sramUB <= '1';		
				     sramLB <= '1';		
				     state <= ISARead2;
				
				when ISARead2 =>
					RAM_SAMPLE_READ_START <= '0';
					state <= ISARead3;
				when ISARead3 =>
					state <= ISARead4;
				when ISARead4 =>
					state <= ISARead5;
				when ISARead5 =>
					state <= ISARead6;
				when ISARead6 =>
					state <= ISARead7;	
				when ISARead7 =>
					RAM_SAMPLE_READ_DONE <= '1';
					RAM_SAMPLE_READ_DATA <= sramRdData;
					sramCS <= "00";
					sramOE <= '0';		
					sramUB <= '0';		
					sramLB <= '0';		
					state <= ISARead8;
				when ISARead8 =>
					RAM_SAMPLE_READ_DONE <= '0';
					state <= Idle;		
					
				--when dpRead1 =>
				--	dpRdStart <= '1';
				--	sramAddress	<= dpAddress(18 downto 0);
				--	sramCS(0) <= not dpAddress(19);
				--	sramCS(1) <=     dpAddress(19);
				--	sramOE <= '1';		
				--	sramUB <= '1';		
				--	sramLB <= '1';		
				--	state <= dpRead2;
				--when dpRead2 =>
				--	dpRdStart <= '0';
				--	state <= dpRead3;
				--when dpRead3 =>
				--	state <= dpRead4;
				--when dpRead4 =>
				--	state <= dpRead5;
				--when dpRead5 =>
				--	state <= dpRead6;
				--when dpRead6 =>
				--	state <= dpRead7;
				--when dpRead7 =>
				--	dpRdDone <= '1';
				--	dpRdData <= sramRdData;
				--	sramCS <= "00";
				--	sramOE <= '0';		
				--	sramUB <= '0';		
				--	sramLB <= '0';		
				--	state <= dpRead8;
				--when dpRead8 =>
				--	dpRdDone <= '0';
				--	state <= Idle;			
		
		
				when spiRead1 =>
--					spiStart <= '1';
					--sramAddress	<= spiAddress(19 downto 1);
					--sramCS(0) <= not spiAddress(20);
					--sramCS(1) <=     spiAddress(20);
					--sramOE <= '1';		
					--sramUB <= '1';		
					--sramLB <= '1';		
					--state <= spiRead2;
--					sramAddress	<= spiAddress(18 downto 1);
--               sramCS(0) <= '1';
					--sramCS(1) <=     spiAddress(20);
--					sramOE <= '1';		
--					sramUB <= '1';		
--					sramLB <= '1';		
--					state <= spiRead2;
				when spiRead2 =>
--					spiStart <= '0';
--					state <= spiRead3;

				when spiRead3 =>
--					state <= spiRead4;

				when spiRead4 =>
--					state <= spiRead5;

				when spiRead5 =>
--					state <= spiRead6;

				when spiRead6 =>
--					spiDone <= '1';
--					if spiAddress(0)='0' then
--						spiRdData <= sramRdData(7 downto 0);
--					else
--						spiRdData <= sramRdData(15 downto 8);
--					end if;
--					sramCS <= "00";
--					sramOE <= '0';		
--					sramUB <= '0';		
--					sramLB <= '0';		
--					state <= spiRead7;

				when spiRead7 =>
--					spiDone <= '0';
					state <= Idle;			
				
				when samplingWrite1 =>
					RAM_W_START <= '1';
					sramCS(0) <= '1'; -- not spiAddress(20);
					sramCS(1) <=  '0'; --   spiAddress(20);
					sramWE <= '1';		
--					if spiAddress(0)='0' then
--						sramLB <= '1';		
--					else
--						sramUB <= '1';		
--					end if;
					state <= samplingWrite2;

				when samplingWrite2 =>
					RAM_W_START <= '0';
					state <= samplingWrite3;

				when samplingWrite3 =>
					state <= samplingWrite4;

				when samplingWrite4 =>
					state <= samplingWrite5;

				when samplingWrite5 =>
					state <= samplingWrite6;

				when samplingWrite6 =>
					RAM_W_DONE <= '1';
					sramCS <= "00";
					sramWE <= '0';		
					sramUB <= '0';		
					sramLB <= '0';		
					state <= samplingWrite7;

				when samplingWrite7 =>
					sramWrite <= '0';
					RAM_W_DONE <= '0';
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
					--spiRdData	<= (others=>'0');
--					spiStart	<= '0';
--					spiDone		<= '0';
--					dpRdData	<= (others=>'0');
--					dpRdStart	<= '0';
--					dpRdDone	<= '0';
			      RAM_W_START <= '0';
			      RAM_W_DONE  <= '0';
               RAM_SAMPLE_READ_DATA	<= (others=>'0');
               RAM_SAMPLE_READ_START <= '0';
			      RAM_SAMPLE_READ_DONE <= '0';
			end case;
		end if;
	end process;
	
end RTL;
