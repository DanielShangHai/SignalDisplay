-------------------------------------------------------------------------------
--  EM335 ISA_BUS_INTERFACE
-------------------------------------------------------------------------------
--
-- $Id: ISAInterface.vhd,v 1.2 2016/10/04 08:03:02 Daniel Song Exp $
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

entity ISAInterface is
	port (
		reset			: in	std_logic;
		clk				: in	std_logic;	-- system 50MHz
		
		
		
		CS              : in std_logic;
		ADV             : in std_logic;
		WE              : in std_logic;
		RD              : in std_logic;
		isa_data        : inout std_logic_vector(7 downto 0);
		SAMPLEDATA_ADDR : buffer std_logic_vector(23 downto 0); 
		SAMPLEDATA_DATA : in std_logic_vector(15 downto 0);
		RdStrobe        : out std_logic;
		MEMRdDone       : in std_logic;
		
		PROTOCOL_CS     : in std_logic
--		access_addr     : out std_logic_vector(7 downto 0);
--		access_data     : out std_logic_vector(7 downto 0)
	);
end ISAInterface;

architecture RTL of ISAInterface is

   signal		outcounter		   : std_logic_vector(15 downto 0);	
	signal		access_address		: std_logic_vector(7 downto 0);	
	signal      data_for_write    : std_logic_vector(7 downto 0);
	signal      data_for_Read     : std_logic_vector(7 downto 0);
	signal      require_data      : std_logic;
	signal      RD_0              : std_logic;
	signal      RD_1              : std_logic;
	signal      RD_2              : std_logic;	
	signal      WE_0              : std_logic;
	signal      WE_1              : std_logic;
	signal      WE_2              : std_logic;
   signal      ISA_WRITEN        : std_logic;
	signal      datalength        : integer range 0 to 255;
	
	
	
	signal      OperaAddr         : std_logic_vector(15 downto 0);
	signal      OperaLen          : std_logic_vector(7 downto 0);
	
	constant cmdWriteParam 		: integer := character'pos('A');
	constant cmdReadParam 		: integer := character'pos('B');
	constant cmdReadSAMPLES    : integer := character'pos('C');
	constant cmdWriteRAM  	   : integer := character'pos('D');
   constant cmdDump           : integer := character'pos('E');
	
	
	constant addr_max_wrparam	: integer :=  53;
	constant addr_max_rdparam	: integer :=  30;
	
	type array2d is array (natural range <>) of std_logic_vector(7 downto 0);
	signal wr_paramsA : array2d(0 to addr_max_wrparam);	
	signal wr_params : array2d(0 to addr_max_wrparam);	
	signal rd_params : array2d(0 to addr_max_rdparam);
	
	signal DoWrite : std_logic;
	signal DoWriteA, DoWriteB, DoWriteC : std_logic;
	signal param_address : integer range 0 to addr_max_rdparam;

	signal DoRead : std_logic;
	signal LatchReadParams : std_logic;
	signal LatchReadParamsA : std_logic;		-- to synchronise to 50MHz
	signal LatchReadParamsB : std_logic;
	signal LatchReadParamsC : std_logic;		-- to edge detect
	
	signal SampleDataLen    : std_logic_vector(31 downto 0);
	
	
	type States is (Idle,
					WaitAddress, GetAddress, waitforWrOrRd, WriteOperation, ReadOperation, waitForEnd, errorToIdle);
	signal state : States;
	type protocol_states is ( Command,WrAddr,WrLength,WrData,Finished,RdAddr,RdLength,RdPad,RdData,
	                          RdSamplesAddrL,RdSamplesAddrM,SamplesLen0,SamplesLen1,SamplesLen2,SamplesLen3,
									  RdSampleDataPad,RdSampleDataL,RdSampleDataM,WriteRAM,DumpRdPad
					);
	signal p_state : protocol_states;
	
	signal outputData : std_logic_vector(15 downto 0);	
	signal SampleDataUL : std_logic;


begin
	
		-- synchronise latch read params
	process (clk, reset)
	begin
		if reset='1' then
			RD_0 <= '0';
			RD_1 <= '0';
			RD_2 <= '0';
		elsif rising_edge(clk) then
			RD_0 <= RD;
			RD_1 <= RD_0;
			RD_2 <= RD_1;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset='1' then
			WE_0 <= '0';
			WE_1 <= '0';
			WE_2 <= '0';
		elsif rising_edge(clk) then
			WE_0 <= WE;
			WE_1 <= WE_0;
			WE_2 <= WE_1;
		end if;
	end process;	
	
	
	
	
	process (clk, reset)
	begin
		if reset='1' then
			state <= Idle;
			access_address <= x"00";
			ISA_WRITEN <= '0';
			SampleDataUL <= '0';
		elsif rising_edge(clk) then
		   ISA_WRITEN <= '0';
			case state is
				when Idle =>
					if CS='0' then
                   state <= WaitAddress;
						 outcounter <= x"FFFF";
					end if;
					access_address <= x"00";		
		         require_data <= '0';			
				when WaitAddress =>
				   if ADV = '0' then
					    state <= GetAddress;
						 outcounter <= x"FFFF";
					else
					    if outcounter = x"0000" then
						     outcounter <= x"FFFF";
						     state <= errorToIdle;
						 else 
						     outcounter <= outcounter - 1;	
						 end if;                   				    
					end if;
				when GetAddress =>				
				   access_address <= isa_data;
					state <= waitforWrOrRd;
					outcounter <= x"FFFF";

				when waitforWrOrRd =>
				   if WE = '0' then
					   state <= WriteOperation;
						outcounter <= x"FFFF";
					else
					   if RD = '0' then
						    outcounter <= x"FFFF";
						    state <= ReadOperation;
							 require_data <= '1';		 
						else 
						    if outcounter = x"0000" then
						       outcounter <= x"FFFF";
						       state <= errorToIdle;
							 else
						       outcounter <= outcounter - 1;
							 end if;						
						end if;
					end if;
					

				when WriteOperation =>
				   if WE = '1' then
					    data_for_write <= isa_data;
						 outcounter <= x"00FF";
						 state <= waitForEnd;
						 ISA_WRITEN <= '1' ;
				   else
					    if outcounter = x"0000" then
						     outcounter <= x"FFFF";
						     state <= errorToIdle;
						 else
						     outcounter <= outcounter - 1;			
						 end if;						 
					end if;
				when ReadOperation =>
				   require_data <= '0';
				   if (ADV = '1') and (RD_1 = '1') and (RD_2 = '0') then
					    if p_state = RdSampleDataL then
						    if SampleDataUL = '1' then
						       isa_data <= outputData(15 downto 8);
								 SampleDataUL <= '0';
							 else
							    SampleDataUL <= '1';
						    end if;
						 else
						     isa_data <= outputData(7 downto 0);
						 end if;					 
						 outcounter <= x"00FF";
						 state <= waitForEnd;
				   else
					    if outcounter = x"0000" then
						     outcounter <= x"FFFF";
						     state <= errorToIdle;
						 else
						     outcounter <= outcounter - 1;			
						 end if;						 
					end if;
				when waitForEnd =>
				   if CS = '1' then 
					    state <= Idle;
				   else
					    if outcounter = x"0000" then
						     outcounter <= x"FFFF";
						     state <= Idle;
						 else
						     outcounter <= outcounter - 1;			
						 end if;						    
					end if;			
	         when errorToIdle =>
				   if CS = '1' then 
					    state <= Idle;
				   else
					    if outcounter = x"0000" then
						     outcounter <= x"FFFF";
						     state <= Idle;
						 else
						     outcounter <= outcounter - 1;			
						 end if;						    
					end if;				
				when others => 
					state <= Idle;
			end case;
		end if;
	end process;
	
		
	-- state machine	
	process (clk, reset,ISA_WRITEN,PROTOCOL_CS)
	begin
		if reset='1' or PROTOCOL_CS = '1' then
			p_state <= Command;
			param_address <= 0;
			RdStrobe <= '0';
			LatchReadParams <= '0';
      elsif rising_edge(clk) and (ISA_WRITEN ='1') then		
         DoWrite <= '0';		
			LatchReadParams <= '0';
			RdStrobe <= '0';
			case p_state is
				when Command =>
					-- command byte now loaded
					if data_for_write = cmdWriteParam then
						p_state <= WrAddr;
					elsif data_for_write = cmdReadParam then	
						p_state <= RdAddr;
					elsif data_for_write = cmdReadSAMPLES then
--						SRAMIsWrite <= '0';
						p_state <= RdSamplesAddrL;
					elsif data_for_write= cmdWriteRAM then
--						SRAMIsWrite <= '1';
						p_state <= Finished;
					elsif data_for_write=cmdDump then
--t						DumpAddr <= (others=>'0');
						p_state <= DumpRdPad;
					else 
						p_state <= Command;
					end if;
				
				when WrAddr =>
					-- write param, cntlength low byte now loaded
					OperaAddr(7 downto 0) <= data_for_write;
					param_address <= CONV_INTEGER(data_for_write);
					p_state <= WrLength;
--					p_state <= WrAddrM;
				
--				when WrAddrM =>
					-- write param, cntlength high byte now loaded
--					OperaAddr(15 downto 8) <= data_for_write;
--					p_state <= WrLength;
					
				when WrLength =>
					-- write param, base address now loaded
					datalength <= CONV_INTEGER(data_for_write);
					p_state <= WrData;
				
				when WrData =>
					-- write data now loaded
					datalength <= datalength - 1;
					param_address <= param_address + 1;
					if datalength = 1 then
						DoWrite <= '1';
						p_state <= Finished;
					end if;
					
				when Finished =>
					-- just spin aimlessly
					null;
					
				when RdAddr =>
					-- write param, cntlength low byte now loaded
					LatchReadParams <= '1';
					OperaAddr(7 downto 0) <= data_for_write;
					param_address <= CONV_INTEGER(data_for_write);
					p_state <= RdLength;
					--p_state <= RdAddrM;
				
--				when RdAddrM =>
					-- write param, cntlength high byte now loaded
--					OperaAddr(15 downto 8) <= data_for_write;
--					p_state <= RdLength;
					
				when RdLength =>
					-- write param, base address now loaded
					datalength <= CONV_INTEGER(data_for_write);
					p_state <= RdPad;
				
				when RdPad =>
					-- padding to do read
					datalength <= datalength - 1;
					param_address <= param_address + 1;
					p_state <= RdData;
				
				when RdData =>
					-- read data now loaded
					datalength <= datalength - 1;
					param_address <= param_address + 1;
					if datalength=0 then
						p_state <= Finished;
					end if;
				when RdSamplesAddrL =>
					OperaAddr(7 downto 0) <= data_for_write;
--					param_address <= CONV_INTEGER(data_for_write);
					p_state <= RdSamplesAddrM;
				when RdSamplesAddrM =>
				   OperaAddr(15 downto 8) <= data_for_write;
					-- OperaAddr(15 downto 0) is a block address, each block has 512 bytes. so end with 9 zeros
					SAMPLEDATA_ADDR(23 downto 0) <= OperaAddr(14 downto 8) & data_for_write(7 downto 0) & b"000000000"; --9 bits					
					p_state <= SamplesLen0;
				when SamplesLen0 =>
				   SampleDataLen(7 downto 0) <= data_for_write;
				   p_state <= SamplesLen1;
				when SamplesLen1 =>
				   SampleDataLen(15 downto 8) <= data_for_write;
				   p_state <= SamplesLen2;
				when SamplesLen2 =>
				   SampleDataLen(23 downto 15) <= data_for_write;
				   p_state <= SamplesLen3;
				when SamplesLen3 =>
				   SampleDataLen(31 downto 24) <= data_for_write;
			      p_state <= RdSampleDataPad;	
				when RdSampleDataPad =>
				   RdStrobe <= '1';					
				   p_state <= RdSampleDataL;
				when RdSampleDataL =>
				   if MEMRdDone = '1' then 
					   outputData(15 downto 0) <= SAMPLEDATA_DATA(15 downto 0);						
				      if SampleDataLen - 1 = 0 then
						   p_state <= Finished;
					   else
					      SampleDataLen <= SampleDataLen - 1;
					      p_state <= RdSampleDataL;
						end if;
						SAMPLEDATA_ADDR(23 downto 0) <= SAMPLEDATA_ADDR(23 downto 0) + 2;
						RdStrobe <= '1';
					end if;						
										
--			   when RdSampleDataM =>
--				   if SampleDataLen=0 then
--						p_state <= Finished;
--					else
--					   p_state <= RdSampleDataL;
--						SAMPLEDATA_ADDR(23 downto 0) <= SAMPLEDATA_ADDR(23 downto 0) + 2;
--					end if;
				when WriteRAM =>
				   p_state <= Finished;
				when DumpRdPad =>
				   p_state <= Finished;
            when others=> 
					p_state <= Finished;					
				end case;
		end if;
	end process;
	
	-- parameter writes
	process (clk, reset)
	begin
		if reset='1' then
			clrwrparams: for i in wr_params'range loop
					wr_paramsA(i) <= (others=>'0');	
			end loop clrwrparams;
		elsif rising_edge(clk) then
			-- clear write strobes 
			if (ISA_WRITEN='1') and (p_state=WrData) then
				wr_paramsA(param_address) <= data_for_write;
			end if;
		end if;
	end process;
	
	-- sync DoWrite
	process (clk, reset)
	begin
		if reset='1' then
			DoWriteA <= '0';
			DoWriteB <= '0';
			DoWriteC <= '0';
		elsif rising_edge(clk) then
			DoWriteA <= DoWrite;
			DoWriteB <= DoWriteA;
			DoWriteC <= DoWriteB;
		end if;
	end process;

	-- synchronise parameter writes
	process (clk, reset)
	begin
		if reset='1' then
			clrsyncwrparams: for i in wr_params'range loop
					wr_params(i) <= (others=>'0');		
			end loop clrsyncwrparams;
		elsif rising_edge(clk) then
			if (DoWriteB='1') and (DoWriteC='0') then
				copywrparams: for i in wr_params'range loop
					wr_params(i) <= wr_paramsA(i);
				end loop copywrparams;
			end if;
		end if;
	end process;	
	
	
	
	-- synchronise latch read params
	process (clk, reset)
	begin
		if reset='1' then
			LatchReadParamsA <= '0';
			LatchReadParamsB <= '0';
			LatchReadParamsC <= '0';
		elsif rising_edge(clk) then
			LatchReadParamsA <= LatchReadParams;
			LatchReadParamsB <= LatchReadParamsA;
			LatchReadParamsC <= LatchReadParamsB;
		end if;
	end process;	
	
	
		-- sample parameters on read
	process (clk, reset, PROTOCOL_CS)
	begin
		if reset='1' then
			clrrdparams: for i in rd_params'range loop
				rd_params(i) <= (others=>'0');
			end loop clrrdparams;	
		elsif rising_edge(clk) then
			if (LatchReadParamsC='0') and (LatchReadParamsB='1') then
	--		    rd_params(addr_CONFIGBITS) <= CONFIGBITS(7 downto 0);	
			end if;
		end if;
	end process;
	
	
	
	-- generate output byte based on state of control state machine
--	process (rd_params, address, DoRead, inShift, DumpDoRead, DumpData,SRAMDoRead, SRAMRdDataLatched)
	--t(rd_params, address, DoRead, inShift, ScDoRead, DumpDoRead, ScWhich, ScRdAddress, SmartDataInk, SmartDataMku, SmartDataSys, SmartDataCSB, ScDoIncCode, SmartWrReason, SRAMDoRead, SRAMRdDataLatched, DumpData, sig_SMARTCHANGE, sig_SMARTWRSTAT, sig_SMARTRDSTAT)
--	begin
--		if DoRead='1' then
--			if param_address > addr_max_rdparam then
--				outByte <= (others=>'0');
--			else
--				outByte <= rd_params(param_address);
--			end if;
--		else 
--			outByte <= data_for_write;
--		end if;
--	end process;		
	
	
end RTL;
