-------------------------------------------------------------------------------
--  12-bit ADC AD7276
-------------------------------------------------------------------------------
--
-- $Id: AD7276.vhd,v 1.0 2016/10/02 09:11:21 Daniel Song Exp $
--
-- 12-bit ADC AD7276
--
--	FILE				AD7276.vhd,v
--	Written by   	Daniel Song
--	Started			02 Oct 2016	
--	Latest Update	02 Oct 2016
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity AD7276 is								
	port (
				-- inputs
				clk			:	in		std_logic;								-- 50MHz clk for 390.625KHz SCL (fscl = fclk/128);
				reset			:	in		std_logic;								-- Reset input (active high)
				
				start_sample:  in    std_logic;
				sclk        :  out   std_logic;
				sdata       :  in    std_logic;
				cs          :  out   std_logic;
				busy        :  buffer   std_logic;
				
				adc_data    :  buffer    std_logic_vector(15 downto 0);
				newsample	:	buffer	std_logic

			);
end AD7276;

architecture rtl of AD7276 is
	type States is (	IDLE,					-- WRITE the slave address for MAX11646EUA;
							TRIGER_CONVERT, 								-- Initial all the registers to the default value;
							GET_DATA_BIT_HIGH, 					-- Write configuration byte to MAX11646EUA;
							GET_DATA_BIT_LOW, 									-- ADC module IDLE;
							GET_DATA_FINISHED
						);
	
--	constant		MAX11646EUA_ADDRESS			: std_logic_vector(6 downto 0) := "0110110";			-- MAX11646EUA address, all of the 7 bits programed by manufacture;
--	constant		INIT_SETUP_BYTE				: std_logic_vector(7 downto 0) := "11110010";		-- Internal reference output always on; 
																															-- Internal clock; 
																															-- unipolar;
																															-- no action (do not reset the configuration register);
--	constant		INIT_CONFIGURATION_BYTE		: std_logic_vector(7 downto 0) := "00000011";		-- scans up from AIN0 to AIN1;
																															-- single-ended mode;
	
	signal current_state : States;
	signal DelayCounter     : std_logic_vector(7 downto 0);
	signal BitCounter       : std_logic_vector(7 downto 0);
	signal ConvertData      : std_logic_vector(15 downto 0);
	signal inShift          : std_logic_vector(15 downto 0);          
	

--------------------------------------------------------------------------------------------	

-------------------------------------------------------------------------------	
begin
-------------------------------------------------------------------------------

--process(current_state, i2c_wdone, i2c_wdone_reg, active_add, clk_counter, i2c_rdone, i2c_rdone_reg)
process (clk)	
	begin
		if rising_edge (clk) then
		  if (reset='1') then
				current_state	<= IDLE;
				cs <= '0';
				sclk <= '1';
				DelayCounter <= x"FF";
				busy <= '0';
				newsample <= '0';
		  else
		      case current_state is
		      when IDLE =>
			       if (start_sample = '1') then
				        current_state <= TRIGER_CONVERT;
						  busy <= '1';
					     cs <= '1';
					     DelayCounter <= x"02";
						  newsample <= '0';		
				    else
		              busy <= '0';
				        cs <= '0';
				        sclk <= '1';
				        DelayCounter <= x"FF";
						  newsample <= '0';						  
				    end if;
			   when TRIGER_CONVERT =>
			       if (DelayCounter = x"00") then
				        current_state <= GET_DATA_BIT_LOW;
					     sclk <= '0';
					     DelayCounter <= x"02";
					     BitCounter <= x"0E";  -- 取12位需要14个
			       else
				        DelayCounter <= DelayCounter - 1;
				    end if;
			   when GET_DATA_BIT_HIGH =>
				    if (DelayCounter = x"00") then
					    current_state	<= GET_DATA_BIT_LOW;
					    sclk <= '0';
					    DelayCounter <= x"02";
				    else 
				       if (DelayCounter = x"02") then
				          inShift <= inShift(14 downto 0) & sdata;
				       end if;
				       DelayCounter <= DelayCounter - 1;
				    end if;
			   when GET_DATA_BIT_LOW =>
				    if (DelayCounter = x"00") then
					     sclk <= '1';					
					     if (BitCounter = x"01") then
					         current_state  <= GET_DATA_FINISHED;
					     else
					         current_state	<= GET_DATA_BIT_HIGH;
					     end if;
					     BitCounter <= BitCounter - 1;
					     DelayCounter <= x"02";
				    else
					     DelayCounter <= DelayCounter - 1;
				    end if;
			   when GET_DATA_FINISHED =>
			       sclk <= '1';
				    cs <= '0';
					 adc_data <= inShift;
					 newsample <= '1';
				    current_state  <= IDLE;
			   when others =>
				    newsample <= '0';
					 current_state	<= IDLE;     
            end case;
	     end if;
	  end if;
end process;


end rtl;