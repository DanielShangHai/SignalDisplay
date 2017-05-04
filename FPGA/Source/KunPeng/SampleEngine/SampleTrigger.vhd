-------------------------------------------------------------------------------
--  Sample trigger signal Generator
-------------------------------------------------------------------------------
--
-- $Id: SampleTrigger.vhd,v 1.1 2017/02/11 14:55:44 Daniel Song Exp $
--
-- Generate a programmable period and delayable timing signal.
--
--	FILE			SampleTrigger.VHD
--	Written by   	Daniel Song
--	Started			11 Feb 2017	
--	Latest Update	11 Feb 2017
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity SampleTrigger is					
	generic (
		WidthInBits			: 	integer := 24;
		DefaultPeriod		: 	integer := 100;
		DefaultDelay      :  integer := 0
	);
					
	port (
		clk					: 	in std_logic;	
		reset				: 	in std_logic;
		
--t		ce					: 	in std_logic;
		
		period				: 	in std_logic_vector((WidthInBits-1) downto 0) := CONV_STD_LOGIC_VECTOR(DefaultPeriod, WidthInBits);
--s		delay             :  in std_logic_vector((WidthInBits-1) downto 0) := CONV_STD_LOGIC_VECTOR(DefaultDelay, WidthInBits);
		enable				: 	in std_logic;
		sample_start      :  in std_logic;
		sample_stop       :  in std_logic;
		strobe				: 	out	std_logic;	-- single clock width strobe at rate expected
		sig					: 	out std_logic	-- 50% duty cycle signal at strobe period 
	);
end SampleTrigger;

architecture RTL of SampleTrigger is
	
	constant period_of_1 	: 	std_logic_vector((WidthInBits-1) downto 0) := CONV_STD_LOGIC_VECTOR(1, WidthInBits);
	
	signal counter			: std_logic_vector((WidthInBits-1) downto 0);
	signal halfPeriod 		: std_logic_vector((WidthInBits-1) downto 0);
	signal sample_startA,sample_startB,sample_startc : std_logic;
--D   signal ce : std_logic;
	signal CE_D : std_logic;
begin


	-- synchronise newSample_ch0 to clk
	process (clk, reset)
	begin
		if reset='1' then
			sample_startA <= '0';
			sample_startB <= '0';
			sample_startC <= '0';
		elsif rising_edge(clk) then
			sample_startA <= sample_start;
			sample_startB <= sample_startA;
			sample_startC <= sample_startB;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
		   CE_D <= '0';
		elsif rising_edge(clk) then
		   if (sample_startB='1') and (sample_startC='0') then 
			    CE_D <= '1' ;
		   elsif sample_stop = '1' then
			    CE_D <= '0';
			end if;
		end if;
	end process;


	-- right shift period to give mid-point
	halfPeriod <= '0' & period((WidthInBits-1) downto 1);

	-- count when enabled up to specified period
	process (clk, reset)
	begin
		if reset='1' then
			counter <= (others=>'0');
			strobe <= '0';
			sig <= '0';
		elsif rising_edge(clk) then
			if period <= period_of_1 then
				-- if period is <= 1 hold in effective reset as not enough clocks to generating output square wave
				counter <= (others=>'0');
				strobe <= '0';
				sig <= '0';
			elsif enable='0' then
				-- if disabled hold in effective reset
				counter <= period-1;
				strobe <= '0';	
				sig <= '0';
--D			elsif ce='1' then
			elsif CE_D='1' then
				-- only when clock enabled ...
				if counter = 0 then
					-- reload counter and toggle output
					counter <= period-1;
				else
					counter <= counter - 1;
				end if;
				
				if counter=1 then
					-- strobe at end of cycle
					strobe <= '1';
				else
					strobe <= '0';
				end if;
				
				if counter=0 then
					-- 50% duty cycle signal off at start of cycle
					sig <= '0';
				elsif counter=halfPeriod then
					-- 50% duty cycle signal on at half-cycle
					sig <= '1';
				end if;
			end if;
		end if;
	end process;

end RTL;
