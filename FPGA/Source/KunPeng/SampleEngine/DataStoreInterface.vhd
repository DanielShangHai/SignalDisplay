-------------------------------------------------------------------------------
--  DataStoreInterface
-------------------------------------------------------------------------------
--
-- $Id: DataStoreInterface.vhd,v 1.1 2017/02/06 14:55:43 Daniel Song Exp $
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity DataStoreInterface is
	generic (
		data_width			: in	integer := 16;
		depth			: in 	integer := 8;
		downshift		: in	integer := 0
	);
	port (
		reset			   : in	std_logic;
		clk				: in	std_logic;	-- system 50MHz
	   
		adc_data_ch0   : in std_logic_vector(15 downto 0);
		newSample_ch0  : in std_logic;
		busy_ch0       : in std_logic;
		enabled_ch0    : in std_logic;
		addr_s_ch0     : in std_logic_vector(15 downto 0);
		addr_e_ch0     : in std_logic_vector(15 downto 0);
		mode0          : in std_logic_vector(7 downto 0);
		sampleLen_ch0  : in std_logic_vector(31 downto 0);

		
		
		adc_data_ch1   : in std_logic_vector(15 downto 0);
		newSample_ch1  : in std_logic;
		busy_ch1       : in std_logic;	
	   enabled_ch1    : in std_logic;
		addr_s_ch1     : in std_logic_vector(15 downto 0);
		addr_e_ch1     : in std_logic_vector(15 downto 0);
		mode1          : in std_logic_vector(7 downto 0);
		sampleLen_ch1  : in std_logic_vector(31 downto 0);

	
		adc_data_ch2   : in std_logic_vector(15 downto 0);
		newSample_ch2  : in std_logic;
		busy_ch2       : in std_logic;		
		enabled_ch2    : in std_logic;
		addr_s_ch2     : in std_logic_vector(15 downto 0);
		addr_e_ch2     : in std_logic_vector(15 downto 0);
		mode2          : in std_logic_vector(7 downto 0);
		sampleLen_ch2  : in std_logic_vector(31 downto 0);
  

		
		adc_data_ch3   : in std_logic_vector(15 downto 0);
		newSample_ch3  : in std_logic;
		busy_ch3       : in std_logic;
		enabled_ch3    : in std_logic;
		addr_s_ch3     : in std_logic_vector(15 downto 0);
		addr_e_ch3     : in std_logic_vector(15 downto 0);
		mode3          : in std_logic_vector(7 downto 0);
		sampleLen_ch3  : in std_logic_vector(31 downto 0);

		
		Mode_Ch0       : in std_logic_vector(7 downto 0);
		Mode_Ch1       : in std_logic_vector(7 downto 0);
		Mode_Ch2       : in std_logic_vector(7 downto 0);
		Mode_Ch3       : in std_logic_vector(7 downto 0);
		
		sample_stop_ch0  : out std_logic;
		sample_stop_ch1  : out std_logic;
		sample_stop_ch2  : out std_logic;
		sample_stop_ch3  : out std_logic;
		
		interrupt      : out std_logic;
      
      interrupt_status : out std_logic_vector(31 downto 0);		
		
		SAMPLE_START   : in std_logic;
		
		RAM_DATA       : out std_logic_vector(15 downto 0);
		RAM_ADDRESS    : out std_logic_vector(23 downto 0);
		RAM_WRITE      : buffer std_logic;
		RAM_STROBE     : buffer std_logic
		

	);
end DataStoreInterface;

architecture RTL of DataStoreInterface is


   signal newSample_ch0A,newSample_ch0B,newSample_ch0C : std_logic;
	signal newSample_ch1A,newSample_ch1B,newSample_ch1C : std_logic;
	signal newSample_ch2A,newSample_ch2B,newSample_ch2C : std_logic;
	signal newSample_ch3A,newSample_ch3B,newSample_ch3C : std_logic;
	
	signal SAMPLE_STARTA,SAMPLE_STARTB,SAMPLE_STARTC : std_logic;
	

--s	type array2d is array (natural range <>) of std_logic_vector((data_width-1) downto 0);	-- array of samples to average, used to remove from accumulation
--s	signal samples : array2d(0 to (depth-1));		
--s	signal current : integer range 0 to (depth-1);										-- current position in array
--s	signal cleared : std_logic;															-- used to signal if memory cleared or not
	
	type array2d_16bit is array (natural range <>) of std_logic_vector( 15 downto 0);	-- array of samples to average, used to remove from accumulation
	signal samples_ch0 : array2d_16bit(0 to 3);	
	signal samples_ch1 : array2d_16bit(0 to 3);
	signal samples_ch2 : array2d_16bit(0 to 3);
	signal samples_ch3 : array2d_16bit(0 to 3);	
	
	signal bufferData_0  : std_logic;
	signal bufferClr_0   : std_logic;
	
	signal bufferData_1  : std_logic;
	signal bufferClr_1   : std_logic;

	signal bufferData_2  : std_logic;	
	signal bufferClr_2   : std_logic;
	
	signal bufferData_3  : std_logic;
	signal bufferClr_3   : std_logic;
	
	signal addressCh0  : std_logic_vector(20 downto 0);
	signal addressCh1  : std_logic_vector(20 downto 0);
	signal addressCh2  : std_logic_vector(20 downto 0);
	signal addressCh3  : std_logic_vector(20 downto 0);

	signal addressCh0_buf2  : std_logic_vector(20 downto 0);
	signal addressCh1_buf2  : std_logic_vector(20 downto 0);
	signal addressCh2_buf2  : std_logic_vector(20 downto 0);
	signal addressCh3_buf2  : std_logic_vector(20 downto 0);	
	
	signal addressEndCh0  : std_logic_vector(20 downto 0);
	signal addressEndCh1  : std_logic_vector(20 downto 0);
	signal addressEndCh2  : std_logic_vector(20 downto 0);
	signal addressEndCh3  : std_logic_vector(20 downto 0);
	
		
	signal currentchannel : std_logic_vector(3 downto 0);
	
	signal sample_count0  : std_logic_vector(31 downto 0);
	signal sample_count1  : std_logic_vector(31 downto 0);
	signal sample_count2  : std_logic_vector(31 downto 0);
	signal sample_count3  : std_logic_vector(31 downto 0);
	
	signal sample_countInBuffer0  : std_logic_vector(31 downto 0);
	signal sample_countInBuffer1  : std_logic_vector(31 downto 0);
	signal sample_countInBuffer2  : std_logic_vector(31 downto 0);
	signal sample_countInBuffer3  : std_logic_vector(31 downto 0);	
	
	
	signal halfSampleLen0 : std_logic_vector(31 downto 0);
	signal halfSampleLen1 : std_logic_vector(31 downto 0);
	signal halfSampleLen2 : std_logic_vector(31 downto 0);
	signal halfSampleLen3 : std_logic_vector(31 downto 0);

	signal interruptLevel0 : std_logic_vector(31 downto 0);
	signal interruptLevel1 : std_logic_vector(31 downto 0);
	signal interruptLevel2 : std_logic_vector(31 downto 0);
	signal interruptLevel3 : std_logic_vector(31 downto 0);

	signal EndSample0 : std_logic;
	signal EndSample1 : std_logic;
	signal EndSample2 : std_logic;
	signal EndSample3 : std_logic;
	
	signal currbuff_ch0: std_logic;
	signal currbuff_ch1: std_logic;
	signal currbuff_ch2: std_logic;
	signal currbuff_ch3: std_logic;
	
	
	
	type states is (IDLE, CheckDataCh0,WriteDataCh0toRAM,TimeGap0,
	                      CheckDataCh1,WriteDataCh1toRAM,TimeGap1,
								 CheckDataCh2,WriteDataCh2toRAM,TimeGap2, 
								 CheckDataCh3,WriteDataCh3toRAM,TimeGap3,
								 CheckInterrupt
					);
	signal state : states;
	signal  tempcount          : std_logic_vector (7 downto 0);          -- used for various delays
	
begin

	-- synchronise newSample_ch0 to clk
	process (clk, reset)
	begin
		if reset='1' then
			newSample_ch0A <= '0';
			newSample_ch0B <= '0';
			newSample_ch0C <= '0';
		elsif rising_edge(clk) then
			newSample_ch0A <= newSample_ch0;
			newSample_ch0B <= newSample_ch0A;
			newSample_ch0C <= newSample_ch0B;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
		   bufferData_0 <= '0';
		elsif rising_edge(clk) then
		   if (newSample_ch0B='1') and (newSample_ch0C='0') then 
			    samples_ch0(0) <= adc_data_ch0(15 downto 0);
				 bufferData_0 <= '1';
		   elsif bufferClr_0 = '1' then
			    bufferData_0 <= '0';
			end if;
		end if;
	end process;
	
	
	
		-- synchronise newSample_ch1 to clk
	process (clk, reset)
	begin
		if reset='1' then
			newSample_ch1A <= '0';
			newSample_ch1B <= '0';
			newSample_ch1C <= '0';
		elsif rising_edge(clk) then
			newSample_ch1A <= newSample_ch1;
			newSample_ch1B <= newSample_ch1A;
			newSample_ch1C <= newSample_ch1B;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
		   bufferData_1 <= '0';
		elsif rising_edge(clk) then
		   if (newSample_ch1B='1') and (newSample_ch1C='0') then 
			    samples_ch1(0) <= adc_data_ch1(15 downto 0);
				 bufferData_1 <= '1';
		   elsif bufferClr_1 = '1' then
			    bufferData_1 <= '0';
			end if;
		end if;
	end process;		
	
	
	
	
		-- synchronise newSample_ch2 to clk
	process (clk, reset)
	begin
		if reset='1' then
			newSample_ch2A <= '0';
			newSample_ch2B <= '0';
			newSample_ch2C <= '0';
		elsif rising_edge(clk) then
			newSample_ch2A <= newSample_ch2;
			newSample_ch2B <= newSample_ch2A;
			newSample_ch2C <= newSample_ch2B;
		end if;
	end process;	
	
	process (clk, reset)
	begin
		if reset='1' then
		   bufferData_2 <= '0';
		elsif rising_edge(clk) then
		   if (newSample_ch2B='1') and (newSample_ch2C='0') then 
			    samples_ch2(0) <= adc_data_ch2(15 downto 0);
				 bufferData_2 <= '1';
		   elsif bufferClr_2 = '1' then
			    bufferData_2 <= '0';
			end if;
		end if;
	end process;
	
	
		-- synchronise newSample_ch3 to clk
	process (clk, reset)
	begin
		if reset='1' then
			newSample_ch3A <= '0';
			newSample_ch3B <= '0';
			newSample_ch3C <= '0';
		elsif rising_edge(clk) then
			newSample_ch3A <= newSample_ch3;
			newSample_ch3B <= newSample_ch3A;
			newSample_ch3C <= newSample_ch3B;
		end if;
	end process;	
	process (clk, reset)
	begin
		if reset='1' then
		   bufferData_3 <= '0';
		elsif rising_edge(clk) then
		   if (newSample_ch3B='1') and (newSample_ch3C='0') then 
			    samples_ch3(0) <= adc_data_ch3(15 downto 0);
				 bufferData_3 <= '1';
		   elsif bufferClr_3 = '1' then
			    bufferData_3 <= '0';
			end if;
		end if;
	end process;
	
	
	
			  : out std_logic;
		sample_stop_ch1  : out std_logic;
		sample_stop_ch2  : out std_logic;
		sample_stop_ch3  : out std_logic;
	process (clk, reset)
	begin
		if reset='1' then
		   sample_stop_ch0 <= '0';
			sample_stop_ch1 <= '0';
			sample_stop_ch2 <= '0';
			sample_stop_ch3 <= '0';
		elsif rising_edge(clk) then
			sample_stop_ch0 <= '0';
			sample_stop_ch1 <= '0';
			sample_stop_ch2 <= '0';
			sample_stop_ch3 <= '0';
		   if EndSample0='1' then 
            sample_stop_ch0 <= '1';
			end if;
		   if EndSample1='1' then 
            sample_stop_ch1 <= '1';
			end if;
		   if EndSample2='1' then 
            sample_stop_ch2 <= '1';
			end if;
		   if EndSample3='1' then 
            sample_stop_ch3 <= '1';
			end if;			
		end if;
	end process;
	
	
	
	-- state machine	
	process (clk, reset)
	begin
		if reset='1' then
		   bufferClr_0 <= '0';
			bufferClr_1 <= '0';
			bufferClr_2 <= '0';
			bufferClr_3 <= '0';
			RAM_STROBE <= '0';
			tempcount <= (others => '0');
			currentchannel <= (others => '0');
			interrupt <= '0';
		elsif rising_edge(clk) then
		   if interruptClr = '1' then
			   interrupt <= '0';
		   end if;	
		   case state is 
			     when IDLE =>
				      state <= CheckDataCh0;
				  when CheckDataCh0 =>
				      if bufferData_0 = '1' then
                     bufferClr_0 <= '1';
							RAM_STROBE <= '0';
			            RAM_DATA <=  samples_ch0(0)(15 downto 0); 
		               RAM_ADDRESS <= b"0000" & addressCh0(19 downto 0);
		               RAM_WRITE  <= '1' ;
							state <= WriteDataCh0toRAM;		
                     currentchannel <= b"0001";	
                  else
                     state <= CheckDataCh1;			
						end if;
				  when WriteDataCh0toRAM =>
				      RAM_STROBE <= '1';
						if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= TimeGap0;
	               else
		               tempcount <= tempcount + '1';
	               end if;
				  when TimeGap0 =>
				      RAM_STROBE <= '0';
						RAM_WRITE  <= '0';
						currentchannel <= b"0000";				
				      if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= CheckDataCh1;
	               else
		               tempcount <= tempcount + '1';
	               end if;
				  
				  when CheckDataCh1 =>				      
				      if bufferData_1 = '1' then
                     bufferClr_1 <= '1';
							RAM_STROBE <= '0';
			            RAM_DATA <=  samples_ch1(0)(15 downto 0); 
		               RAM_ADDRESS <=  b"0000" & addressCh1(19 downto 0);  
		               RAM_WRITE  <= '1' ;
							state <= WriteDataCh1toRAM;
							currentchannel <= b"0010";		
						else
                     state <= CheckDataCh2;				
						end if;
				  when WriteDataCh1toRAM =>
				      RAM_STROBE <= '1';
                  if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= TimeGap1;
	               else
		               tempcount <= tempcount + '1';
	               end if;			
				  when TimeGap1 =>
				      RAM_STROBE <= '0';
						RAM_WRITE  <= '0';
						currentchannel <= b"0000";				
				      if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= CheckDataCh2;
	               else
		               tempcount <= tempcount + '1';
	               end if;					   	
              when CheckDataCh2 =>				      
				      if bufferData_2 = '1' then
                     bufferClr_2 <= '1';
							RAM_STROBE <= '0';
			            RAM_DATA <=  samples_ch2(0)(15 downto 0); 
		               RAM_ADDRESS <=  b"0000" & addressCh2(19 downto 0);  
		               RAM_WRITE  <= '1' ;
							state <= WriteDataCh2toRAM;		
                     currentchannel <= b"0011";		
						else
                     state <= CheckDataCh3;	
						end if;
				  when WriteDataCh2toRAM =>
				      RAM_STROBE <= '1';
                  if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= TimeGap2;
	               else
		               tempcount <= tempcount + '1';
	               end if;			
				  when TimeGap2 =>
				      RAM_STROBE <= '0';
						RAM_WRITE  <= '0';
						currentchannel <= b"0000";				
				      if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= CheckDataCh3;
	               else
		               tempcount <= tempcount + '1';
	               end if;

              when CheckDataCh3 =>				      
				      if bufferData_3 = '1' then
                     bufferClr_3 <= '1';
							RAM_STROBE <= '0';
			            RAM_DATA <=  samples_ch3(0)(15 downto 0); 
		               RAM_ADDRESS <=  b"0000" & addressCh3(19 downto 0);  
		               RAM_WRITE  <= '1' ;
							state <= WriteDataCh3toRAM;
                     currentchannel <= b"0100";	
                  else
                     state <= CheckInterrupt;										
						end if;
				  when WriteDataCh3toRAM =>
				      RAM_STROBE <= '1';
                  if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= TimeGap3;
	               else
		               tempcount <= tempcount + '1';
	               end if;
				  when TimeGap3 =>
				      RAM_STROBE <= '0';
						RAM_WRITE  <= '0';
						currentchannel <= b"0000";				
				      if tempcount=x"02" then
		               tempcount <= x"00";
		               state <= CheckInterrupt;
	               else
		               tempcount <= tempcount + '1';
	               end if;				
				  when CheckInterrupt =>
				      if InterruptChannel0 AND InterruptChannel1 AND InterruptChannel2 AND InterruptChannel3 then
						    interrupt <= '1';
						end if;
				      state <= IDLE;  
				  when others =>
				      RAM_STROBE <= '0';
						RAM_WRITE  <= '0';
                  state <= IDLE;				      
		   end case;
		end if;
	end process;
	
	
		-- synchronise SAMPLE_START to clk
	process (clk, reset)
	begin
		if reset='1' then
			SAMPLE_STARTA <= '0';
			SAMPLE_STARTB <= '0';
			SAMPLE_STARTC <= '0';
		elsif rising_edge(clk) then
			SAMPLE_STARTA <= SAMPLE_START;
			SAMPLE_STARTB <= SAMPLE_STARTA;
			SAMPLE_STARTC <= SAMPLE_STARTB;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
			raiseInterrupt0A <= '0';
			--raiseInterrupt0B <= '0';
		elsif rising_edge(clk) then
			raiseInterrupt0A <= raiseInterrupt0;
			--raiseInterrupt0B <= raiseInterrupt0A;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
			raiseInterrupt1A <= '0';
			--raiseInterrupt1B <= '0';
		elsif rising_edge(clk) then
			raiseInterrupt1A <= raiseInterrupt1;
			--raiseInterrupt1B <= raiseInterrupt1A;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
			raiseInterrupt2A <= '0';
			--raiseInterrupt2B <= '0';
		elsif rising_edge(clk) then
			raiseInterrupt2A <= raiseInterrupt2;
			--raiseInterrupt2B <= raiseInterrupt2A;
		end if;
	end process;	
	
	process (clk, reset)
	begin
		if reset='1' then
			raiseInterrupt3A <= '0';
			--raiseInterrupt3B <= '0';
		elsif rising_edge(clk) then
			raiseInterrupt3A <= raiseInterrupt3;
			--raiseInterrupt3B <= raiseInterrupt3A;
		end if;
	end process;	
	
	process (clk, reset)
	begin
		if reset='1' then
			InterruptChannel0 <= '0';
			InterruptChannel1 <= '0';
			InterruptChannel2 <= '0';
			InterruptChannel3 <= '0';			
		elsif rising_edge(clk) then
         if raiseInterrupt0 = '1' then
			   InterruptChannel0 <= '1';
			else if interruptClr = '1' then
			   InterruptChannel0 = '0';
			end if;
			
			if raiseInterrupt1 = '1' then
			   InterruptChannel1 <= '1';
			else if interruptClr = '1' then
			   InterruptChannel1 = '0';
			end if;

			if raiseInterrupt2 = '1' then
			   InterruptChannel2 <= '1';
			else if interruptClr = '1' then
			   InterruptChannel2 = '0';
			end if;

			if raiseInterrupt3 = '1' then
			   InterruptChannel3 <= '1';
			else if interruptClr = '1' then
			   InterruptChannel3 = '0';
			end if;			
			
		end if;
	end process;
	
	
	process (clk, reset)
	begin
		if reset='1' then
		   addressCh0 <= (others => '0');
		   addressCh1 <= (others => '0');
		   addressCh2 <= (others => '0');
         addressCh3 <= (others => '0');
		elsif rising_edge(clk) then
		   EndSample0 <= '0';
			EndSample1 <= '0';
			EndSample2 <= '0';
			EndSample3 <= '0';
			raiseInterrupt0 <= '0';
			raiseInterrupt1 <= '0';
			raiseInterrupt2 <= '0';
			raiseInterrupt3 <= '0';
         if (SAMPLE_STARTB='1') and (SAMPLE_STARTC='0') then 
			    if enabled_ch0 = '1' then
				    sample_countInBuffer0 <= x"00000000";
					 sample_count0 <= x"00000000";
				 --  21 BITS                                 12BITS         9BITS
				    addressCh0(20 downto 0) <= addr_s_ch0(11 downto 0) & b"000000000" ;
					 addressCh0_buf2(20 downto 0) <= '0'&addr_s_ch0(10 downto 1)& b"000000000" + '0'&addr_e_ch0(10 downto 1)& b"000000000";
					 addressEndCh0(20 downto 0) <= addr_e_ch0(11 downto 0) & b"000000000" ;
					 halfSampleLen0(31 downto 0) <= '0'&sampleLen_ch0(31 downto 1);
					 if mode0 = b"00000000" then  -- single sample
					    if sampleLen_ch0 < x"00010000" then   --32K X2 = 64K Bytes
						    interruptThreshold0(31 downto 0) <= sampleLen_ch0(31 downto 0);
					    else
						    interruptThreshold0(31 downto 0) <= x"00008000";  -- one buffer size 32K;
						 end if;
					 
					 -- 65535
					 --   if sampleLen_ch0 < x"00008000" then   --32K Bytes
					 --	    interruptThreshold0(31 downto 0) <= sampleLen_ch0(31 downto 0);
					 --	 else
					 --	    if halfSampleLen0(31 downto 0) < x"00008000"
					 --		    interruptThreshold0(31 downto 0) <= halfSampleLen0(31 downto 0);
					 --		 else
					 --		    interruptThreshold0(31 downto 0) <= x"00008000";
					 --		 end if;							 
					 --	    --interruptThreshold0(31 downto 0) <= '0'&sampleLen_ch0(31 downto 1);
					 --	 end if;					    
					 elsif mode0 = b"00000001" then --continuous sampling;
					    interruptThreshold0 <= x"00008000";
					 end if;					 
				 end if;
			    if enabled_ch1 = '1' then
				    sample_countInBuffer1 <= x"00000000";
					 sample_count1 <= x"00000000";
				    addressCh1(20 downto 0) <= addr_s_ch1(11 downto 0) & b"000000000" ;
					 addressEndCh1(20 downto 0) <= addr_e_ch1(11 downto 0) & b"000000000" ;
					 halfSampleLen1(31 downto 0) <= '0'&sampleLen_ch1(31 downto 1);
				 end if;
			    if enabled_ch2 = '1' then
				    sample_countInBuffer2 <= x"00000000";
					 sample_count2 <= x"00000000";
				    addressCh2(20 downto 0) <= addr_s_ch2(11 downto 0) & b"000000000" ;
					 addressEndCh2(20 downto 0) <= addr_e_ch2(11 downto 0) & b"000000000" ;
					 halfSampleLen2(31 downto 0) <= '0'&sampleLen_ch2(31 downto 1);
				 end if;
			    if enabled_ch3 = '1' then
				    sample_countInBuffer3 <= x"00000000";
					 sample_count3 <= x"00000000";				 
				    addressCh3(20 downto 0) <= addr_s_ch3(11 downto 0) & b"000000000" ;
					 addressEndCh3(20 downto 0) <= addr_e_ch3(11 downto 0) & b"000000000" ;
					 halfSampleLen3(31 downto 0) <= '0'&sampleLen_ch3(31 downto 1);
				 end if;				 
		   elsif (RAM_STROBE = '1') and (RAM_WRITE = '1') then
			    if (enabled_ch0 = '1') and (currentchannel = b"0001") then
				    if mode0 = b"00000000" then  -- single sample
					    if sample_count0 < interruptThreshold0 - 1 then
						    sample_count0 <= sample_count0 + 1;
							 addressCh0(20 downto 0) <= addressCh0(20 downto 0) + 1;
						 else
						    raiseInterrupt0 <= 1;
						    EndSample0 <= '1';
						 end if;
					 elsif mode0 = b"00000001" then --continuous sampling; 
					    if sample_count0 < interruptThreshold0 - 1 then
						    sample_count0 <= sample_count0 + 1;
							 addressCh0(20 downto 0) <= addressCh0(20 downto 0) + 1;
						 else
						    if currbuff_ch0 = 0 then
							    currbuff_ch0 <= 1; 
								 addressCh0(20 downto 0) <= addressCh0(20 downto 0) + 1;
							 else
							    currbuff_ch0 <= 0;
								 addressCh0(20 downto 0) <= addr_s_ch0(11 downto 0) & b"000000000" ;
							 end if;
						    sample_count0 <= x"00000000";							 
							 raiseInterrupt0 <= 1;
						 end if;
					 
					 elsif mode0 = b"00000010" then --single sampling but len larger than buffer; 
					    if sample_count0 < sampleLen_ch0 - 1 then
                      sample_count0 <= sample_count0 + 1;
					       if sample_countInBuffer0 < interruptThreshold0 - 1 then
						       sample_countInBuffer0 <= sample_countInBuffer0 + 1;							 
							    addressCh0(20 downto 0) <= addressCh0(20 downto 0) + 1;
						    else
						       if currbuff_ch0 = 0 then
							       currbuff_ch0 <= 1; 
								    addressCh0(20 downto 0) <= addressCh0(20 downto 0) + 1;
							    else
							       currbuff_ch0 <= 0;
								    addressCh0(20 downto 0) <= addr_s_ch0(11 downto 0) & b"000000000" ;
							    end if;
						       sample_countInBuffer0 <= x"00000000";							 
							    raiseInterrupt0 <= 1;
						    end if;						 
						 else
						    raiseInterrupt0 <= 1;	
		                EndSample0 <= '1';					 
						 end if;
						 
					    if sample_count0 < sampleLen_ch0 - 1 then
						    sample_count0 <= sample_count0 + 1;
						 else
						    raiseInterrupt0 <= 1;
						    EndSample0 <= '1';
						 end if;					 
				    end if;			    
				 end if;
			    if (enabled_ch1 = '1') and (currentchannel = b"0010") then
				    if mode1 = b"00000000" then  -- single sample
					    if sample_count1 < interruptThreshold1 - 1 then
						    sample_count1 <= sample_count1 + 1;
							 addressCh1(20 downto 0) <= addressCh1(20 downto 0) + 1;
						 else
						    raiseInterrupt1 <= 1;
						    EndSample1 <= '1';
						 end if;
					 elsif mode1 = b"00000001" then --continuous sampling; 
					    if sample_count1 < interruptThreshold1 - 1 then
						    sample_count1 <= sample_count1 + 1;
							 addressCh1(20 downto 0) <= addressCh1(20 downto 0) + 1;
						 else
						    if currbuff_ch1 = 0 then
							    currbuff_ch1 <= 1; 
								 addressCh1(20 downto 0) <= addressCh1(20 downto 0) + 1;
							 else
							    currbuff_ch1 <= 0;
								 addressCh1(20 downto 0) <= addr_s_ch1(11 downto 0) & b"000000000" ;
							 end if;
						    sample_count1 <= x"00000000";							 
							 raiseInterrupt1 <= 1;
						 end if;
					 
					 elsif mode1 = b"00000010" then --single sampling but len larger than buffer; 
					    if sample_count1 < sampleLen_ch1 - 1 then
                      sample_count1 <= sample_count1 + 1;
					       if sample_countInBuffer1 < interruptThreshold1 - 1 then
						       sample_countInBuffer1 <= sample_countInBuffer1 + 1;							 
							    addressCh1(20 downto 0) <= addressCh1(20 downto 0) + 1;
						    else
						       if currbuff_ch1 = 0 then
							       currbuff_ch1 <= 1; 
								    addressCh1(20 downto 0) <= addressCh1(20 downto 0) + 1;
							    else
							       currbuff_ch1 <= 0;
								    addressCh1(20 downto 0) <= addr_s_ch1(11 downto 0) & b"000000000" ;
							    end if;
						       sample_countInBuffer1 <= x"00000000";							 
							    raiseInterrupt1 <= 1;
						    end if;						 
						 else
						    raiseInterrupt1 <= 1;	
		                EndSample1 <= '1';					 
						 end if;
						 
					    if sample_count1 < sampleLen_ch1 - 1 then
						    sample_count1 <= sample_count1 + 1;
						 else
						    raiseInterrupt1 <= 1;
						    EndSample1 <= '1';
						 end if;					 
				    end if;				    
				 end if;
			    if (enabled_ch2 = '1') and (currentchannel = b"0011") then
				    if mode2 = b"00000000" then  -- single sample
					    if sample_count2 < interruptThreshold2 - 1 then
						    sample_count2 <= sample_count2 + 1;
							 addressCh2(20 downto 0) <= addressCh2(20 downto 0) + 1;
						 else
						    raiseInterrupt2 <= 1;
						    EndSample2 <= '1';
						 end if;
					 elsif mode2 = b"00000001" then --continuous sampling; 
					    if sample_count2 < interruptThreshold2 - 1 then
						    sample_count2 <= sample_count2 + 1;
							 addressCh2(20 downto 0) <= addressCh2(20 downto 0) + 1;
						 else
						    if currbuff_ch2 = 0 then
							    currbuff_ch2 <= 1; 
								 addressCh2(20 downto 0) <= addressCh2(20 downto 0) + 1;
							 else
							    currbuff_ch2 <= 0;
								 addressCh2(20 downto 0) <= addr_s_ch2(11 downto 0) & b"000000000" ;
							 end if;
						    sample_count2 <= x"00000000";							 
							 raiseInterrupt2 <= 1;
						 end if;
					 
					 elsif mode2 = b"00000010" then --single sampling but len larger than buffer; 
					    if sample_count2 < sampleLen_ch2 - 1 then
                      sample_count2 <= sample_count2 + 1;
					       if sample_countInBuffer2 < interruptThreshold2 - 1 then
						       sample_countInBuffer2 <= sample_countInBuffer2 + 1;							 
							    addressCh2(20 downto 0) <= addressCh2(20 downto 0) + 1;
						    else
						       if currbuff_ch2 = 0 then
							       currbuff_ch2 <= 1; 
								    addressCh2(20 downto 0) <= addressCh2(20 downto 0) + 1;
							    else
							       currbuff_ch2 <= 0;
								    addressCh2(20 downto 0) <= addr_s_ch2(11 downto 0) & b"000000000" ;
							    end if;
						       sample_countInBuffer2 <= x"00000000";							 
							    raiseInterrupt2 <= 1;
						    end if;						 
						 else
						    raiseInterrupt2 <= 1;	
		                EndSample2 <= '1';					 
						 end if;
						 
		 
				    end if;				    
				 end if;
			    if (enabled_ch3 = '1') and (currentchannel = b"0100") then
				    if mode3 = b"00000000" then  -- single sample
					    if sample_count3 < interruptThreshold3 - 1 then
						    sample_count3 <= sample_count3 + 1;
							 addressCh3(20 downto 0) <= addressCh3(20 downto 0) + 1;
						 else
						    raiseInterrupt3 <= 1;
						    EndSample3 <= '1';
						 end if;
					 elsif mode3 = b"00000001" then --continuous sampling; 
					    if sample_count3 < interruptThreshold3 - 1 then
						    sample_count3 <= sample_count3 + 1;
							 addressCh3(20 downto 0) <= addressCh3(20 downto 0) + 1;
						 else
						    if currbuff_ch3 = 0 then
							    currbuff_ch3 <= 1; 
								 addressCh3(20 downto 0) <= addressCh3(20 downto 0) + 1;
							 else
							    currbuff_ch3 <= 0;
								 addressCh3(20 downto 0) <= addr_s_ch3(11 downto 0) & b"000000000" ;
							 end if;
						    sample_count3 <= x"00000000";							 
							 raiseInterrupt3 <= 1;
						 end if;
					 
					 elsif mode3 = b"00000010" then --single sampling but len larger than buffer; 
					    if sample_count3 < sampleLen_ch3 - 1 then
                      sample_count3 <= sample_count3 + 1;
					       if sample_countInBuffer3 < interruptThreshold3 - 1 then
						       sample_countInBuffer3 <= sample_countInBuffer3 + 1;							 
							    addressCh3(20 downto 0) <= addressCh3(20 downto 0) + 1;
						    else
						       if currbuff_ch3 = 0 then
							       currbuff_ch3 <= 1; 
								    addressCh3(20 downto 0) <= addressCh3(20 downto 0) + 1;
							    else
							       currbuff_ch3 <= 0;
								    addressCh3(20 downto 0) <= addr_s_ch3(11 downto 0) & b"000000000" ;
							    end if;
						       sample_countInBuffer3 <= x"00000000";							 
							    raiseInterrupt3 <= 1;
						    end if;						 
						 else
						    raiseInterrupt3 <= 1;	
		                EndSample3 <= '1';					 
						 end if;
						 			 
				    end if;					    
				 end if;				 
			
 			end if;
		end if;
	end process;
	
	

end RTL;
