-------------------------------------------------------------------------------
--  WuKong SPI Interface
-------------------------------------------------------------------------------
--
-- $Id: KunPengSPI.vhd,v 1.0 2016/10/01 15:14:02 Daniel Song Exp $
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity KunPengSPI is
	generic (
		PEC_CHECK_EN	  : in 	integer := 0;
		KPTYPE			  : in	integer := 0;
		KPVER			     : in 	integer := 0;
		KPMAJREV		     : in 	integer := 0;
		KPMINREV		     : in 	integer := 0
	);
	port (
		reset			: in	   std_logic;
		clk			: in	   std_logic;	-- system 50MHz
		
		spi_sclk		: in 	   std_logic;
		spi_nss		: in	   std_logic;
		spi_mosi		: in 	   std_logic;
		spi_miso		: out 	std_logic;


		-- PE/SE processor
		INTCTRL			: out	std_logic_vector(3 downto 0);
		DAQ_START      : out std_logic_vector(15 downto 0);
		
		CH0SRATE       : out std_logic_vector(31 downto 0);
		CH0DELAY       : out std_logic_vector(31 downto 0);
		CH0LENGTH      : out std_logic_vector(31 downto 0);
		CH0ENABLE      : out std_logic;
		
		
		CH1SRATE       : out std_logic_vector(31 downto 0);
		CH1DELAY       : out std_logic_vector(31 downto 0);
		CH1LENGTH      : out std_logic_vector(31 downto 0);
		CH1ENABLE      : out std_logic;
		
		CH2SRATE       : out std_logic_vector(31 downto 0);
		CH2DELAY       : out std_logic_vector(31 downto 0);
		CH2LENGTH      : out std_logic_vector(31 downto 0);
		CH2ENABLE      : out std_logic;

		CH3SRATE       : out std_logic_vector(31 downto 0);
		CH3DELAY       : out std_logic_vector(31 downto 0);
		CH3LENGTH      : out std_logic_vector(31 downto 0);
		CH3ENABLE      : out std_logic;
		
		LEDCTRL        : out std_logic_vector(7 downto 0);
		
		CH0STATE       : in  std_logic_vector(15 downto 0);
		CH0MEM_SPACE   : in  std_logic_vector(15 downto 0);
		CH0DATALEN     : in  std_logic_vector(15 downto 0);
		
		CH1STATE       : in  std_logic_vector(15 downto 0);
		CH1MEM_SPACE   : in  std_logic_vector(15 downto 0);
		CH1DATALEN     : in  std_logic_vector(15 downto 0);
		
		CH2STATE       : in  std_logic_vector(15 downto 0);
		CH2MEM_SPACE   : in  std_logic_vector(15 downto 0);
		CH2DATALEN     : in  std_logic_vector(15 downto 0);
      
		CH3STATE       : in  std_logic_vector(15 downto 0);
		CH3MEM_SPACE   : in  std_logic_vector(15 downto 0);
		CH3DATALEN     : in  std_logic_vector(15 downto 0);		
		
		
		ADDR_S_CH0     : out std_logic_vector(15 downto 0);
		ADDR_E_CH0     : out std_logic_vector(15 downto 0);
		ADDR_S_CH1     : out std_logic_vector(15 downto 0);
		ADDR_E_CH1     : out std_logic_vector(15 downto 0);
		ADDR_S_CH2     : out std_logic_vector(15 downto 0);
		ADDR_E_CH2     : out std_logic_vector(15 downto 0);		
		ADDR_S_CH3     : out std_logic_vector(15 downto 0);
		ADDR_E_CH3     : out std_logic_vector(15 downto 0);		
		
		MODE_0         : out std_logic_vector(7 downto 0);
		MODE_1         : out std_logic_vector(7 downto 0);
		MODE_2         : out std_logic_vector(7 downto 0);
		MODE_3         : out std_logic_vector(7 downto 0);
		
		-- interface to arbiter to write to memory
		SRAMWrAddr		: buffer std_logic_vector(20 downto 0);
		SRAMWrData 		: out 	std_logic_vector(7 downto 0);
		SRAMStrobe		: out	std_logic;
		SRAMStart		: in	std_logic;	-- start of cycle from arbiter
		SRAMDone		: in	std_logic;	-- end of cycle from arbiter
		SRAMIsWrite		: out	std_logic;	-- 1 is write, 0 is read
		SRAMRdData		: in	std_logic_vector(7 downto 0);

		CSBCONF			: out	std_logic_vector(7 downto 0);

		-- test control register
		TESTCTRL		: out	std_logic_vector(7 downto 0);
		-- Dump memory interface
--t		DumpAddr		: buffer	std_logic_vector(13 downto 0);
--t		DUMPENABLE		: buffer 	std_logic;
--t		DumpData		: in	std_logic_vector(7 downto 0);	

      CONFIGBITS     : in std_logic_vector(7 downto 0);
		
		debugLedOut : out    std_logic_vector(3 downto 0)
	);	
END KunPengSPI;
	
architecture RTL of KunPengSPI is	
	

	constant timer100ms_max : integer := 5000000;

	signal timer100ms_count : integer range 0 to timer100ms_max;
	signal timer100ms : std_logic;


	-- write parameter addresses	
	constant addr_INTCTRL_L		: integer :=  0;
	constant addr_INTCTRL_M		: integer :=  1;
	constant addr_DAQ_START_L  : integer :=  2;
	constant addr_DAQ_START_M  : integer :=  3;
	constant addr_CH0SRATE_0	: integer :=  4;
	constant addr_CH0SRATE_1	: integer :=  5;
	constant addr_CH0SRATE_2	: integer :=  4;
	constant addr_CH0SRATE_3	: integer :=  5;	
	constant addr_CH0DELAY_0	: integer :=  6;
	constant addr_CH0DELAY_1	: integer :=  7;
--	constant addr_CH0DELAY_2	: integer :=  6;
--	constant addr_CH0DELAY_3	: integer :=  7;	
	constant addr_CH0MODE   	: integer :=  8;
	constant addr_CH0ENABLE   	: integer :=  9;
	constant addr_CH0SLEN_0   	: integer :=  10;
	constant addr_CH0SLEN_1   	: integer :=  11;
	constant addr_CH0SLEN_2   	: integer :=  12;
	constant addr_CH0SLEN_3   	: integer :=  13;

	
	constant addr_CH1SRATE_0	: integer :=  12;
	constant addr_CH1SRATE_1	: integer :=  13;
	constant addr_CH1SRATE_2	: integer :=  12;
	constant addr_CH1SRATE_3	: integer :=  13;	

	constant addr_CH1DELAY_0	: integer :=  14;
	constant addr_CH1DELAY_1	: integer :=  15;
--	constant addr_CH1DELAY_2	: integer :=  14;
--	constant addr_CH1DELAY_3	: integer :=  15;
	
	constant addr_CH1MODE   	: integer :=  16;
	constant addr_CH1ENABLE   	: integer :=  17;
	constant addr_CH1SLEN_0   	: integer :=  18;
	constant addr_CH1SLEN_1   	: integer :=  19;
	constant addr_CH1SLEN_2   	: integer :=  18;
	constant addr_CH1SLEN_3   	: integer :=  19;
	
	
   constant addr_CH2SRATE_0	: integer :=  20;
	constant addr_CH2SRATE_1	: integer :=  21;
   constant addr_CH2SRATE_2	: integer :=  20;
	constant addr_CH2SRATE_3	: integer :=  21;
	
	constant addr_CH2DELAY_0	: integer :=  22;
	constant addr_CH2DELAY_1	: integer :=  23;
	constant addr_CH2MODE   	: integer :=  24;
	constant addr_CH2ENABLE   	: integer :=  25;
	
	constant addr_CH2SLEN_0   	: integer :=  26;
	constant addr_CH2SLEN_1   	: integer :=  27;
	constant addr_CH2SLEN_2   	: integer :=  26;
	constant addr_CH2SLEN_3   	: integer :=  27;	
	
	constant addr_CH3SRATE_0	: integer :=  28;
	constant addr_CH3SRATE_1	: integer :=  29;
	constant addr_CH3SRATE_2	: integer :=  28;
	constant addr_CH3SRATE_3	: integer :=  29;
	
	constant addr_CH3DELAY_0	: integer :=  30;
	constant addr_CH3DELAY_1	: integer :=  31;
	constant addr_CH3MODE   	: integer :=  32;
	constant addr_CH3ENABLE   	: integer :=  33;
	constant addr_CH3SLEN_0   	: integer :=  34;
	constant addr_CH3SLEN_1   	: integer :=  35;
	constant addr_CH3SLEN_2   	: integer :=  34;
	constant addr_CH3SLEN_3   	: integer :=  35;	
	
	
	constant addr_LEDCONTROL  	: integer :=  36;	
	
	constant addr_ADDR_S_CH0_0 : integer :=  37; 
	constant addr_ADDR_S_CH0_1 : integer :=  38;
	constant addr_ADDR_E_CH0_0 : integer :=  39;
	constant addr_ADDR_E_CH0_1 : integer :=  40;
	
	constant addr_ADDR_S_CH1_0 : integer :=  41; 
	constant addr_ADDR_S_CH1_1 : integer :=  42;
	constant addr_ADDR_E_CH1_0 : integer :=  43;
	constant addr_ADDR_E_CH1_1 : integer :=  44;
   
   constant addr_ADDR_S_CH2_0 : integer :=  45; 
	constant addr_ADDR_S_CH2_1 : integer :=  46;
	constant addr_ADDR_E_CH2_0 : integer :=  47;
	constant addr_ADDR_E_CH2_1 : integer :=  48;

	constant addr_ADDR_S_CH3_0 : integer :=  49; 
	constant addr_ADDR_S_CH3_1 : integer :=  50;
	constant addr_ADDR_E_CH3_0 : integer :=  51;
	constant addr_ADDR_E_CH3_1 : integer :=  52;
	
	constant addr_MODE_0 : integer :=  53;
	constant addr_MODE_1 : integer :=  54;
	constant addr_MODE_2 : integer :=  55;
	constant addr_MODE_3 : integer :=  56;


   constant addr_max_wrparam	: integer :=  57;
	
	-- read parameter addresses
	constant addr_KPTYPE		   : integer :=  0;
	constant addr_KPVER			: integer :=  1;
	constant addr_KPMAJREV		: integer :=  2;
	constant addr_KPMINREV		: integer :=  3;

	constant addr_CH0_STATE_L		: integer :=  4;
	constant addr_CH0_STATE_M		: integer :=  5;
	constant addr_CH0_MEMSPACE_L		: integer :=  6;
	constant addr_CH0_MEMSPACE_M		: integer :=  7;
	constant addr_CH0_DATALEN_L		: integer :=  8;
	constant addr_CH0_DATALEN_M		: integer :=  9;
	
	constant addr_CH1_STATE_L		: integer :=  10;
	constant addr_CH1_STATE_M		: integer :=  11;
	constant addr_CH1_MEMSPACE_L		: integer :=  12;
	constant addr_CH1_MEMSPACE_M		: integer :=  13;
	constant addr_CH1_DATALEN_L		: integer :=  14;
	constant addr_CH1_DATALEN_M		: integer :=  15;

	constant addr_CH2_STATE_L		: integer :=  16;
	constant addr_CH2_STATE_M		: integer :=  17;
	constant addr_CH2_MEMSPACE_L		: integer :=  18;
	constant addr_CH2_MEMSPACE_M		: integer :=  19;
	constant addr_CH2_DATALEN_L		: integer :=  20;
	constant addr_CH2_DATALEN_M		: integer :=  21;	
	
	constant addr_CH3_STATE_L		: integer :=  22;
	constant addr_CH3_STATE_M		: integer :=  23;
	constant addr_CH3_MEMSPACE_L		: integer :=  24;
	constant addr_CH3_MEMSPACE_M		: integer :=  25;
	constant addr_CH3_DATALEN_L		: integer :=  26;
	constant addr_CH3_DATALEN_M		: integer :=  27;
   
	constant addr_CONFIGBITS      : integer := 28;

	constant addr_max_rdparam	: integer := 30;
	
	
	constant cmdWriteParam 		: integer := character'pos('A');
	constant cmdReadParam 		: integer := character'pos('B');
	constant cmdImageData 		: integer := character'pos('C');
	constant cmdChargeTable 	: integer := character'pos('D');
	constant cmdReadSmartChip	: integer := character'pos('E');
	constant cmdIncSmartChip	: integer := character'pos('F');
	constant cmdWrSmartChip		: integer := character'pos('G');
	constant cmdRstRasTbl		: integer := character'pos('H');
	constant cmdRasMapTbl		: integer := character'pos('I');
	constant cmdReadSRAM		: integer := character'pos('Z');
	constant cmdDump			: integer := character'pos('Y');
	constant cmdWriteSRAM		: integer := character'pos('X');

	type array2d is array (natural range <>) of std_logic_vector(7 downto 0);
	signal wr_paramsA : array2d(0 to addr_max_wrparam);	
	signal wr_params : array2d(0 to addr_max_wrparam);	
	signal rd_params : array2d(0 to addr_max_rdparam);

	signal bitCount : integer range 0 to 7;
	signal byteStrobe : std_logic;

	signal inShift : std_logic_vector(7 downto 0);			-- incoming shift register
	signal outShift : std_logic_vector(7 downto 0);			-- outgoing shift register
	signal outByte : std_logic_vector(7 downto 0);			-- output byte to load into shift register	

	
	

	
	signal DoWrite : std_logic;
	signal DoWriteA, DoWriteB, DoWriteC : std_logic;
	signal DoRead : std_logic;
	signal LatchReadParams : std_logic;
	signal LatchReadParamsA : std_logic;		-- to synchronise to 50MHz
	signal LatchReadParamsB : std_logic;
	signal LatchReadParamsC : std_logic;		-- to edge detect

	signal address : integer range 0 to addr_max_rdparam;
	signal cntlength : std_logic_vector(15 downto 0);
	type states is (Command, WrLengthL, WrLengthM, WrBase, WrData, Finished,
							 RdLengthL, RdLengthM, RdBase, RdPad, RdData,
							 DumpRdPad, DumpRdData,
							 SRAMRdAddrB0, SRAMRdAddrB1, SRAMRdAddrB2, SRAMRdPad, SRAMRdDataRest,
							 SRAMWrAddrB0, SRAMWrAddrB1, SRAMWrAddrB2, SRAMWrDataFirst, SRAMWrDataRest
					);
	signal state : states;
	
		
	
	
   -- for print data SPI packets
--t	signal pdIsLast : std_logic;		-- is this last packet of image?
	
	signal pdDoWrite : std_logic;
	
	signal SRAMWrite : std_logic;
	signal SRAMWriteA, SRAMWriteB, SRAMWriteC : std_logic;
	
	
	signal LatchedPHASEPROF : std_logic_vector(15 downto 0);	-- need to latch when PHDACQ is set
	signal LatchPhDacq	: std_logic;	-- latch PHDACQ high from PE and reset when SPI register read
	signal DoReadPhDacq : std_logic;	-- asserted when read from PHDACQ register occurs
	signal DoReadPhDacqA, DoReadPhDacqB, DoReadPhDacqC : std_logic;	 -- to synchronise
		
	signal SRAMRdDataLatched : std_logic_vector(7 downto 0);	
	signal SRAMDoRead : std_logic;
	
	signal DumpDoRead	: std_logic;
	signal DumpData	: 	std_logic_vector(7 downto 0);	

	signal temp : std_logic_vector(15 downto 0);
	 

	signal s_SRAMWrAddr	: std_logic_vector(21 downto 0);
	signal DepWrAddr : std_logic_vector(9 downto 0);	-- which 16 byte chunk of dependency table, bit 9 is overflow
--	signal s_RasterSelWrAddr : std_logic_vector(13 downto 0);
	signal rmDoWrite, rmSRAMWrite, rmSRAMWriteA, rmSRAMWriteB, rmSRAMWriteC : std_logic;

	signal writecount : std_logic_vector(11 downto 0);		-- used to count bytes writing raster to memories

	constant WRITECOUNT_CONSTS_STOP : std_logic_vector(11 downto 0) := "000000001000";  --8
	constant WRITECOUNT_DEP_START : std_logic_vector(11 downto 0) := "000000000001";
	
begin	
	
	-- count bits in the SPI stream and assert byte strobe for every eighth
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			bitCount <= 0;
			byteStrobe <= '0';
		elsif rising_edge(spi_sclk) then
			bitCount <= bitCount + 1;
			if bitCount = 7 then
				byteStrobe <= '1';
			else
				byteStrobe <= '0';
			end if;
		end if;
	end process;
	DumpData <= X"A5";  --t outByte <= X"A5";
	-- input shift register
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			inShift <= (others=>'0');
		elsif rising_edge(spi_sclk) then
			inShift <= inShift(6 downto 0) & spi_mosi;
		end if;
	end process;

	-- spi miso is bit 7 of output shift register
	spi_miso <= outShift(7);

	-- output shift register
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			outShift <= (others=>'0');
		elsif falling_edge(spi_sclk) then
			if byteStrobe='1' then	
				outShift <= outByte;
			else
				outShift <= outShift(6 downto 0) & '0';
			end if;
		end if;
	end process;

	DoRead <= '1' when ((state=RdPad) or ((state=RdData) and (cntlength > 0))) else '0';
	SRAMDoRead <= '1' when ((state=SRAMRdPad) or (state=SRAMRdDataRest)) else '0';
	DumpDoRead <= '1' when ((state=DumpRdPad) or (state=DumpRdData)) else '0';
	
	
	
	-- generate output byte based on state of control state machine
	process (rd_params, address, DoRead, inShift, DumpDoRead, DumpData,SRAMDoRead, SRAMRdDataLatched)
	--t(rd_params, address, DoRead, inShift, ScDoRead, DumpDoRead, ScWhich, ScRdAddress, SmartDataInk, SmartDataMku, SmartDataSys, SmartDataCSB, ScDoIncCode, SmartWrReason, SRAMDoRead, SRAMRdDataLatched, DumpData, sig_SMARTCHANGE, sig_SMARTWRSTAT, sig_SMARTRDSTAT)
	begin
		if DoRead='1' then
			if address > addr_max_rdparam then
				outByte <= (others=>'0');
			else
				outByte <= rd_params(address);
			end if;
--t  //////////////////   read SRAM     /////////////////////////////////////////////////////////////////////////////////
		elsif SRAMDoRead='1' then
			outByte <= SRAMRdDataLatched;
--t  //////////////////   read SRAM     /////////////////////////////////////////////////////////////////////////////////
		elsif DumpDoRead='1' then
			outByte <= DumpData;
		else 
			outByte <= inShift;
		end if;
	end process;	

		-- generate a signal that means a read has occurred from the PHDACQ register
--s	process (spi_sclk, spi_nss)
--s	begin
--s		if spi_nss='1' then
--s			DoReadPhDacq <= '0';
--s		elsif falling_edge(spi_sclk) then
--s			if (DoRead='1') and (address=addr_PHDACQ) then
--s				DoReadPhDacq <= '1';
--s			else
--s				DoReadPhDacq <= '0';
--s			end if;
--s		end if;
--s	end process;
	
	-- synchronise DoReadPhDacq to clk
--s	process (clk, reset)
--s	begin
--s		if reset='1' then
--s			DoReadPhDacqA <= '0';
--s			DoReadPhDacqB <= '0';
--s			DoReadPhDacqC <= '0';
--s		elsif rising_edge(clk) then
--s			DoReadPhDacqA <= DoReadPhDacq;
--s			DoReadPhDacqB <= DoReadPhDacqA;
--s			DoReadPhDacqC <= DoReadPhDacqB;
--s		end if;
--s	end process;	
	
	
	
	-- state machine	
	process (spi_sclk, spi_nss, byteStrobe)
	begin
		if spi_nss='1' then
         debugLedOut <= (others=>'0');
         cntlength <= (others=>'0');			
         state <= Command;
			LatchReadParams <= '0';
			address <= 0; --(others=>'0');
			writecount <= (others=>'0');
			s_SRAMWrAddr <= (others=>'0');
			SRAMWrData <= (others=>'0');			
			DoWrite <= '0';
			SRAMIsWrite <= '0';
      elsif rising_edge(spi_sclk) and (byteStrobe='1') then		
         debugLedOut <=  inShift(3 downto 0);
			LatchReadParams <= '0';
			DoWrite <= '0';		
			case state is
				when Command =>
					-- command byte now loaded
					if inShift=cmdWriteParam then
						state <= WrLengthL;
					elsif inShift=cmdReadParam then	
						state <= RdLengthL;
					elsif inShift=cmdReadSRAM then
						SRAMIsWrite <= '0';
						state <= SRAMRdAddrB0;
					elsif inShift=cmdWriteSRAM then
						SRAMIsWrite <= '1';
						state <= SRAMWrAddrB0;
					elsif inShift=cmdDump then
--t						DumpAddr <= (others=>'0');
						state <= DumpRdPad;
					else 
						state <= Finished;
					end if;
				
				when WrLengthL =>
					-- write param, cntlength low byte now loaded
					cntlength(7 downto 0) <= inShift;
					state <= WrLengthM;
				
				when WrLengthM =>
					-- write param, cntlength high byte now loaded
					cntlength(15 downto 8) <= inShift;
					state <= WrBase;
					
				when WrBase =>
					-- write param, base address now loaded
					address <= CONV_INTEGER(inShift);
					state <= WrData;
				
				when WrData =>
					-- write data now loaded
					cntlength <= cntlength - 1;
					address <= address + 1;
					if cntlength=1 then
						DoWrite <= '1';
						state <= Finished;
					end if;
					
				when Finished =>
					-- just spin aimlessly
					null;
					
				when RdLengthL =>
					-- write param, cntlength low byte now loaded
					LatchReadParams <= '1';
					cntlength(7 downto 0) <= inShift;
					state <= RdLengthM;
				
				when RdLengthM =>
					-- write param, cntlength high byte now loaded
					cntlength(15 downto 8) <= inShift;
					state <= RdBase;
					
				when RdBase =>
					-- write param, base address now loaded
					address <= CONV_INTEGER(inShift);
					state <= RdPad;
				
				when RdPad =>
					-- padding to do read
					cntlength <= cntlength - 1;
					address <= address + 1;
					state <= RdData;
				
				when RdData =>
					-- read data now loaded
					cntlength <= cntlength - 1;
					address <= address + 1;
					if cntlength=0 then
						state <= Finished;
					end if;
					
				when DumpRdPad =>
--t					DumpAddr <= DumpAddr + 1;
					state <= DumpRdData;
					
				when DumpRdData =>
--t					DumpAddr <= DumpAddr + 1;					
				
				when SRAMRdAddrB0 =>
					s_SRAMWrAddr(7 downto 0) <= inShift;
					state <= SRAMRdAddrB1;
						
				when SRAMRdAddrB1 =>
					s_SRAMWrAddr(15 downto 8) <= inShift;
					state <= SRAMRdAddrB2;
						
				when SRAMRdAddrB2 =>
					s_SRAMWrAddr(20 downto 16) <= inShift(4 downto 0);
					state <= SRAMRdPad;
						
				when SRAMRdPad =>
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= SRAMRdDataRest;
					
				when SRAMRdDataRest =>
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
						
				when SRAMWrAddrB0 =>
					s_SRAMWrAddr(7 downto 0) <= inShift;
					state <= SRAMWrAddrB1;
						
				when SRAMWrAddrB1 =>
					s_SRAMWrAddr(15 downto 8) <= inShift;
					state <= SRAMWrAddrB2;
						
				when SRAMWrAddrB2 =>
					s_SRAMWrAddr(20 downto 16) <= inShift(4 downto 0);
					state <= SRAMWrDataFirst;
						
				when SRAMWrDataFirst =>
					SRAMWrData <= inShift;
					state <= SRAMWrDataRest;
					
				when SRAMWrDataRest =>
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;					
					
					
					
            when others=> 
					state <= Finished;					
				end case;
		end if;
	end process;
	
	
	
	
	
--t	process (state)
--t	begin
--t		case state is
--t			when RstrReset =>
--t				rmDoWrite <= '1';
--t			when DldRasMap =>
--t				rmDoWrite <= '1';
--t			when others=>
--t				rmDoWrite <= '0';
--t		end case;
--t	end process;

--	process (spi_sclk, spi_nss)
--	begin
--		if spi_nss='1' then
--			rmSRAMWrite <= '0';
--		elsif rising_edge(spi_sclk) then
--			rmSRAMWrite <= byteStrobe and rmDoWrite;
--		end if;
--	end process;



--	process (state, s_SRAMWrAddr)
--	begin
--		case state is
	
--			when SRAMRdPad =>
--				pdDoWrite <= '1';				
--			when SRAMRdDataRest =>
--				pdDoWrite <= '1';				
--			when SRAMWrDataFirst =>
--				pdDoWrite <= '1';				
--			when SRAMWrDataRest =>
--				pdDoWrite <= '1';				
--			when others => 
--				pdDoWrite <= '0';				
--		end case;
--	end process;

	-- generate a strobe that indicates a write to SRAM should be performed
--	process (spi_sclk, spi_nss)
--	begin
--		if spi_nss='1' then
--			SRAMWrite <= '0';
--		elsif rising_edge(spi_sclk) then
--			SRAMWrite <= byteStrobe and pdDoWrite;
--		end if;
--	end process;

	-- synchronise SRAMWrite to clock and remember previous values so we can see edge
--	process (clk, reset)
--	begin
--		if reset='1' then
--			SRAMWriteA <= '0';
--			SRAMWriteB <= '0';
--			SRAMWriteC <= '0';
--		elsif rising_edge(clk) then
--			SRAMWriteA <= SRAMWrite;
--			SRAMWriteB <= SRAMWriteA;
--			SRAMWriteC <= SRAMWriteB;
--		end if;
--	end process;

	-- generate SRAM write strobe: assert on the rising edge of SRAMWrite and de-assert when SRAMStart asserted
--	process (clk, reset)
--	begin
--		if reset='1' then
--			SRAMStrobe <= '0';
--		elsif rising_edge(clk) then
--			if (SRAMWriteB='1') and (SRAMWriteC='0') then	
--				SRAMStrobe <= '1';
--			elsif SRAMStart='1' then
--				SRAMStrobe <= '0';
--			end if;
--		end if;
--	end process;
	
		
	-- parameter writes
	process (spi_sclk, reset)
	begin
		if reset='1' then
			clrwrparams: for i in wr_params'range loop
				-- cabinet fan default to one, others to zero
--t				if i=addr_CABINETFAN then
--t					wr_paramsA(i) <= (others=>'1');
--t				else
					wr_paramsA(i) <= (others=>'0');
--t				end if;				
			end loop clrwrparams;
--t			wr_paramsA(addr_PUMPPB0) <= CONV_STD_LOGIC_VECTOR(40, 8);  --32
--t			wr_paramsA(addr_PUMPRATE) <= CONV_STD_LOGIC_VECTOR(1, 8);  --25
		elsif rising_edge(spi_sclk) then
			-- clear write strobes 
			if (byteStrobe='1') and (state=WrData) then
				wr_paramsA(address) <= inShift;
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
				-- cabinet fan default to one, others to zero
--t				if i=addr_CABINETFAN then
--t					wr_params(i) <= (others=>'1');
--t				else
					wr_params(i) <= (others=>'0');
--t				end if;				
			end loop clrsyncwrparams;
		elsif rising_edge(clk) then
			if (DoWriteB='1') and (DoWriteC='0') then
				copywrparams: for i in wr_params'range loop
					wr_params(i) <= wr_paramsA(i);
				end loop copywrparams;
			end if;
		end if;
	end process;



	--INTCTRL        <= wr_params(addr_INTCTRL_M)(7 downto 0) & wr_params(addr_INTCTRL_L)(7 downto 0);
	INTCTRL        <= wr_params(addr_INTCTRL_L)(3 downto 0);
	DAQ_START      <= wr_params(addr_DAQ_START_M)(7 downto 0) & wr_params(addr_DAQ_START_L)(7 downto 0);
	CH0SRATE       <= wr_params(addr_CH0SRATE_3)(7 downto 0) & wr_params(addr_CH0SRATE_2)(7 downto 0) & wr_params(addr_CH0SRATE_1)(7 downto 0) & wr_params(addr_CH0SRATE_0)(7 downto 0);
	--CH0DELAY       <= wr_params(addr_CH0DELAY_1)(7 downto 0) & wr_params(addr_CH0DELAY_0)(7 downto 0);
	
	CH0LENGTH      <= wr_params(addr_CH0SLEN_3)(7 downto 0) & wr_params(addr_CH0SLEN_2)(7 downto 0) & wr_params(addr_CH0SLEN_1)(7 downto 0) & wr_params(addr_CH0SLEN_0)(7 downto 0);
	CH0ENABLE      <= wr_params(addr_CH0ENABLE)(0);
	
   CH1SRATE       <= wr_params(addr_CH1SRATE_3)(7 downto 0) & wr_params(addr_CH1SRATE_2)(7 downto 0) & wr_params(addr_CH1SRATE_1)(7 downto 0) & wr_params(addr_CH1SRATE_0)(7 downto 0);
	--CH1DELAY       <= wr_params(addr_CH1DELAY_1)(7 downto 0) & wr_params(addr_CH1DELAY_0)(7 downto 0);
	
	CH1LENGTH      <= wr_params(addr_CH1SLEN_3)(7 downto 0) & wr_params(addr_CH1SLEN_2)(7 downto 0) & wr_params(addr_CH1SLEN_1)(7 downto 0) & wr_params(addr_CH1SLEN_0)(7 downto 0);
	CH1ENABLE      <= wr_params(addr_CH1ENABLE)(0);
	
	CH2SRATE       <= wr_params(addr_CH2SRATE_3)(7 downto 0) & wr_params(addr_CH2SRATE_2)(7 downto 0) & wr_params(addr_CH2SRATE_1)(7 downto 0) & wr_params(addr_CH2SRATE_0)(7 downto 0);
	--CH2DELAY       <= wr_params(addr_CH2DELAY_1)(7 downto 0) & wr_params(addr_CH2DELAY_0)(7 downto 0);
	
	CH2LENGTH      <= wr_params(addr_CH2SLEN_3)(7 downto 0) & wr_params(addr_CH2SLEN_2)(7 downto 0) & wr_params(addr_CH2SLEN_1)(7 downto 0) & wr_params(addr_CH2SLEN_0)(7 downto 0);
	CH2ENABLE      <= wr_params(addr_CH2ENABLE)(0);

   CH3SRATE       <= wr_params(addr_CH3SRATE_3)(7 downto 0) & wr_params(addr_CH3SRATE_2)(7 downto 0) & wr_params(addr_CH3SRATE_1)(7 downto 0) & wr_params(addr_CH3SRATE_0)(7 downto 0);
	--CH3DELAY       <= wr_params(addr_CH3DELAY_1)(7 downto 0) & wr_params(addr_CH3DELAY_0)(7 downto 0);
	
	CH3LENGTH      <= wr_params(addr_CH3SLEN_3)(7 downto 0) & wr_params(addr_CH3SLEN_2)(7 downto 0) & wr_params(addr_CH3SLEN_1)(7 downto 0) & wr_params(addr_CH3SLEN_0)(7 downto 0);
	CH3ENABLE      <= wr_params(addr_CH3ENABLE)(0);
	
	LEDCTRL        <= wr_params(addr_LEDCONTROL)(7 downto 0);
	
	ADDR_S_CH0(15 downto 0)   <= wr_params(addr_ADDR_S_CH0_1)(7 downto 0) & wr_params(addr_ADDR_S_CH0_0)(7 downto 0);
	ADDR_E_CH0(15 downto 0)   <= wr_params(addr_ADDR_E_CH0_1)(7 downto 0) & wr_params(addr_ADDR_E_CH0_0)(7 downto 0);

	ADDR_S_CH1(15 downto 0)   <= wr_params(addr_ADDR_S_CH0_1)(7 downto 0) & wr_params(addr_ADDR_S_CH0_0)(7 downto 0);
	ADDR_E_CH1(15 downto 0)   <= wr_params(addr_ADDR_E_CH0_1)(7 downto 0) & wr_params(addr_ADDR_E_CH0_0)(7 downto 0);
	
	ADDR_S_CH2(15 downto 0)   <= wr_params(addr_ADDR_S_CH2_1)(7 downto 0) & wr_params(addr_ADDR_S_CH2_0)(7 downto 0);
	ADDR_E_CH2(15 downto 0)   <= wr_params(addr_ADDR_E_CH2_1)(7 downto 0) & wr_params(addr_ADDR_E_CH2_0)(7 downto 0);
	
	ADDR_S_CH3(15 downto 0)   <= wr_params(addr_ADDR_S_CH3_1)(7 downto 0) & wr_params(addr_ADDR_S_CH3_0)(7 downto 0);
	ADDR_E_CH3(15 downto 0)   <= wr_params(addr_ADDR_E_CH3_1)(7 downto 0) & wr_params(addr_ADDR_E_CH3_0)(7 downto 0);
	MODE_0(7 downto 0)        <= wr_params(addr_MODE_0)(7 downto 0);
	MODE_1(7 downto 0)        <= wr_params(addr_MODE_1)(7 downto 0);
	MODE_2(7 downto 0)        <= wr_params(addr_MODE_2)(7 downto 0);
	MODE_3(7 downto 0)        <= wr_params(addr_MODE_3)(7 downto 0);
 --s  TESTCTRL		   <= wr_params(addr_TESTCTRL);



	-- latch PHDACQ
--s	process (clk, reset)
--s	begin
--s		if reset='1' then
--s			LatchedPHASEPROF <= (others=>'0');
--s			LatchPhDacq <= '0';
--s		elsif rising_edge(clk) then
--s			if PHDACQ='1' then
--s				-- print engine signalling, so set
--s				LatchPhDacq <= '1';
--s				LatchedPHASEPROF <= PHASEPROF;
--s			elsif (DoReadPhDacqB='1') and (DoReadPhDacqC='0') then 
--s				-- SPI register read, so clear
--s				LatchPhDacq <= '0';
--s			end if;
--s		end if;
--s	end process;
	

		
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
	process (clk, reset, spi_nss)
	begin
		if reset='1' then
			clrrdparams: for i in rd_params'range loop
				rd_params(i) <= (others=>'0');
			end loop clrrdparams;
--s		elsif spi_nss='1' then
--s			rd_params(addr_REVCHECK) 	<= (others=>'1');			
		elsif rising_edge(clk) then
--s			if (crcStrobeC='1') and (crcStrobeB='0') then
--s				rd_params(addr_REVCHECK) 	<= REVCHECK;
			if (LatchReadParamsC='0') and (LatchReadParamsB='1') then
				rd_params(addr_KPTYPE) 		<= CONV_STD_LOGIC_VECTOR(KPTYPE, 8);
				rd_params(addr_KPVER) 		<= CONV_STD_LOGIC_VECTOR(KPVER, 8);
				rd_params(addr_KPMAJREV) 	<= CONV_STD_LOGIC_VECTOR(KPMAJREV, 8);
				rd_params(addr_KPMINREV) 	<= CONV_STD_LOGIC_VECTOR(KPMINREV, 8);
				
				rd_params(addr_CH0_STATE_L) <= CH0STATE(7 downto 0);
				rd_params(addr_CH0_STATE_M) <= CH0STATE(15 downto 8);
				rd_params(addr_CH0_MEMSPACE_L) <= CH0MEM_SPACE(7 downto 0);
				rd_params(addr_CH0_MEMSPACE_M) <= CH0MEM_SPACE(15 downto 8);
				rd_params(addr_CH0_DATALEN_L) <= CH0DATALEN(7 downto 0);
				rd_params(addr_CH0_DATALEN_M) <= CH0DATALEN(15 downto 8);
					
				rd_params(addr_CH1_STATE_L) <= CH1STATE(7 downto 0);
				rd_params(addr_CH1_STATE_M) <= CH1STATE(15 downto 8);
				rd_params(addr_CH1_MEMSPACE_L) <= CH1MEM_SPACE(7 downto 0);
				rd_params(addr_CH1_MEMSPACE_M) <= CH1MEM_SPACE(15 downto 8);
				rd_params(addr_CH1_DATALEN_L) <= CH1DATALEN(7 downto 0);
				rd_params(addr_CH1_DATALEN_M) <= CH1DATALEN(15 downto 8);
				
				rd_params(addr_CH2_STATE_L) <= CH2STATE(7 downto 0);
				rd_params(addr_CH2_STATE_M) <= CH2STATE(15 downto 8);
				rd_params(addr_CH2_MEMSPACE_L) <= CH2MEM_SPACE(7 downto 0);
				rd_params(addr_CH2_MEMSPACE_M) <= CH2MEM_SPACE(15 downto 8);
				rd_params(addr_CH2_DATALEN_L) <= CH2DATALEN(7 downto 0);
				rd_params(addr_CH2_DATALEN_M) <= CH2DATALEN(15 downto 8);				

				rd_params(addr_CH3_STATE_L) <= CH3STATE(7 downto 0);
				rd_params(addr_CH3_STATE_M) <= CH3STATE(15 downto 8);
				rd_params(addr_CH3_MEMSPACE_L) <= CH3MEM_SPACE(7 downto 0);
				rd_params(addr_CH3_MEMSPACE_M) <= CH3MEM_SPACE(15 downto 8);
				rd_params(addr_CH3_DATALEN_L) <= CH3DATALEN(7 downto 0);
				rd_params(addr_CH3_DATALEN_M) <= CH3DATALEN(15 downto 8);
				
				rd_params(addr_CONFIGBITS) <= CONFIGBITS(7 downto 0);	
	
--s				rd_params(addr_PHDACQ)		<= ('0', '0', '0', '0', '0', '0', '0', LatchPhDacq);

			end if;
		end if;
	end process;
	------------------------- PEC check ----------------------
	
			
	-- 100ms strobe
	process (clk, reset)
	begin
		if reset='1' then
			timer100ms_count <= 0;
			timer100ms <= '0';
		elsif rising_edge(clk) then
			timer100ms <= '0';
			if timer100ms_count < timer100ms_max then
				timer100ms_count <= timer100ms_count + 1;
			else
				timer100ms <= '1';
				timer100ms_count <= 0;
			end if;
		end if;
	end process;

	
end RTL;
