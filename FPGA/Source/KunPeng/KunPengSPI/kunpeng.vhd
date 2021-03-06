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
		PETYPE			  : in	integer := 0;
		PEVER			     : in 	integer := 0;
		PEMAJREV		     : in 	integer := 0;
		PEMINREV		     : in 	integer := 0;
		MaxRasterVersion : in	integer := 0
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
		CONTPRTENA		: out	std_logic_vector(2 downto 0);
		CONTPRTMODE		: out	std_logic;
		CONTPRT			: out	std_logic_vector(31 downto 0);
		SESEL			   : out	std_logic;
		DIRSEL			: out	std_logic_vector(1 downto 0);
		RBPEC			   : in	std_logic_vector(1 downto 0);
		RBSENC			: in 	std_logic_vector(1 downto 0);
		RBSEDIR			: in	std_logic_vector(3 downto 0);
		RBSEDIR_READ	: out	std_logic;
		MANUALGO		   : out	std_logic;
		CONTPRTLIM		: out	std_logic_vector(23 downto 0);
		IGNORETOOFAST 	: out	std_logic;
		OVERLAP_ABORTS	: out	std_logic;
	
		-- print engine 
		H1BUFREQ		   : out	std_logic;
		H1PENA			: buffer	std_logic_vector(7 downto 0);
		H1HEIGHT		   : out	std_logic_vector(7 downto 0);
		H1PDLY			: out	std_logic_vector(23 downto 0);
		H1REVERSE		: out	std_logic;
		H1LASTPRINT		: out	std_logic;
		H1TAG			   : out	std_logic_vector(7 downto 0);
--t		FMET			: in	std_logic_vector(15 downto 0);
		
		
		
		
		PDACOFF			: out	std_logic_vector(9 downto 0);
		QDACOFF			: out	std_logic_vector(9 downto 0);
		-- raw volts settings
--t		RVRASLENGTH		: out	std_logic_vector(7 downto 0);
--t		RVLEFT			: out	std_logic_vector(15 downto 0);
--t		RVRIGHT			: out	std_logic_vector(15 downto 0);
--t		RVSTROBEOFF		: out	std_logic_vector(23 downto 0);
		DCR_ENABLE		: buffer std_logic_vector(1 downto 0);
		
		
		
		-- pump
		PUMPEN			: out	std_logic;
		PUMPOPENLOOP	: out	std_logic;
		PUMPREVERSE		: out	std_logic;
		PRESSET			: out	std_logic_vector(9 downto 0);
		PRESRB			: in	std_logic_vector(15 downto 0);
		RPM				: in	std_logic_vector(15 downto 0);
		PUMPCURR		   : in	std_logic_vector(15 downto 0);
		PUMPP			   : out	std_logic_vector(15 downto 0);
		PUMPI			   : out	std_logic_vector(15 downto 0);
		PUMPD			   : out	std_logic_vector(15 downto 0);
		PUMPSET			: in 	std_logic_vector(9 downto 0);	-- current pump setting from PID
		PUMPRATE		   : out	std_logic_vector(7 downto 0);

-- head temperature
		PWMDUTY			: out	std_logic_vector(15 downto 0);
----		PWMFREQ			: out	std_logic_vector(7 downto 0);
		HEADTEMP		: in	std_logic_vector(15 downto 0);
--		HEADSET			: in	std_logic_vector(7 downto 0);
--		HEADP			: out	std_logic_vector(7 downto 0);
--		HEADI			: out	std_logic_vector(7 downto 0);
--		HEADRATE		: out	std_logic_vector(7 downto 0);		
		
		
		-- phasing
		PHASENA			: out	std_logic;
		PHASCOMP		   : out	std_logic_vector(12 downto 0);
		PRINTPHAS		: out	std_logic_vector(7 downto 0);
		PHDACQ			: in	std_logic;
		PHASEPROF		: in	std_logic_vector(15 downto 0);
		BREAKOFF		   : in	std_logic_vector(15 downto 0);
		
		-- drop control
		DROPRATE		   : out	std_logic_vector(15 downto 0);
		MODAMP			: out	std_logic_vector(15 downto 0);
		PHASECHARG		: out	std_logic_vector(9 downto 0);
		VELCHARG		   : out	std_logic_vector(9 downto 0);
		PHASDROPS		: out	std_logic_vector(7 downto 0);
		VELDROPS		   : out	std_logic_vector(7 downto 0);
		CHARGE			: out	std_logic_vector(12 downto 0);
		EHT				: out	std_logic_vector(12 downto 0);
		
		STROBEW			: out	std_logic_vector(7 downto 0);
		STROBEPH		   : out	std_logic_vector(7 downto 0);
		MODVMON			: in	std_logic_vector(15 downto 0);
		MODIMON			: in	std_logic_vector(15 downto 0);
		EHTTRIP			: in	std_logic_vector(1 downto 0);
--		EHTVMON			: in	std_logic_vector(15 downto 0);
--		EHTIMON			: in	std_logic_vector(15 downto 0);
		EHTCURRTWO		: in	std_logic_vector(15 downto 0);
		EHT_CURR_TWO_TRIP : out std_logic_vector(9 downto 0);
		MODERR			: in 	std_logic;


      CHAMP_ERROR		: in	std_logic;
--s		MODP			: out	std_logic_vector(7 downto 0);
--s		MODI			: out	std_logic_vector(7 downto 0);
--s		MODRATE			: out	std_logic_vector(7 downto 0);
		MODSET			: in	std_logic_vector(11 downto 0);
				
		-- velocity
		VELENA			: out	std_logic_vector(1 downto 0);
		VELCOMP			: out	std_logic_vector(9 downto 0);
		VELDACQ			: in	std_logic;
		VELCOUNT		: in	std_logic_vector(15 downto 0);
		VELOCITY_VALIDITY : in	std_logic_vector(5 downto 0);
		
		-- ink system
		INKVALVES		: out	std_logic_vector(7 downto 0);
		HEADVALVES		: out	std_logic_vector(5 downto 0);
		VALVERRACK		: out	std_logic;
		TANKLEVS		: in	std_logic_vector(2 downto 0);
		TANKLEVERR		: in	std_logic_vector(2 downto 0);		
      CABTEMP			: in	std_logic_vector(15 downto 0);		
		GUTTERDET		: in	std_logic;
		GUTTERDETERR	: in	std_logic;
		
		-- throw distance
		TOF				: out	std_logic_vector(15 downto 0);
		TOFERROR		: in	std_logic;
		
      -- monitoring
		VALVIMON		: in	std_logic_vector(15 downto 0);
		AUXIMON			: in	std_logic_vector(15 downto 0);
--		ADCPHASEA		: in	std_logic_vector(15 downto 0);
--		ADCPHASEB		: in	std_logic_vector(15 downto 0);
--t		CH_AMP2_OUT		: in	std_logic_vector(15 downto 0);
--t		N300VMON		: in	std_logic_vector(15 downto 0);
--t		PHASETRIGA		: in	std_logic;
--t		PHASETRIGB		: in	std_logic;
		VALVSTAT		: in	std_logic_vector(2 downto 0);		
      CHGSUP			: in	std_logic_vector(15 downto 0);		
		CHGOUT			: in	std_logic_vector(15 downto 0);
		
		
		
		
		
		
		
		
		
		
		
		
		-- interface to arbiter to write to memory
		SRAMWrAddr		: buffer std_logic_vector(20 downto 0);
		SRAMWrData 		: out 	std_logic_vector(7 downto 0);
		SRAMStrobe		: out	std_logic;
		SRAMStart		: in	std_logic;	-- start of cycle from arbiter
		SRAMDone		: in	std_logic;	-- end of cycle from arbiter
		SRAMIsWrite		: out	std_logic;	-- 1 is write, 0 is read
		SRAMRdData		: in	std_logic_vector(7 downto 0);

		pdUpdated		: buffer	std_logic;						-- tick when the last stroke of message is downloaded
		pdLatestStroke	: out	std_logic_vector(13 downto 0);	-- last fully-downloaded stroke
		pdStroke		: buffer	std_logic;						-- tick when a stroke finishes writing
		
		RasterSelWrAddr : out	std_logic_vector(12 downto 0);
		RasterSelWrData : out	std_logic_vector(36 downto 0);
		TableIndexWren 	: out	std_logic;
		RasMapWren 		: out	std_logic;
		DepWren 		: out	std_logic;						-- dependency memory write enable
		
		GUTPUMP_TACH	: in	std_logic;
		GUTPUMP_DRIVE 	: in	std_logic;		

	
		-- gutter pump
		GUTPUMPTACH		: in	std_logic_vector(15 downto 0);
		GUTPUMPSET		: in	std_logic_vector(10 downto 0);
		GUTPUMP			: buffer std_logic_vector(15 downto 0);
		---------------------------------------------------------------------------------
		GUTPUMPP		: out	std_logic_vector(15 downto 0);  --used for pump noise amp    --
		GUTPUMPI		: out	std_logic_vector(15 downto 0);  --used for pump noise amp    --
		GUTPUMPD		: out	std_logic_vector(15 downto 0);  --used for pump noise amp    --
		GUTPUMPRATE		: out	std_logic_vector(7 downto 0);                             --
		---------------------------------------------------------------------------------
		GUTPUMP_ON		: out	std_logic;						-- turn on gutter pump control output		
		
		
		-- decode CSB Issue		
--t		CSB_G			: buffer	std_logic;
--t		CSB_H			: buffer	std_logic;
		CSBCONF			: out	std_logic_vector(7 downto 0);
		
		-- test control register
		TESTCTRL		: out	std_logic_vector(7 downto 0);
		
		-- EHT gate register
		EHTGATE			: out	std_logic;
		
		
		
		-- Dump memory interface
--t		DumpAddr		: buffer	std_logic_vector(13 downto 0);
--t		DUMPENABLE		: buffer 	std_logic;
--t		DumpData		: in	std_logic_vector(7 downto 0);	

		-- Calypso high signal and control
		HV_ENABLE		: out	std_logic_vector(7 downto 0); 
		
      MEDIAWIDTH		: out	std_logic_vector(23 downto 0);
		H1PECINWIDTH	: in	std_logic;
		
		
		
		-- print data buffer number (0..3 = buffer to write to, other=do not write)
		BUFFERNO		: in	std_logic_vector(7 downto 0);
		
--t		PRINTGOQDEPTH 	: in	std_logic_vector(7 downto 0);
		PRINTSTAT		: in	std_logic_vector(7 downto 0);		
		PE_BUFFERNO		: in	std_logic_vector(7 downto 0);
		
	
		debugLedOut : out    std_logic_vector(3 downto 0)
	);	
END KunPengSPI;
	
architecture RTL of KunPengSPI is	
	
	signal H1PENA_spi : std_logic_vector(7 downto 0);
	signal H1PENA_spi_a, H1PENA_spi_b : std_logic_vector(7 downto 0);
--t	signal TRAF_spi : std_logic_vector(3 downto 0);
--t	signal TRAF_spi_a, TRAF_spi_b : std_logic_vector(3 downto 0);
--t	signal RELAYS_spi : std_logic_vector(6 downto 0);
--t	signal RELAYS_spi_a, RELAYS_spi_b : std_logic_vector(6 downto 0);
	signal INTCTRL_spi : std_logic_vector(3 downto 0);
	signal INTCTRL_spi_a, INTCTRL_spi_b : std_logic_vector(3 downto 0);

	
	constant timer100ms_max : integer := 5000000;
	constant check_Pec_Timeout : integer := 49;		-- 5s
--t	constant led_timeout : integer := 4;			-- 0.5s
	signal timer100ms_count : integer range 0 to timer100ms_max;
	signal timer100ms : std_logic;

	signal chkPENA : std_logic_vector(1 downto 0);
--t	signal chkRED : std_logic;
--t	signal chkRELAY : std_logic;
	signal countPEC1 : integer range 0 to check_Pec_Timeout;
	signal countPEC2 : integer range 0 to check_Pec_Timeout;	
	
	
	
	-- write parameter addresses	
	constant addr_INTCTRL		: integer :=  0;
	constant addr_CONTPRTENA	: integer :=  1;
	constant addr_CONTPRTMODE	: integer :=  2;
	constant addr_CONTPRTB0		: integer :=  3;
	constant addr_CONTPRTB1		: integer :=  4;
	constant addr_CONTPRTB2		: integer :=  5;
	constant addr_CONTPRTB3		: integer :=  6;
--	constant addr_SESTAB		: integer :=  6;
	constant addr_SESEL			: integer :=  7;
	constant addr_DIRSEL		: integer :=  8;
	constant addr_H1PENA		: integer :=  9;
--	constant addr_H1WIDB0		: integer := 10;	-- deprecated
--	constant addr_H1WIDB1		: integer := 11; 	-- deprecated
--	constant addr_H1WIDB2		: integer := 12;	-- deprecated
--	constant addr_H1RAGRBPB0	: integer := 13;	-- deprecated
--	constant addr_H1RAGRBPB1	: integer := 14;	-- deprecated
--	constant addr_H1RAGRTPB0	: integer := 15;	-- deprecated
--	constant addr_H1RAGRTPB1	: integer := 16;	-- deprecated
--	constant addr_H1RAGBBPB0	: integer := 17;	-- deprecated
--	constant addr_H1RAGBBPB1	: integer := 18;	-- deprecated
--	constant addr_H1RAGBTPB0	: integer := 19;	-- deprecated
--	constant addr_H1RAGBTPB1	: integer := 20;	-- deprecated
--	constant addr_H1PDLYB0		: integer := 21;	-- deprecated
--	constant addr_H1PDLYB1		: integer := 22;	-- deprecated
--	constant addr_H1PDLYB2		: integer := 23;	-- deprecated
--	constant addr_H1BOLD		: integer := 24;	-- deprecated
--	constant addr_H1INVERT		: integer := 25;	-- deprecated
--	constant addr_H1REVERSE		: integer := 26;	-- deprecated
	constant addr_PUMPEN 		: integer := 27;
	constant addr_PRESSETB0 	: integer := 28;
	constant addr_PRESSETB1 	: integer := 29;
	constant addr_PWMDUTYB0		: integer := 30;
	constant addr_PWMDUTYB1		: integer := 31;
	constant addr_PHASENA 		: integer := 32;
	constant addr_PHASCOMPB0	: integer := 33;
	constant addr_PHASCOMPB1	: integer := 34;
	constant addr_PRINTPHAS		: integer := 35;
	constant addr_DROPRATEB0	: integer := 36;
	constant addr_DROPRATEB1	: integer := 37;
	constant addr_MODAMPB0_sp		: integer := 38;
	constant addr_MODAMPB1_sp		: integer := 39;
	constant addr_PHASECHARGB0	: integer := 40;
	constant addr_PHASECHARGB1	: integer := 41;
	constant addr_VELCHARGB0	: integer := 42;
	constant addr_VELCHARGB1	: integer := 43;
	constant addr_PHASDROPS		: integer := 44;
	constant addr_VELDROPS		: integer := 45;
	constant addr_CHARGEB0		: integer := 46;
	constant addr_CHARGEB1		: integer := 47;
	constant addr_EHTB0			: integer := 48;
	constant addr_EHTB1			: integer := 49;
--	constant addr_TRIPB0		: integer := 50;
--	constant addr_TRIPB1		: integer := 51;
	constant addr_STROBEW		: integer := 52;
	constant addr_STROBEPH		: integer := 53;
	constant addr_VELENA 		: integer := 54;
	constant addr_VELCOMPB0		: integer := 55;
	constant addr_VELCOMPB1		: integer := 56;
	constant addr_INKVALVES		: integer := 57;
	constant addr_HEADVALVES	: integer := 58;
	constant addr_PELTEN		: integer := 59;
	constant addr_AIRPUMPEN		: integer := 60;
	constant addr_RELAYS		: integer := 61;
--	constant addr_THROW			: integer := 62;
	constant addr_TRAF			: integer := 63;
	constant addr_CABINETFAN	: integer := 64;
	constant addr_DUMPCTRL		: integer := 65;	
	constant addr_EHTCURR2TRIPB0	: integer := 66;
	constant addr_EHTCURR2TRIPB1	: integer := 67;
	constant addr_PUMPPB0		: integer := 68;
	constant addr_PUMPPB1		: integer := 69;
	constant addr_PUMPIB0		: integer := 70;
	constant addr_PUMPIB1		: integer := 71;
	constant addr_PUMPDB0		: integer := 72;
	constant addr_PUMPDB1		: integer := 73;
	constant addr_PUMPRATE		: integer := 74;
	constant addr_MODP			: integer := 75;
	constant addr_MODI			: integer := 76;
	constant addr_MODRATE		: integer := 77;
	constant addr_HEADP			: integer := 78;
	constant addr_HEADI			: integer := 79;
	constant addr_HEADRATE		: integer := 80;
	constant addr_QDACOFFB0		: integer := 81;
	constant addr_QDACOFFB1		: integer := 82;
	constant addr_PDACOFFB0		: integer := 83;
	constant addr_PDACOFFB1		: integer := 84;
	constant addr_TOFB0			: integer := 85;
	constant addr_TOFB1			: integer := 86;
	constant addr_MANUALGO		: integer := 87;
	constant addr_CONTPRTLIMB0 	: integer := 88;
	constant addr_CONTPRTLIMB1 	: integer := 89;
	constant addr_CONTPRTLIMB2 	: integer := 90;
	constant addr_IGNORETOOFAST : integer := 91;
	constant addr_GUTPUMPB0 	: integer := 92;
	constant addr_GUTPUMPB1 	: integer := 93;
	constant addr_GUTPUMPPB0	: integer := 94;
	constant addr_GUTPUMPPB1	: integer := 95;
	constant addr_GUTPUMPIB0 	: integer := 96;
	constant addr_GUTPUMPIB1 	: integer := 97;
	constant addr_GUTPUMPDB0 	: integer := 98;
	constant addr_GUTPUMPDB1 	: integer := 99;
	constant addr_GUTPUMPRATE 	: integer := 100;
	constant addr_CSBISSUE		: integer := 101;
	constant addr_TESTCTRL		: integer := 102;
	constant addr_EHTGATE		: integer := 103;
	constant addr_PRINTACK		: integer := 104;
	constant addr_MWIDTHB0		: integer := 105;
	constant addr_MWIDTHB1		: integer := 106;
	constant addr_MWIDTHB2		: integer := 107;
	constant addr_RVRASLENGTH	: integer := 108;
	constant addr_RVLEFTB0		: integer := 109;
	constant addr_RVLEFTB1		: integer := 110;
	constant addr_RVRIGHTB0		: integer := 111;
	constant addr_RVRIGHTB1		: integer := 112;
	constant addr_RVSTROBEOFFB0	: integer := 113;
	constant addr_RVSTROBEOFFB1	: integer := 114;
	constant addr_RVSTROBEOFFB2	: integer := 115;
	constant addr_DCR_ENABLE	: integer := 116;
	constant addr_RVWIDTHB0		: integer := 117;
	constant addr_RVWIDTHB1		: integer := 118;
	constant addr_RVWIDTHB2		: integer := 119;
	constant addr_RVGUARDONE	: integer := 120;
	constant addr_RVGUARDTWO	: integer := 121;
	constant addr_VALVERRACK 	: integer := 122;
	constant addr_SARCTRLB0 	: integer := 123;
	constant addr_SARCTRLB1 	: integer := 124;
	constant addr_SARCTRLB2 	: integer := 125;
	constant addr_SARCTRLB3 	: integer := 126;
	constant addr_PESECHKCTRLB0	: integer := 127;
	constant addr_PESECHKCTRLB1	: integer := 128;
	
	constant addr_HVENABLE			: integer := 130;	
	constant addr_Mod2DROPRATEB0	: integer := 131;
	constant addr_Mod2DROPRATEB1	: integer := 132;
	constant addr_MOD2AMPB0		: integer := 133;
	constant addr_MOD2AMPB1		: integer := 134;
--
	constant addr_PHAS2ENA		: integer := 135;	
	constant addr_PHAS2COMPB0	: integer := 136;
	constant addr_PHAS2COMPB1	: integer := 137;
	constant addr_PRINT2PHAS	: integer := 138;			
	constant addr_PHAS2CHARGB0	: integer := 139;
	constant addr_PHAS2CHARGB1	: integer := 140;
	constant addr_PHAS2DROPS	: integer := 141;
	constant addr_CHARGE2B0		: integer := 142;
	constant addr_CHARGE2B1		: integer := 143;
	constant addr_QDAC2OFFB0	: integer := 144;	
	constant addr_QDAC2OFFB1	: integer := 145;	
	constant addr_PDAC2OFFB0	: integer := 146;
	constant addr_PDAC2OFFB1	: integer := 147;
	constant addr_STROBE2W		: integer := 148;	
	constant addr_STROBE2PH		: integer := 149;
	constant addr_VALMOTOFFB0	: integer := 150;
	constant addr_VALMOTOFFB1	: integer := 151;
	constant addr_VEL2ENA		: integer := 152;	
	constant addr_PCB4OUT		: integer := 153;

	constant addr_PCB4INPOL		: integer := 154;
	constant addr_PCB4INTENA	: integer := 155;
	constant addr_PCB4WIDTH		: integer := 156;
	
	constant addr_TESTLED		: integer := 160;			
	
	constant addr_CSBCONF		: integer := 170;
	constant addr_max_wrparam	: integer := 170;
	
	-- read parameter addresses
	constant addr_PETYPE		   : integer :=  0;
	constant addr_PEVER			: integer :=  1;
	constant addr_PEMAJREV		: integer :=  2;
	constant addr_PEMINREV		: integer :=  3;
	constant addr_RBPEC			: integer :=  4;
	constant addr_RBSENC		: integer :=  5;
	constant addr_RBSEDIR		: integer :=  6;
	constant addr_FMETLB		: integer :=  7;
	constant addr_FMETHB		: integer :=  8;
	constant addr_H1TOOCLOS		: integer :=  9;
	constant addr_H1TOOFAST		: integer := 10;
	constant addr_H1TOONEAR		: integer := 11;
	constant addr_H1OVERSPEED	: integer := 12;
	constant addr_PRESRBB0		: integer := 13;
	constant addr_PRESRBB1		: integer := 14;
	constant addr_RPMB0			: integer := 15;
	constant addr_RPMB1			: integer := 16;
	constant addr_PUMPCURRB0	: integer := 17;
	constant addr_PUMPCURRB1	: integer := 18;
	constant addr_HEADTEMPB0	: integer := 19;
	constant addr_HEADTEMPB1	: integer := 20;
	constant addr_PHDACQ		   : integer := 21;
	constant addr_PHASEPROFB0	: integer := 22;
	constant addr_PHASEPROFB1	: integer := 23;
	constant addr_MODVMONB0		: integer := 24;
	constant addr_MODVMONB1		: integer := 25;
	constant addr_MODIMONB0		: integer := 26;
	constant addr_MODIMONB1		: integer := 27;
	constant addr_EHTTRIP		: integer := 28;
--	constant addr_EHTVMONB0		: integer := 29;
--	constant addr_EHTVMONB1		: integer := 30;
--	constant addr_EHTIMONB0		: integer := 31;
--	constant addr_EHTIMONB1		: integer := 32;
	constant addr_VELDACQ		: integer := 33;
	constant addr_VELCOUNTB0	: integer := 34;
	constant addr_VELCOUNTB1	: integer := 35;
	constant addr_TANKLEVS		: integer := 36;
	constant addr_TANKTEMPB0	: integer := 37;
	constant addr_TANKTEMPB1	: integer := 38;
	constant addr_CABTEMPB0		: integer := 39;
	constant addr_CABTEMPB1		: integer := 40;
	constant addr_VACB0			: integer := 41;
	constant addr_VACB1			: integer := 42;
	constant addr_HEADCOVER		: integer := 43;
	constant addr_GUTTERDET		: integer := 44;
	constant addr_TOFERROR		: integer := 45;
	constant addr_CHGSUPB0		: integer := 80;
	constant addr_CHGSUPB1		: integer := 81;
	constant addr_CHGOUTB0		: integer := 82;
	constant addr_CHGOUTB1		: integer := 83;
	constant addr_VALVIMONB0	: integer := 84;
	constant addr_VALVIMONB1	: integer := 85;
	constant addr_AUXIMONB0		: integer := 86;
	constant addr_AUXIMONB1		: integer := 87;
	constant addr_MSGSEL		   : integer := 88;
	constant addr_SMARTCHANGE	: integer := 89;
	constant addr_SMARTWRSTAT	: integer := 90;
	constant addr_SMARTRDSTAT	: integer := 91;
	constant addr_EHTCURRTWOB0	: integer := 92;
	constant addr_EHTCURRTWOB1	: integer := 93;
	constant addr_VELVALIDITY	: integer := 94;
	constant addr_HWSTAT		   : integer := 95;
	constant addr_TESTSTAT1		: integer := 96;
--	constant addr_TESTPHAB0		: integer := 97;
--	constant addr_TESTPHAB1		: integer := 98;
--	constant addr_TESTPHBB0		: integer := 99;
--	constant addr_TESTPHBB1		: integer := 100;
	constant addr_PUMPSETB0		: integer := 101;
	constant addr_PUMPSETB1		: integer := 102;
	constant addr_MODSETB0		: integer := 103;
	constant addr_MODSETB1		: integer := 104;
	constant addr_H1TOOOFTEN	: integer := 105;
	constant addr_HEADSET		: integer := 106;
	constant addr_QAMPLOADB0	: integer := 107;
	constant addr_QAMPLOADB1	: integer := 108;
	constant addr_QAMPLOADB2	: integer := 109;
	constant addr_BREAKOFFB0	: integer := 110;
	constant addr_BREAKOFFB1	: integer := 111;
	constant addr_AVGDROPSB0	: integer := 112;
	constant addr_AVGDROPSB1	: integer := 113;
	constant addr_TABLEINDEX	: integer := 114;
	constant addr_ENDRASB0		: integer := 115;
	constant addr_ENDRASB1		: integer := 116;
	constant addr_ENDRASB2		: integer := 117;
	constant addr_RASERRORS		: integer := 118;
	constant addr_PRINTCOUNTB0	: integer := 119;
	constant addr_PRINTCOUNTB1	: integer := 120;
	constant addr_PRINTCOUNTB2	: integer := 121;
	constant addr_PRINTCOUNTB3 	: integer := 122;
	constant addr_GUTPUMPTACHB0 : integer := 123;
	constant addr_GUTPUMPTACHB1 : integer := 124;
	constant addr_GUTPUMPSETB0 	: integer := 125;
	constant addr_GUTPUMPSETB1 	: integer := 126;
	constant addr_PELTEMP_MANUF : integer := 127;
	constant addr_PELTEMP_REV 	: integer := 128;
	constant addr_PELTEMP_STATUS : integer := 129;
	constant addr_TEMP_PIBB0 	: integer := 130;
	constant addr_TEMP_PIBB1 	: integer := 131;
	constant addr_TEMP_AMBIENTB0 : integer := 132;
	constant addr_TEMP_AMBIENTB1 : integer := 133;
	constant addr_TEMP_PELTIERB0 : integer := 134;
	constant addr_TEMP_PELTIERB1 : integer := 135;
	constant addr_H1PRODMISSED	: integer := 136;
	constant addr_PRODCOUNTB0	: integer := 137;
	constant addr_PRODCOUNTB1	: integer := 138;
	constant addr_PRODCOUNTB2	: integer := 139;
	constant addr_PRODCOUNTB3 	: integer := 140;
	constant addr_WRITEBUFF		: integer := 141;
	constant addr_READBUFF		: integer := 142;
	constant addr_PRINTSQUEUED	: integer := 143;
	constant addr_PRINTSTAT		: integer := 144;
	constant addr_H1PECINWIDTH	: integer := 145;
	constant addr_REVCHECK		: integer := 146;
	constant addr_HWSTATB		: integer := 147;
	constant addr_SARSTATB0 	: integer := 148;
	constant addr_SARSTATB1 	: integer := 149;
	
	constant addr_PH2DACQ		: integer := 150;
	constant addr_PHAS2PROFB0	: integer := 151;
	constant addr_PHAS2PROFB1	: integer := 152;
				
	constant addr_MOD2VMONB0	: integer := 153;
	constant addr_MOD2VMONB1	: integer := 154;
	constant addr_MOD2IMONB0	: integer := 155;
	constant addr_MOD2IMONB1	: integer := 156;
	constant addr_N300VMONB0	: integer := 161;
	constant addr_N300VMONB1	: integer := 162;
	constant addr_CHG2OUTB0		: integer := 163;
	constant addr_CHG2OUTB1		: integer := 164;
	constant addr_PCB4IN		: integer := 165;
	constant addr_TESTVALIN     : integer := 166; 
	constant addr_TESTIN		: integer := 167;
	constant addr_BREAKOFF2B0	: integer := 168;
	constant addr_BREAKOFF2B1	: integer := 169;

	constant addr_DROPCOUNTB0	: integer := 170;
	constant addr_DROPCOUNTB1	: integer := 171;
	constant addr_DROPCOUNTB2	: integer := 172;
	constant addr_DROPCOUNTB3 	: integer := 173;
	constant addr_DROPCOUNTB4 	: integer := 174;
	constant addr_DROPCOUNTB5 	: integer := 175;
	constant addr_DROPCOUNTB6 	: integer := 176;
	constant addr_DROPCOUNTB7 	: integer := 177;
	
	constant addr_PESECHKSTAT	: integer := 178;

	constant addr_N1DEFLECTEDB0	: integer := 214;
	constant addr_N1DEFLECTEDB1	: integer := 215;
	constant addr_N1DEFLECTEDB2	: integer := 216;
	constant addr_N1DEFLECTEDB3	: integer := 217;
	constant addr_N1DEFLECTEDB4	: integer := 218;
	constant addr_N1DEFLECTEDB5	: integer := 219;
	constant addr_N1DEFLECTEDB6	: integer := 220;
	constant addr_N1DEFLECTEDB7	: integer := 221;

	constant addr_max_rdparam	: integer := 229;
	
	
	
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
							 PdTag, PdTagPad, PdFlags, PdHeight, PdMaxPrtDots, PdCompensation, 
							     PdWidth0, PdWidth1, PdWidth2,
							     PdDly0, PdDly1, PdDly2,
							     PdRdLeftL, PdRdLeftM, PdRdRightL, PdRdRightM, 
								 PdLeftL, PdLeftM, PdRightL, PdRightM, 
								 PdTopL, PdTopM, PdBottomL, PdBottomM, PdDataFirst, PdData,
							 RstrReset, DldRasMapFirst, DldRasMap,
							 RstrTblIndex, RstrPrinted, RstrActual, RstrAhead, RstrBehind, RstrStrategy, RstrConsts, RstrDeps, RstrData,
							 ScRdWhich, ScRdPad, ScRdData,
							 DumpRdPad, DumpRdData,
							 SRAMRdAddrB0, SRAMRdAddrB1, SRAMRdAddrB2, SRAMRdPad, SRAMRdDataRest,
							 SRAMWrAddrB0, SRAMWrAddrB1, SRAMWrAddrB2, SRAMWrDataFirst, SRAMWrDataRest,
 							 ScIncWhich, ScIncField, ScIncPad, ScIncCode,
 							 ScWrWhich, ScWrDataFirst, ScWrData, ScWrPad, ScWrCode
					);
	signal state : states;
	
		
	
	
   -- for print data SPI packets
--t	signal pdIsLast : std_logic;		-- is this last packet of image?
	signal pdLeft	: std_logic_vector(15 downto 0);
	signal pdRight	: std_logic_vector(15 downto 0);
	signal pdTop	: std_logic_vector(15 downto 0);
	signal pdBottom	: std_logic_vector(15 downto 0);
	signal pdDoWrite : std_logic;
	
	signal SRAMWrite : std_logic;
	signal SRAMWriteA, SRAMWriteB, SRAMWriteC : std_logic;
	
	
	signal LatchedPHASEPROF : std_logic_vector(15 downto 0);	-- need to latch when PHDACQ is set
	signal LatchPhDacq	: std_logic;	-- latch PHDACQ high from PE and reset when SPI register read
	signal DoReadPhDacq : std_logic;	-- asserted when read from PHDACQ register occurs
	signal DoReadPhDacqA, DoReadPhDacqB, DoReadPhDacqC : std_logic;	 -- to synchronise

	signal LatchedVELCOUNT : std_logic_vector(15 downto 0);	-- need to latch when VELDACQ is set
	signal LatchVelDacq	: std_logic;	-- latch VELDACQ high from PE and reset when SPI register read
	signal DoReadVelDacq : std_logic;	-- asserted when read from PHDACQ register occurs
	signal DoReadVelDacqA, DoReadVelDacqB, DoReadVelDacqC : std_logic;	 -- to synchronise
	
	
	signal LatchH1PECINWIDTH	: std_logic;	-- latch H1PECINWIDTH and reset when SPI register read
	signal DoReadH1PECINWIDTH 	: std_logic;	-- asserted when read from PHDACQ register occurs
	signal DoReadH1PECINWIDTHA, DoReadH1PECINWIDTHB, DoReadH1PECINWIDTHC : std_logic;	 -- to synchronise	
	
	
	
	signal SRAMRdDataLatched : std_logic_vector(7 downto 0);	
	signal SRAMDoRead : std_logic;

	
	
	signal LatchTOFERROR	: std_logic;	
	signal DoReadTOFERROR 	: std_logic;	-- asserted when read from PHDACQ register occurs
	signal DoReadTOFERRORA, DoReadTOFERRORB, DoReadTOFERRORC : std_logic;	 -- to synchronise	
	
	
	signal DumpDoRead	: std_logic;
	signal DumpData	: 	std_logic_vector(7 downto 0);	

	signal DoReadRBSEDIR : std_logic;
	signal DoReadRBSEDIRA, DoReadRBSEDIRB, DoReadRBSEDIRC : std_logic;

	-- used when receiving a print data packet
	signal temp : std_logic_vector(15 downto 0);
	signal H1PDLYA, H1PDLYB : std_logic_vector(23 downto 0);
	signal H1LASTPRINTA, H1LASTPRINTB : std_logic;
	signal H1TAGA, H1TAGB : std_logic_vector(7 downto 0);
	signal H1REVERSEA, H1REVERSEB : std_logic;
	signal s_H1BUFREQA, H1BUFREQA, H1BUFREQB, H1BUFREQC : std_logic;
	signal H1HEIGHTA, H1HEIGHTB : std_logic_vector(7 downto 0);
	 
	-- delay control written signal to match valid data outputs
--t	signal ControlWrittenA : std_logic;	
	
		-- raster pointer for download
	signal EndRaster : std_logic_vector(21 downto 0);	-- msb is the overflow bit
	constant initEndRaster : std_logic_vector(21 downto 0) := CONV_STD_LOGIC_VECTOR(524287, 22); -- 0x80000 - 1    524287  262143

	signal s_SRAMWrAddr	: std_logic_vector(21 downto 0);
	signal DepWrAddr : std_logic_vector(9 downto 0);	-- which 16 byte chunk of dependency table, bit 9 is overflow
	signal s_RasterSelWrAddr : std_logic_vector(13 downto 0);
	signal tiDoWrite, TiSRAMWrite, TiSRAMWriteA, TiSRAMWriteB, TiSRAMWriteC : std_logic;
	signal rmDoWrite, rmSRAMWrite, rmSRAMWriteA, rmSRAMWriteB, rmSRAMWriteC : std_logic;
	signal depDoWrite, depSRAMWrite, depSRAMWriteA, depSRAMWriteB, depSRAMWriteC : std_logic;
	signal RASOOM : std_logic;		-- 1 = raster out of memory
	signal RASVERR : std_logic;		-- 1 = raster version not 
	signal SetRASVERR : std_logic;	-- 1 to set RASVERR
	signal ClrRASVERR : std_logic;	-- 1 to clear RASVERR

	signal BUFFERNOa : std_logic_vector(2 downto 0);
	
	signal REVCHECK : std_logic_vector(7 downto 0);
	signal crcStrobe : std_logic;
	signal crcReset : std_logic;
	signal crcStrobeA, crcStrobeB, crcStrobeC : std_logic;

	signal pdLatestStrokeA	: std_logic_vector(13 downto 0);
	
	signal writecount : std_logic_vector(11 downto 0);		-- used to count bytes writing raster to memories
	signal writecount1 : std_logic_vector(20 downto 0);
	
	
	constant WRITECOUNT_CONSTS_STOP : std_logic_vector(11 downto 0) := "000000001000";  --8
	constant WRITECOUNT_DEP_START : std_logic_vector(11 downto 0) := "000000000001";
	signal Strategy : std_logic_vector(7 downto 0);			-- used to remember strategy in raster being downloaded
	signal Printed : std_logic_vector(7 downto 0);			-- used to remember printed drops in raster being downloaded
	
	signal spi_dcr_enable : std_logic_vector(1 downto 0);						-- dcr_enable synchronised to spi clock
	
	
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
			Strategy <= (others=>'0');
			Printed <= (others=>'0');			
			pdLeft	<= (others=>'0');
			pdRight	<= (others=>'0');
			pdTop <= (others=>'0');
			pdBottom <= (others=>'0');
			s_SRAMWrAddr <= (others=>'0');
			SRAMWrData <= (others=>'0');			
			DoWrite <= '0';
			SRAMIsWrite <= '0';
			s_H1BUFREQA <= '0';
			crcStrobe <= '0';
			crcReset <= '0';
			SetRASVERR <= '0';
			ClrRASVERR <= '0';		
			writecount1 <= (others=>'0');			
      elsif rising_edge(spi_sclk) and (byteStrobe='1') then		
         debugLedOut <=  inShift(3 downto 0);
			LatchReadParams <= '0';
			DoWrite <= '0';		
			SetRASVERR <= '0';
			ClrRASVERR <= '0';
			case state is
				when Command =>
					-- command byte now loaded
					if inShift=cmdWriteParam then
						state <= WrLengthL;
					elsif inShift=cmdReadParam then	
						state <= RdLengthL;
					elsif inShift=cmdImageData then
						SRAMIsWrite <= '1';
						state <= PdTag;
					elsif inShift=cmdChargeTable then
						SRAMIsWrite <= '1';
						state <= RstrTblIndex;
					elsif inShift=cmdRstRasTbl then
						EndRaster <= initEndRaster;
						s_RasterSelWrAddr <= (others=>'0');
						depWrAddr <= (others=>'0');
						ClrRASVERR <= '1';
						state <= RstrReset;
					elsif inShift=cmdRasMapTbl then
						state <= DldRasMapFirst;
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
					-- write param, length low byte now loaded
					cntlength(7 downto 0) <= inShift;
					state <= WrLengthM;
				
				when WrLengthM =>
					-- write param, length high byte now loaded
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
					-- write param, length low byte now loaded
					LatchReadParams <= '1';
					cntlength(7 downto 0) <= inShift;
					state <= RdLengthM;
				
				when RdLengthM =>
					-- write param, length high byte now loaded
					cntlength(15 downto 8) <= inShift;
					state <= RdBase;
					
				when RdBase =>
					-- write param, base address now loaded
					address <= CONV_INTEGER(inShift);
					crcReset <= '1';
					state <= RdPad;
				
				when RdPad =>
					-- padding to do read
					cntlength <= cntlength - 1;
					address <= address + 1;
					crcReset <= '0';
					crcStrobe <= '1';
					state <= RdData;
				
				when RdData =>
					-- read data now loaded
					cntlength <= cntlength - 1;
					address <= address + 1;
					if address < 4 then
						crcStrobe <= '1';
					else
						crcStrobe <= '0';
					end if;
					if cntlength=0 then
						state <= Finished;
					end if;
					
				when DumpRdPad =>
--t					DumpAddr <= DumpAddr + 1;
					state <= DumpRdData;
					
				when DumpRdData =>
--t					DumpAddr <= DumpAddr + 1;					
					
					
            when PdTag =>
					H1TAGA <= inShift;
					s_H1BUFREQA <= '1';
					state <= PdTagPad;
					
				when PdTagPad =>
					s_H1BUFREQA <= '0';
					state <= PdFlags;

				when PdFlags =>
					-- flags
					if spi_dcr_enable(0)='0' then
						s_SRAMWrAddr <= "000" & BUFFERNOa(1 downto 0) & "11111111111110" & "010";	-- init in case of write data packet
					else
						s_SRAMWrAddr <= "0000000000000000000010";		-- always write to first stroke if dcr 22bits
					end if;
					SRAMWrData <= inShift;
					H1LASTPRINTA <= inShift(3);				-- no more prints
					H1REVERSEA <= inShift(1);
					state <= PdHeight;

				when PdHeight =>
					H1HEIGHTA <= inShift;
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdMaxPrtDots;
					
				when PdMaxPrtDots =>
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdCompensation;
					
				when PdCompensation =>
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdWidth0;
					
				when PdWidth0 =>
				 	-- width lsb
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdWidth1;

				when PdWidth1 =>
				 	-- width middle
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdWidth2;

				when PdWidth2 =>
					-- width msb
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdDly0;

				when PdDly0 =>
					-- delay lsb
					temp(7 downto 0) <= inShift;
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdDly1;

				when PdDly1 => 
					-- delay middle
					temp(15 downto 8) <= inShift;
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdDly2;

				when PdDly2 =>
					-- delay msb
					H1PDLYA <= inShift & temp;
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdRdLeftL;
										
				when PdRdLeftL => 
					-- left LSB
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdRdLeftM;
					
				when PdRdLeftM => 
					-- left MSB
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdRdRightL;
					
				when PdRdRightL => 
					-- right LSB
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdRdRightM;
					
				when PdRdRightM => 
					-- right MSB
					SRAMWrData <= inShift;
					s_SRAMWrAddr <= s_SRAMWrAddr + 1;
					state <= PdLeftL;

				when PdLeftL => 
					-- left LSB
					SRAMWrData <= H1TAGA;
					-- set up write pointer for start of data
					if spi_dcr_enable(0)='0' then
						s_SRAMWrAddr <= "000" & BUFFERNOa(1 downto 0) & "11111111111110" & "000";
					else
						-- dummy write into unused location
						s_SRAMWrAddr <= (others=>'0');
					end if;
					pdLeft(7 downto 0) <= inShift;
					state <= PdLeftM;
					
				when PdLeftM => 
					-- left MSB
					pdLeft(15 downto 8) <= inShift;
					state <= PdRightL;
					
				when PdRightL => 
					-- right LSB
					pdRight(7 downto 0) <= inShift;
					state <= PdRightM;
					
				when PdRightM => 
					-- right MSB
					pdRight(15 downto 8) <= inShift;
					state <= PdTopL;

				when PdTopL =>
					-- top LSB
					pdTop(7 downto 0) <= inShift;
					state <= PdTopM;
					
				when PdTopM => 
					-- top MSB
					pdTop(15 downto 8) <= inShift;
					state <= PdBottomL;
					
				when PdBottomL => 
					-- bottom LSB
					pdBottom(7 downto 0) <= inShift;
					state <= PdBottomM;
					
				when PdBottomM => 
					-- bottom MSB
					-- fix up top and bottom to suit PE (hard-coded to start at 0)
					-- this means that the software does not need to change to use a zero bottom offset
					--  bottom is hard-coded to 0
					--  top has the SPI bottom subtracted
					pdBottom <= (others=>'0');
					pdTop(15 downto 5) <= (others=>'0');
					pdTop(4 downto 0) <= pdTop(4 downto 0) - ("0" & pdBottom(3 downto 0));
					--pdBottom(15 downto 8) <= inShift;
					if spi_dcr_enable(0)='0' then
						-- hard-code bottom start to 0
						s_SRAMWrAddr <= "000" & BUFFERNOa(1 downto 0) & pdLeft(13 downto 0) & "000"; -- pdBottom(2 downto 0); 
					else
						s_SRAMWrAddr <= (others=>'0');
					end if;
					state <= PdDataFirst;
		
				when PdDataFirst =>
					-- wait for data
					SRAMWrData(7) <= inShift(0);
					SRAMWrData(6) <= inShift(1);
					SRAMWrData(5) <= inShift(2);
					SRAMWrData(4) <= inShift(3);
					SRAMWrData(3) <= inShift(4);
					SRAMWrData(2) <= inShift(5);
					SRAMWrData(1) <= inShift(6);
					SRAMWrData(0) <= inShift(7);
					state <= PdData;
					
				when PdData=>
					-- data: write current data to address and increment address
					SRAMWrData(7) <= inShift(0);
					SRAMWrData(6) <= inShift(1);
					SRAMWrData(5) <= inShift(2);
					SRAMWrData(4) <= inShift(3);
					SRAMWrData(3) <= inShift(4);
					SRAMWrData(2) <= inShift(5);
					SRAMWrData(1) <= inShift(6);
					SRAMWrData(0) <= inShift(7);
					if s_SRAMWrAddr(2 downto 0)=PdTop(2 downto 0) then
						-- new column
						if 	(s_SRAMWrAddr(16 downto 3)=pdRight(13 downto 0)) or 
							(s_SRAMWrAddr(16 downto 3)="11111111111101") then		-- data overflow
							-- all data received - stop
							state <= Finished;
						elsif spi_dcr_enable(0)='0' then
							s_SRAMWrAddr(16 downto 3) <= s_SRAMWrAddr(16 downto 3) + 1;
							s_SRAMWrAddr(2 downto 0) <= pdBottom(2 downto 0);
						end if;
					elsif spi_dcr_enable(0)='0' then
						-- new byte in existing column
						s_SRAMWrAddr(2 downto 0) <= s_SRAMWrAddr(2 downto 0) + 1;
					end if;

				when RstrReset =>
					-- clear table
					s_RasterSelWrAddr <= s_RasterSelWrAddr + 1;
					RasterSelWrData <= (others=>'0');

				when DldRasMapFirst =>
					-- clear table
					s_RasterSelWrAddr <= (others=>'0');
					RasterSelWrData(7 downto 0) <= inShift;
					state <= DldRasMap;

				when DldRasMap =>
					-- clear table
					s_RasterSelWrAddr <= s_RasterSelWrAddr + 1;
					RasterSelWrData(7 downto 0) <= inShift;

				when RstrTblIndex =>
					s_RasterSelWrAddr <= "000000" & InShift;
					state <= RstrPrinted;
				
				when RstrPrinted  =>
					-- remember the number of printed drops
					SRAMWrData <= inShift;
					Printed <= inShift;
					-- set SRAM write address to end of previous raster + 1
					if EndRaster(0)='1' then
						s_SRAMWrAddr <= EndRaster + 1;	
					else
						-- need to add 2 to ensure the result is word aligned
						s_SRAMWrAddr <= EndRaster + 2;	
					end if;
					state <= RstrActual;
					writecount1 <= (others => '0');
					
				when RstrActual  =>
					-- remember the number of actual drops
					SRAMWrData <= inShift;
					if RASOOM='0' then
						s_SRAMWrAddr <= s_SRAMWrAddr + 1;
						EndRaster <= s_SRAMWrAddr + 1;
						RasterSelWrData <= DepWrAddr(8 downto 0) & s_SRAMWrAddr(20 downto 1) & Inshift;
					else
						RasterSelWrData <= (others=>'0');
					end if;
					state <= RstrAhead;
				   writecount1 <= writecount1 + 1;
				when RstrAhead  =>
					-- ahead: write to sram 
					SRAMWrData <= inShift;
					if RASOOM='0' then
						s_SRAMWrAddr <= s_SRAMWrAddr + 1;
						EndRaster <= s_SRAMWrAddr + 1;
					end if;
					writecount1 <= writecount1 + 1;
					state <= RstrBehind;
					
				when RstrBehind  =>
					-- behind: write to sram 
					SRAMWrData <= inShift;
					if RASOOM='0' then
						s_SRAMWrAddr <= s_SRAMWrAddr + 1;
						EndRaster <= s_SRAMWrAddr + 1;
					end if;
					writecount1 <= writecount1 + 1;
					state <= RstrStrategy;
					
				when RstrStrategy  =>
					-- strategy: write to sram and remember
					SRAMWrData <= inShift;
					Strategy <= inShift;
					if RASOOM='0' then
						s_SRAMWrAddr <= s_SRAMWrAddr + 1;
						EndRaster <= s_SRAMWrAddr + 1;
					end if;
					writecount <= (others=>'0');
					writecount1 <= writecount1 + 1;
					state <= RstrConsts;
					
				when RstrConsts  =>
					-- the rest of the constants: write to sram 
					SRAMWrData <= inShift;
					if RASOOM='0' then
						s_SRAMWrAddr <= s_SRAMWrAddr + 1;
						EndRaster <= s_SRAMWrAddr + 1;
					end if;
					writecount1 <= writecount1 + 1;
					if writecount = WRITECOUNT_CONSTS_STOP then
						if inShift > MaxRasterVersion then
							SetRASVERR <= '1';
						end if;
					
						-- write 9 bytes to the SRAM to take us to the end of the constants
						if Strategy >= 2 then
							-- strategy vdd - copy dependencies to internal memory
							s_RasterSelWrAddr(13 downto 0) <= (DepWrAddr(9 downto 0) & "0000") - 1; -- need to delay by one byte time
							RasterSelWrData(7 downto 0) <= inShift;
							writecount <= WRITECOUNT_DEP_START;
							state <= RstrDeps;
						else
							-- strategy vgd or no vgd, put the rest in SRAM
							state <= RstrData;
						end if;
					else
						writecount <= writecount + 1;
					end if;
					
				when RstrDeps  =>
					s_RasterSelWrAddr <= s_RasterSelWrAddr + 1;
					RasterSelWrData(7 downto 0) <= inShift;
					-- dependency block: printed_drops * 16 bytes
					if writecount = Printed & "0000" then
						-- remember where the next raster goes (MSB is overflow flag)
						DepWrAddr <= s_RasterSelWrAddr(13 downto 4)+1;
					state <= RstrData;
					else
						writecount <= writecount + 1;
						writecount1 <= writecount1 + 1;
					end if;
				
				when RstrData=>
					-- data: write current data to address and increment address
					SRAMWrData <= inShift;
					if RASOOM='0' then
						s_SRAMWrAddr <= s_SRAMWrAddr + 1;
						EndRaster <= s_SRAMWrAddr + 1;
						writecount1 <= writecount1 + 1;
						writecount <= writecount+1;
						if writecount1 < 20 then
						    writecount <= b"000000000000";
						end if;
					end if;
					-- writing stops when packet ends					
					
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
	
	
	
	
	
	process (state)
	begin
		case state is
			when RstrReset =>
				rmDoWrite <= '1';
			when DldRasMap =>
				rmDoWrite <= '1';
			when others=>
				rmDoWrite <= '0';
		end case;
	end process;

	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			rmSRAMWrite <= '0';
		elsif rising_edge(spi_sclk) then
			rmSRAMWrite <= byteStrobe and rmDoWrite;
		end if;
	end process;

	-- synchronise TiSRAMWrite to clock and remember previous values so we can see edge
	process (clk, reset)
	begin
		if reset='1' then
			rmSRAMWriteA <= '0';
			rmSRAMWriteB <= '0';
			rmSRAMWriteC <= '0';
		elsif rising_edge(clk) then
			rmSRAMWriteA <= rmSRAMWrite;
			rmSRAMWriteB <= rmSRAMWriteA;
			rmSRAMWriteC <= rmSRAMWriteB;
		end if;
	end process;

	-- generate rm SRAM write strobe: assert on the rising edge of SRAMWrite and de-assert when SRAMStart asserted
	process (clk, reset)
	begin
		if reset='1' then
			RasMapWren <= '0';
		elsif rising_edge(clk) then
			RasMapWren <= rmSRAMWriteB and not rmSRAMWriteC;
		end if;
	end process;

	-- table memory write enable
	process (state)
	begin
		case state is
			when RstrReset =>
				tiDoWrite <= '1';
			when RstrActual =>
				tiDoWrite <= '1';
			when others=>
				tiDoWrite <= '0';
		end case;
	end process;

	-- generate a strobe that indicates a write to Table Index RAM should be performed
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			TiSRAMWrite <= '0';
		elsif rising_edge(spi_sclk) then
			TiSRAMWrite <= byteStrobe and tiDoWrite;
		end if;
	end process;

	-- synchronise TiSRAMWrite to clock and remember previous values so we can see edge
	process (clk, reset)
	begin
		if reset='1' then
			TiSRAMWriteA <= '0';
			TiSRAMWriteB <= '0';
			TiSRAMWriteC <= '0';
		elsif rising_edge(clk) then
			TiSRAMWriteA <= TiSRAMWrite;
			TiSRAMWriteB <= TiSRAMWriteA;
			TiSRAMWriteC <= TiSRAMWriteB;
		end if;
	end process;

	-- generate Ti SRAM write strobe: assert on the rising edge of SRAMWrite and de-assert when SRAMStart asserted
	process (clk, reset)
	begin
		if reset='1' then
			TableIndexWren <= '0';
		elsif rising_edge(clk) then
			TableIndexWren <= TiSRAMWriteB and not TiSRAMWriteC;
		end if;
	end process;



	-- dependency memory write enable
	process (state)
	begin
		case state is
			when RstrReset =>
				depDoWrite <= '1';
			when RstrDeps =>
				depDoWrite <= '1';
			when others=>
				depDoWrite <= '0';
		end case;
	end process;

	-- generate a strobe that indicates a write to dependency RAM should be performed
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			DepSRAMWrite <= '0';
		elsif rising_edge(spi_sclk) then
			DepSRAMWrite <= byteStrobe and depDoWrite;
		end if;
	end process;

	-- synchronise DepSRAMWrite to clock and remember previous values so we can see edge
	process (clk, reset)
	begin
		if reset='1' then
			DepSRAMWriteA <= '0';
			DepSRAMWriteB <= '0';
			DepSRAMWriteC <= '0';
		elsif rising_edge(clk) then
			DepSRAMWriteA <= DepSRAMWrite;
			DepSRAMWriteB <= DepSRAMWriteA;
			DepSRAMWriteC <= DepSRAMWriteB;
		end if;
	end process;

	-- generate Dep SRAM write strobe: assert on the rising edge of SRAMWrite and de-assert when SRAMStart asserted
	process (clk, reset)
	begin
		if reset='1' then
			DepWren <= '0';
		elsif rising_edge(clk) then
			DepWren <= DepSRAMWriteB and not DepSRAMWriteC;
		end if;
	end process;



	process (state, s_SRAMWrAddr, PdTop, pdRight, BUFFERNOa, spi_dcr_enable)
	begin
		case state is
			--when PdTagPad => pdDoWrite <= not BUFFERNOa(2);
			when PdFlags => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);				
			when PdHeight => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdMaxPrtDots => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);		
			when PdCompensation => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);		
			when PdWidth0 => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdWidth1 => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdWidth2 => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdDly0 => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);				
			when PdDly1 => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);				
			when PdDly2 => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);				
			when PdRdLeftL => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdRdLeftM => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdRdRightL => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdRdRightM => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
			when PdLeftL => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);				
			when PdDataFirst => pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);	
				
			when PdData =>
				if s_SRAMWrAddr(16 downto 3)=pdRight(13 downto 0) then
					if s_SRAMWrAddr(2 downto 0)/=PdTop(2 downto 0) then
						pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);			
					else
						pdDoWrite <= '0';
					end if;
				else
					pdDoWrite <= not BUFFERNOa(2) or spi_dcr_enable(0);				
				end if;

			when RstrPrinted=>
				pdDoWrite <= '1';
			when RstrActual=>
				pdDoWrite <= '1';
			when RstrAhead =>
				pdDoWrite <= '1';
			when RstrBehind =>
				pdDoWrite <= '1';
			when RstrStrategy => 
				pdDoWrite <= '1';
			when RstrConsts =>
				pdDoWrite <= '1';
			when RstrData=>
				pdDoWrite <= '1';
				
			when SRAMRdPad =>
				pdDoWrite <= '1';
				
			when SRAMRdDataRest =>
				pdDoWrite <= '1';
				
			when SRAMWrDataFirst =>
				pdDoWrite <= '1';
				
			when SRAMWrDataRest =>
				pdDoWrite <= '1';
				
			when others => 
				pdDoWrite <= '0';
				
		end case;
	end process;

	-- generate a strobe that indicates a write to SRAM should be performed
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			SRAMWrite <= '0';
		elsif rising_edge(spi_sclk) then
			SRAMWrite <= byteStrobe and pdDoWrite;
		end if;
	end process;

	-- synchronise SRAMWrite to clock and remember previous values so we can see edge
	process (clk, reset)
	begin
		if reset='1' then
			SRAMWriteA <= '0';
			SRAMWriteB <= '0';
			SRAMWriteC <= '0';
		elsif rising_edge(clk) then
			SRAMWriteA <= SRAMWrite;
			SRAMWriteB <= SRAMWriteA;
			SRAMWriteC <= SRAMWriteB;
		end if;
	end process;

	-- generate SRAM write strobe: assert on the rising edge of SRAMWrite and de-assert when SRAMStart asserted
	process (clk, reset)
	begin
		if reset='1' then
			SRAMStrobe <= '0';
		elsif rising_edge(clk) then
			if (SRAMWriteB='1') and (SRAMWriteC='0') then	
				SRAMStrobe <= '1';
			elsif SRAMStart='1' then
				SRAMStrobe <= '0';
			end if;
		end if;
	end process;
	
	
	
	
	
		-- register last stroke written for comparison with stroke to be printed
	-- produce a tick with each stroke written
	process (clk, reset)
	begin
		if reset='1' then
			pdLatestStroke <= (others=>'0');
			pdLatestStrokeA <= (others=>'0');
			pdStroke <= '0';
		elsif rising_edge(clk) then
			pdStroke <= '0';
			
			-- change clock domain of sram address.  Register has at least SRAM access cycle
			-- to settle (200ns) so no need of double register
			pdLatestStrokeA <= s_SRAMWrAddr(16 downto 3);

			-- when SRAM cycle finishes make a tick on pdStroke if it was the end of a stroke
			-- and update latest stroke			
--			if SRAMNotStrobe='1' then
				-- fake for DCR to satisfy buffer manager
--				pdStroke <= '1';
			if (SRAMDone='1') and ((spi_dcr_enable(0)='1') or (
				(s_SRAMWrAddr(20 downto 19)="00") and
				(s_SRAMWrAddr(16 downto 4)/="1111111111111") and
				-- s_SRAMWrAddr(3) is don't care
				(s_SRAMWrAddr(2 downto 0)=pdTop(2 downto 0)) and
				(state /= PdFlags)
				)) then
					pdLatestStroke <= pdLatestStrokeA;
					pdStroke <= '1';
			end if;
		end if;
	end process;

	-- generate print data updated strobe after pdStroke of last stroke
	process (clk, reset)
	begin
		if reset='1' then
			pdUpdated <= '0';
		elsif rising_edge(clk) then
--			if SRAMNotLastStrobe='1' then
				-- fake for DCR to satisfy buffer manager
--				pdUpdated <= pdIsLast;
			if (pdStroke='1') and  ((spi_dcr_enable(0)='1') or (
				(s_SRAMWrAddr(16 downto 4)/="1111111111111") and			
				(s_SRAMWrAddr(16 downto 3)=pdRight(13 downto 0)) and
				(state /= PdFlags)                               )				                                                
							            ) then
				pdUpdated <= '1';  --pdIsLast
			else
				pdUpdated <= '0';
			end if;
		end if;
	end process;	
	
	
	
	
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
			wr_paramsA(addr_PUMPPB0) <= CONV_STD_LOGIC_VECTOR(40, 8);  --32
			wr_paramsA(addr_PUMPRATE) <= CONV_STD_LOGIC_VECTOR(1, 8);  --25
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
			wr_params(addr_PUMPPB0) <= CONV_STD_LOGIC_VECTOR(3, 8);  --32
			wr_params(addr_PUMPRATE) <= CONV_STD_LOGIC_VECTOR(25, 8);
		elsif rising_edge(clk) then
			if (DoWriteB='1') and (DoWriteC='0') then
				copywrparams: for i in wr_params'range loop
					wr_params(i) <= wr_paramsA(i);
				end loop copywrparams;
			end if;
		end if;
	end process;

	-- delay the SPI tag strobe by a bit time to let the tag synchronise
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			H1BUFREQA <= '0';
		elsif rising_edge(spi_sclk) then
			H1BUFREQA <= s_H1BUFREQA;
		end if;
	end process;

	-- sync parameters
	process (clk, reset)
	begin
		if reset='1' then
			H1PDLYB <= (others=>'0');
			H1PDLY <= (others=>'0');
			H1TAGB <= (others=>'0');
			H1TAG <= (others=>'0');
			H1LASTPRINT <= '0';
			H1LASTPRINTB <= '0';
			H1REVERSE <= '0';
			H1REVERSEB <= '0';
			H1BUFREQ <= '0';
			H1BUFREQB <= '0';
			H1BUFREQC <= '0';
		elsif rising_edge(clk) then
			H1PDLYB <= H1PDLYA;
			H1PDLY <= H1PDLYB;
			H1TAGB <= H1TAGA;
			H1TAG <= H1TAGB;
			H1LASTPRINTB <= H1LASTPRINTA;
			H1LASTPRINT <= H1LASTPRINTB;
			H1REVERSEB <= H1REVERSEA;
			H1REVERSE <= H1REVERSEB;
			H1BUFREQB <= H1BUFREQA;
			H1BUFREQC <= H1BUFREQB;
			H1BUFREQ <= (not H1BUFREQC) and H1BUFREQB;
		end if;
	end process;


	INTCTRL_spi		<= wr_params(addr_INTCTRL)(3 downto 0);
	CONTPRTENA 		<= wr_params(addr_CONTPRTENA)(2 downto 0);
	CONTPRTMODE 	<= wr_params(addr_CONTPRTMODE)(0);
	CONTPRT 		<= wr_params(addr_CONTPRTB3) & wr_params(addr_CONTPRTB2) & wr_params(addr_CONTPRTB1) & wr_params(addr_CONTPRTB0);
--	SESTAB 			<= wr_params(addr_SESTAB)(0);
	SESEL 			<= wr_params(addr_SESEL)(0);
	DIRSEL 			<= wr_params(addr_DIRSEL)(1 downto 0);
	H1PENA_spi		<= wr_params(addr_H1PENA);
	
	
	PUMPEN 			<= wr_params(addr_PUMPEN)(0);
	PUMPOPENLOOP	<= wr_params(addr_PUMPEN)(1);
	PUMPREVERSE		<= wr_params(addr_PUMPEN)(3);
	PRESSET			<= wr_params(addr_PRESSETB1)(1 downto 0) & wr_params(addr_PRESSETB0);
   PWMDUTY 		<= wr_params(addr_PWMDUTYB1) & wr_params(addr_PWMDUTYB0);
	
   PHASENA 		   <= wr_params(addr_PHASENA)(0);	
	PHASCOMP 		<= wr_params(addr_PHASCOMPB1)(4 downto 0) & wr_params(addr_PHASCOMPB0);
	PRINTPHAS 		<= wr_params(addr_PRINTPHAS);
	
   DROPRATE 		<= wr_params(addr_DROPRATEB1) & wr_params(addr_DROPRATEB0);	
	MODAMP 			<= wr_params(addr_MOD2AMPB1) & wr_params(addr_MOD2AMPB0);
	PHASECHARG 		<= wr_params(addr_PHASECHARGB1)(1 downto 0) & wr_params(addr_PHASECHARGB0);
	VELCHARG 		<= wr_params(addr_VELCHARGB1)(1 downto 0) & wr_params(addr_VELCHARGB0);	
	PHASDROPS 		<= wr_params(addr_PHASDROPS);
	VELDROPS 		<= wr_params(addr_VELDROPS);
	
	EHT_CURR_TWO_TRIP <= wr_params(addr_EHTCURR2TRIPB1)(1 downto 0) & wr_params(addr_EHTCURR2TRIPB0);
	PUMPP			<= wr_params(addr_PUMPPB1) & wr_params(addr_PUMPPB0);
	PUMPI			<= wr_params(addr_PUMPIB1) & wr_params(addr_PUMPIB0);
	PUMPD			<= wr_params(addr_PUMPDB1) & wr_params(addr_PUMPDB0);
	PUMPRATE		<= wr_params(addr_PUMPRATE);	

--	CHARGE 			<= wr_params(addr_CHARGEB1)(1 downto 0) & wr_params(addr_CHARGEB0);
	CHARGE 			<= wr_params(addr_CHARGEB1)(4 downto 0) & wr_params(addr_CHARGEB0);
--	EHT 			<= wr_params(addr_EHTB1)(1 downto 0) & wr_params(addr_EHTB0);	
	EHT 			<= wr_params(addr_EHTB1)(4 downto 0) & wr_params(addr_EHTB0);
--	TRIP 			<= wr_params(addr_TRIPB1)(1 downto 0) & wr_params(addr_TRIPB0);	
	STROBEW 		<= wr_params(addr_STROBEW);
	STROBEPH 		<= wr_params(addr_STROBEPH);
	VELENA 			<= wr_params(addr_VELENA)(1 downto 0);
	VELCOMP 		<= wr_params(addr_VELCOMPB1)(1 downto 0) & wr_params(addr_VELCOMPB0);
	INKVALVES 		<= wr_params(addr_INKVALVES);
	HEADVALVES 		<= wr_params(addr_HEADVALVES)(5 downto 0);
   VALVERRACK 		<= wr_params(addr_VALVERRACK)(0);
	
	QDACOFF			<= wr_params(addr_QDACOFFB1)(1 downto 0) & wr_params(addr_QDACOFFB0);
	PDACOFF			<= wr_params(addr_PDACOFFB1)(1 downto 0) & wr_params(addr_PDACOFFB0);
	TOF 			<= wr_params(addr_TOFB1) & wr_params(addr_TOFB0);
	MANUALGO		<= wr_params(addr_MANUALGO)(0);    
	CONTPRTLIM	 	<= wr_params(addr_CONTPRTLIMB2) & wr_params(addr_CONTPRTLIMB1) & wr_params(addr_CONTPRTLIMB0);
	IGNORETOOFAST 	<= wr_params(addr_IGNORETOOFAST)(0);    
	OVERLAP_ABORTS	<= wr_params(addr_IGNORETOOFAST)(1);    
	GUTPUMP			<= wr_params(addr_GUTPUMPB1) & wr_params(addr_GUTPUMPB0);
	GUTPUMPP		<= wr_params(addr_GUTPUMPPB1) & wr_params(addr_GUTPUMPPB0);
	GUTPUMPI		<= wr_params(addr_GUTPUMPIB1) & wr_params(addr_GUTPUMPIB0);
	GUTPUMPD		<= wr_params(addr_GUTPUMPDB1) & wr_params(addr_GUTPUMPDB0);
	GUTPUMPRATE		<= wr_params(addr_GUTPUMPRATE);	
   TESTCTRL		   <= wr_params(addr_TESTCTRL);
   EHTGATE			<= wr_params(addr_EHTGATE)(0);	
   CSBCONF			<= wr_params(addr_CSBCONF);

	MEDIAWIDTH	 	<= wr_params(addr_MWIDTHB2) & wr_params(addr_MWIDTHB1) & wr_params(addr_MWIDTHB0);
--t	
	DCR_ENABLE		<= "00";--wr_params(addr_DCR_ENABLE)(1 downto 0);
	
	HV_ENABLE		<= wr_params(addr_HVENABLE);
	
	
	
	-- latch PHDACQ
	process (clk, reset)
	begin
		if reset='1' then
			LatchedPHASEPROF <= (others=>'0');
			LatchPhDacq <= '0';
		elsif rising_edge(clk) then
			if PHDACQ='1' then
				-- print engine signalling, so set
				LatchPhDacq <= '1';
				LatchedPHASEPROF <= PHASEPROF;
			elsif (DoReadPhDacqB='1') and (DoReadPhDacqC='0') then 
				-- SPI register read, so clear
				LatchPhDacq <= '0';
			end if;
		end if;
	end process;
	
	-- latch VELDACQ
	process (clk, reset)
	begin
		if reset='1' then
			LatchedVELCOUNT <= (others=>'0');
			LatchVelDacq <= '0';
		elsif rising_edge(clk) then
			if VELDACQ='1' then
				-- print engine signalling, so set
				LatchedVELCOUNT <= VELCOUNT;
				LatchVelDacq <= '1';
			elsif (DoReadVelDacqB='1') and (DoReadVelDacqC='0') then 
				-- SPI register read, so clear
				LatchVelDacq <= '0';
			end if;
		end if;
	end process;	
	
	
	
	
	-- latch TOFERROR
	process (clk, reset)
	begin
		if reset='1' then
			LatchTOFERROR <= '0';
		elsif rising_edge(clk) then
			if TOFERROR='1' then
				LatchTOFERROR <= '1';
			elsif (DoReadTOFERRORB='1') and (DoReadTOFERRORC='0') then 
				-- SPI register read, so clear
				LatchTOFERROR <= '0';
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
	process (clk, reset)
	begin
		if reset='1' then
			crcStrobeA	<= '0';
			crcStrobeB	<= '0';
			crcStrobeC	<= '0';
		elsif rising_edge(clk) then
			crcStrobeA	<= crcStrobe;
			crcStrobeB	<= crcStrobeA;
			crcStrobeC	<= crcStrobeB;		
		end if;
	end process;
	
	-- sample parameters on read
	process (clk, reset, spi_nss)
	begin
		if reset='1' then
			clrrdparams: for i in rd_params'range loop
				rd_params(i) <= (others=>'0');
			end loop clrrdparams;
		elsif spi_nss='1' then
			rd_params(addr_REVCHECK) 	<= (others=>'1');			
		elsif rising_edge(clk) then
			if (crcStrobeC='1') and (crcStrobeB='0') then
				rd_params(addr_REVCHECK) 	<= REVCHECK;
			elsif (LatchReadParamsC='0') and (LatchReadParamsB='1') then
				rd_params(addr_PETYPE) 		<= CONV_STD_LOGIC_VECTOR(PETYPE, 8);
				rd_params(addr_PEVER) 		<= CONV_STD_LOGIC_VECTOR(PEVER, 8);
				rd_params(addr_PEMAJREV) 	<= CONV_STD_LOGIC_VECTOR(PEMAJREV, 8);
				rd_params(addr_PEMINREV) 	<= CONV_STD_LOGIC_VECTOR(PEMINREV, 8);
				rd_params(addr_RBPEC)		<= "000000" & RBPEC;
				rd_params(addr_RBSENC)		<= "000000" & RBSENC;
				rd_params(addr_RBSEDIR)		<= "0000" & RBSEDIR;
--t				rd_params(addr_FMETLB)		<= FMET(7 downto 0);
--t				rd_params(addr_FMETHB)		<= FMET(15 downto 8);
--t				rd_params(addr_H1TOOCLOS)	<= ('0', '0', '0', '0', '0', '0', '0', LatchH1TOOCLOS);
--t				rd_params(addr_H1TOOFAST)	<= ('0', '0', '0', '0', '0', '0', '0', LatchH1TOOFAST);
--t				rd_params(addr_H1TOONEAR)	<= ('0', '0', '0', '0', '0', '0', '0', LatchH1TOONEAR);
--t				rd_params(addr_H1OVERSPEED)	<= ('0', '0', '0', '0', '0', '0', '0', LatchH1OSPEED);
				rd_params(addr_PRESRBB0)	<= PRESRB(7 downto 0);
				rd_params(addr_PRESRBB1)	<= PRESRB(15 downto 8);
				rd_params(addr_RPMB0)		<= RPM(7 downto 0);
				rd_params(addr_RPMB1)		<= RPM(15 downto 8);
--t				rd_params(addr_PUMPCURRB0)	<= PUMPCURR(7 downto 0);
--t				rd_params(addr_PUMPCURRB1)	<= PUMPCURR(15 downto 8);
				rd_params(addr_HEADTEMPB0)	<= HEADTEMP(7 downto 0);
				rd_params(addr_HEADTEMPB1)	<= HEADTEMP(15 downto 8);
				rd_params(addr_PHDACQ)		<= ('0', '0', '0', '0', '0', '0', '0', LatchPhDacq);
				rd_params(addr_PHASEPROFB0)	<= LatchedPHASEPROF(7 downto 0);
				rd_params(addr_PHASEPROFB1)	<= LatchedPHASEPROF(15 downto 8);
				rd_params(addr_MODVMONB0)	<= MODVMON(7 downto 0);
				rd_params(addr_MODVMONB1)	<= MODVMON(15 downto 8);
				rd_params(addr_MODIMONB0)	<= MODIMON(7 downto 0);
				rd_params(addr_MODIMONB1)	<= MODIMON(15 downto 8);
				rd_params(addr_EHTTRIP)		<= "0000000" & EHTTRIP(0);
		--		rd_params(addr_EHTVMONB0)	<= EHTVMON(7 downto 0);
		--		rd_params(addr_EHTVMONB1)	<= EHTVMON(15 downto 8);
		--		rd_params(addr_EHTIMONB0)	<= EHTIMON(7 downto 0);
		--		rd_params(addr_EHTIMONB1)	<= EHTIMON(15 downto 8);
				rd_params(addr_VELDACQ)		<= ('0', '0', '0', '0', '0', '0', '0', LatchVelDacq);
				rd_params(addr_VELCOUNTB0)	<= LatchedVELCOUNT(7 downto 0);
				rd_params(addr_VELCOUNTB1)	<= LatchedVELCOUNT(15 downto 8);
				rd_params(addr_TANKLEVS)	<= '0' & TANKLEVERR & '0' & TANKLEVS;
--t				rd_params(addr_TANKTEMPB0)	<= TANKTEMP(7 downto 0);
--t				rd_params(addr_TANKTEMPB1)	<= TANKTEMP(15 downto 8);				
				rd_params(addr_CABTEMPB0)	<= CABTEMP(7 downto 0);
				rd_params(addr_CABTEMPB1)	<= CABTEMP(15 downto 8);
--t				rd_params(addr_VACB0)		<= VAC(7 downto 0);
--t				rd_params(addr_VACB1)		<= VAC(15 downto 8);
--t				rd_params(addr_HEADCOVER)	<= ('0', '0', '0', '0', '0', '0', '0', HEADCOVER);
				rd_params(addr_GUTTERDET)	<= (GUTTERDETERR, '0', '0', '0', '0', '0', '0', GUTTERDET);
--t				rd_params(addr_TOFERROR)	<= ('0', '0', '0', '0', '0', '0', '0', latchTOFERROR);
--t				rd_params(addr_MSGSEL)	 	<= MSGSEL;
--t				rd_params(addr_SMARTCHANGE)	<= sig_SMARTCHANGE;
--t				rd_params(addr_SMARTWRSTAT) <= sig_SMARTWRSTAT;
--t				rd_params(addr_SMARTRDSTAT) <= sig_SMARTRDSTAT;
				rd_params(addr_EHTCURRTWOB0) <= EHTCURRTWO(7 downto 0);
				rd_params(addr_EHTCURRTWOB1) <= EHTCURRTWO(15 downto 8);	
				rd_params(addr_CHGSUPB0)	 <= CHGSUP(7 downto 0);
				rd_params(addr_CHGSUPB1)	 <= CHGSUP(15 downto 8);
				rd_params(addr_CHGOUTB0)	 <= CHGOUT(7 downto 0);
				rd_params(addr_CHGOUTB1)	 <= CHGOUT(15 downto 8);
				rd_params(addr_VALVIMONB0) 	<= VALVIMON(7 downto 0);
				rd_params(addr_VALVIMONB1) 	<= VALVIMON(15 downto 8);
				rd_params(addr_AUXIMONB0) 	<= AUXIMON(7 downto 0);
				rd_params(addr_AUXIMONB1) 	<= AUXIMON(15 downto 8);
				rd_params(addr_VELVALIDITY) <= "00" & VELOCITY_VALIDITY;
--t				rd_params(addr_HWSTAT)	 	<= EHTTRIP(1) & LatchOFFSERR & '0' & CHAMP_ERROR & LatchQDACERR & LatchMODERR & VALVSTAT(1 downto 0);
--t				rd_params(addr_TESTSTAT1) 	<= GUTPUMP_DRIVE & GUTPUMP_TACH  & PELTEMP_D & PELTEMP_C & PUMP_TACH & ARC & PHASETRIGB & PHASETRIGA;
			--	rd_params(addr_TESTPHAB0) 	<= ADCPHASEA(7 downto 0);
			--	rd_params(addr_TESTPHAB1) 	<= ADCPHASEA(15 downto 8);
			--	rd_params(addr_TESTPHBB0) 	<= ADCPHASEB(7 downto 0);
			--	rd_params(addr_TESTPHBB1) 	<= ADCPHASEB(15 downto 8);
				rd_params(addr_PUMPSETB0)	<= PUMPSET(7 downto 0);
				rd_params(addr_PUMPSETB1)	<= "000000" & PUMPSET(9 downto 8);
--t				rd_params(addr_MODSETB0)	<= MODSET(7 downto 0);
--t				rd_params(addr_MODSETB1)	<= "0000" & MODSET(11 downto 8);
--t				rd_params(addr_HEADSET) 	<= HEADSET;
--t				rd_params(addr_H1TOOOFTEN)	<= "0000000" & LatchH1TOOOFTEN;
--t				rd_params(addr_QAMPLOADB0) 	<= QAMPLOAD(7 downto 0);
--t				rd_params(addr_QAMPLOADB1) 	<= QAMPLOAD(15 downto 8);
--t				rd_params(addr_QAMPLOADB2) 	<= QAMPLOAD(23 downto 16);
				rd_params(addr_BREAKOFFB0) 	<= BREAKOFF(7 downto 0);
				rd_params(addr_BREAKOFFB1) 	<= BREAKOFF(15 downto 8);
--t				rd_params(addr_AVGDROPSB0) 	<= AVGDROPS(7 downto 0);
--t				rd_params(addr_AVGDROPSB1) 	<= "0000000" & AVGDROPS(8);
--t				rd_params(addr_TABLEINDEX) 	<= TABLEINDEX;
				rd_params(addr_ENDRASB0) 	<= EndRaster(7 downto 0);
				rd_params(addr_ENDRASB1) 	<= EndRaster(15 downto 8);
--t				rd_params(addr_ENDRASB2)    <= "00" & EndRaster(21 downto 16);
--t				rd_params(addr_RASERRORS) 	<= "0000" & RASVERR& RASOOM & LatchTBLINDEXNF & LatchCOMPNF;  
--t				rd_params(addr_PRINTCOUNTB0) <= PRINTCOUNT(7 downto 0);
--t				rd_params(addr_PRINTCOUNTB1) <= PRINTCOUNT(15 downto 8);
--t				rd_params(addr_PRINTCOUNTB2) <= PRINTCOUNT(23 downto 16);
--t				rd_params(addr_PRINTCOUNTB3) <= PRINTCOUNT(31 downto 24);
				rd_params(addr_GUTPUMPTACHB0) <= GUTPUMPTACH(7 downto 0);
				rd_params(addr_GUTPUMPTACHB1) <= GUTPUMPTACH(15 downto 8);
				rd_params(addr_GUTPUMPSETB0) <= GUTPUMPSET(7 downto 0);
				rd_params(addr_GUTPUMPSETB1) <= "00000" & GUTPUMPSET(10 downto 8);
--t				rd_params(addr_PELTEMP_MANUF) <= PELTEMP_MANUF;
--t				rd_params(addr_PELTEMP_REV)	 <= PELTEMP_REV;
--t				rd_params(addr_PELTEMP_STATUS) <= PELTEMP_STATUS; 
--t				rd_params(addr_TEMP_PIBB0)	 <= TEMP_PIB(7 downto 0);
--t				rd_params(addr_TEMP_PIBB1)	 <= TEMP_PIB(15 downto 8);
--t				rd_params(addr_TEMP_AMBIENTB0)	 <= TEMP_AMBIENT(7 downto 0);
--t				rd_params(addr_TEMP_AMBIENTB1)	 <= TEMP_AMBIENT(15 downto 8);
--t				rd_params(addr_TEMP_PELTIERB0)	 <= TEMP_PELTIER(7 downto 0);
--t				rd_params(addr_TEMP_PELTIERB1)	 <= TEMP_PELTIER(15 downto 8);
--t				rd_params(addr_H1PRODMISSED)	<= "0000000" & LatchH1PRODMISSED;
--t				rd_params(addr_PRODCOUNTB0) <= PRODCOUNT(7 downto 0);
--t				rd_params(addr_PRODCOUNTB1) <= PRODCOUNT(15 downto 8);
--t				rd_params(addr_PRODCOUNTB2) <= PRODCOUNT(23 downto 16);
--t				rd_params(addr_PRODCOUNTB3) <= PRODCOUNT(31 downto 24);
				rd_params(addr_WRITEBUFF) <= BUFFERNO;
				rd_params(addr_READBUFF) <= PE_BUFFERNO;
--t				rd_params(addr_PRINTSQUEUED) <= PRINTGOQDEPTH;
				rd_params(addr_PRINTSTAT) <= PRINTSTAT;
--t				rd_params(addr_H1PECINWIDTH)	<= "0000000" & LatchH1PECINWIDTH;
--t				rd_params(addr_HWSTATB)	 		<= "0000000" & VALVSTAT(2);
--t				rd_params(addr_SARSTATB0)	 	<= SARSTAT(7 downto 0);
--t				rd_params(addr_SARSTATB1)	 	<= SARSTAT(15 downto 8);
--t				rd_params(addr_PESECHKSTAT)		<= PESECHKSTAT;
					
--t				rd_params(addr_PH2DACQ)		<= "0000000" & PH2DACQ ;
--t				rd_params(addr_PHAS2PROFB0) <= PHAS2PROF( 7 downto 0);
--t				rd_params(addr_PHAS2PROFB1) <= PHAS2PROF(15 downto 8);
				
--t				rd_params(addr_MOD2VMONB0)	<= MOD2VMON(7 downto 0);
--t				rd_params(addr_MOD2VMONB1)	<= MOD2VMON(15 downto 8);
--t				rd_params(addr_MOD2IMONB0)	<= MOD2IMON(7 downto 0);
--t				rd_params(addr_MOD2IMONB1)	<= MOD2IMON(15 downto 8);
				
--t				rd_params(addr_N300VMONB0) 	<= N300VMON(7 downto 0);
--t				rd_params(addr_N300VMONB1) 	<= N300VMON(15 downto 8);
--t				rd_params(addr_CHG2OUTB0)	<= CH_AMP2_OUT(7 downto 0);
--t				rd_params(addr_CHG2OUTB1)	<= CH_AMP2_OUT(15 downto 8);								
--t				rd_params(addr_PCB4IN)      <= PCB4IN; 
				rd_params(addr_TESTIN) 		<= H1PENA;
				
--t				rd_params(addr_BREAKOFF2B0)	<=BREAKOFFB(7 downto 0) ;
--t				rd_params(addr_BREAKOFF2B1)	<=BREAKOFFB(15 downto 8);								

--t				rd_params(addr_DROPCOUNTB0) <= DROPCOUNT(7 downto 0);
--t				rd_params(addr_DROPCOUNTB1) <= DROPCOUNT(15 downto 8);
--t				rd_params(addr_DROPCOUNTB2) <= DROPCOUNT(23 downto 16);
--t				rd_params(addr_DROPCOUNTB3) <= DROPCOUNT(31 downto 24);
--t				rd_params(addr_DROPCOUNTB4) <= DROPCOUNT(39 downto 32);
--t				rd_params(addr_DROPCOUNTB5) <= DROPCOUNT(47 downto 40);
--t				rd_params(addr_DROPCOUNTB6) <= DROPCOUNT(55 downto 48);
--t				rd_params(addr_DROPCOUNTB7) <= DROPCOUNT(63 downto 56);
				
--t				rd_params(addr_N1DEFLECTEDB0) <= DEFLECTCOUNT(7 downto 0);
--t				rd_params(addr_N1DEFLECTEDB1) <= DEFLECTCOUNT(15 downto 8);
--t				rd_params(addr_N1DEFLECTEDB2) <= DEFLECTCOUNT(23 downto 16);
--t				rd_params(addr_N1DEFLECTEDB3) <= DEFLECTCOUNT(31 downto 24);
--t				rd_params(addr_N1DEFLECTEDB4) <= DEFLECTCOUNT(39 downto 32);
--t				rd_params(addr_N1DEFLECTEDB5) <= DEFLECTCOUNT(47 downto 40);
--t				rd_params(addr_N1DEFLECTEDB6) <= DEFLECTCOUNT(55 downto 48);
--t				rd_params(addr_N1DEFLECTEDB7) <= DEFLECTCOUNT(63 downto 56);
				
			end if;
		end if;
	end process;
	------------------------- PEC check ----------------------
	
	-- synchronise pena, relay and traffic light outputs
	process (clk, reset)
	begin
		if reset='1' then
			H1PENA_spi_a <= (others=>'0');
			H1PENA_spi_b <= (others=>'0');
--t			TRAF_spi_a <= (others=>'0');
--t			TRAF_spi_b <= (others=>'0');
--t			RELAYS_spi_a <= (others=>'0');
--t			RELAYS_spi_b <= (others=>'0');
			INTCTRL_spi_a <= (others=>'0');
			INTCTRL_spi_b <= (others=>'0');
		elsif rising_edge(clk) then
			H1PENA_spi_a <= H1PENA_spi;
			H1PENA_spi_b <= H1PENA_spi_a;			
--t			TRAF_spi_a <= TRAF_spi;
--t			TRAF_spi_b <= TRAF_spi_a;
--t			RELAYS_spi_a <= RELAYS_spi;
--t			RELAYS_spi_b <= RELAYS_spi_a;
			INTCTRL_spi_a <= INTCTRL_spi;
			INTCTRL_spi_b <= INTCTRL_spi_a;
		end if;
	end process;
			
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

	-- count how long PEC1 is asserted
	process (clk, reset)
	begin
		if reset='1' then
			countPEC1 <= check_Pec_Timeout;
		elsif rising_edge(clk) then
			if H1PENA_spi_b(0)='0' then
				-- not in print mode so reset
				countPEC1 <= check_Pec_Timeout;
			elsif countPEC1 = 0 then
				-- tripped so only PENA can reset 
			elsif (RBPEC(0)='1') and (INTCTRL_spi_b(2)='1') then
				-- PEC is enabled and covered
				if timer100ms='1' then
					countPEC1 <= countPEC1 - 1;
				else
					countPEC1 <= countPEC1;
				end if;
			else
				-- PEC not enabled or not covered - reset
				countPEC1 <= check_Pec_Timeout;
			end if; 
		end if;
	end process;

	process (clk, reset)
	begin
		if reset='1' then
			countPEC2 <= check_Pec_Timeout;
		elsif rising_edge(clk) then
			if H1PENA_spi_b(0)='0' then
				-- not in print mode so reset
				countPEC2 <= check_Pec_Timeout;
			elsif countPEC2 = 0 then
				-- tripped so only PENA can reset 
			elsif (RBPEC(1)='1') and (INTCTRL_spi_b(3)='1') then
				-- PEC is enabled and covered
				if timer100ms='1' then
					countPEC2 <= countPEC2 - 1;
				else
					countPEC2 <= countPEC2;
				end if;
			else
				-- PEC not enabled or not covered - reset
				countPEC2 <= check_Pec_Timeout;
			end if; 
		end if;
	end process;

	process (clk, reset)
	begin
		if reset='1' then
			chkPENA <= "00";
--t			chkRED <= '0';
--t			chkRELAY <= '0';
--t			countFlash <= (others=>'0');
		elsif rising_edge(clk) then
			if (countPEC1 = 0) or (countPEC2 = 0) then
				-- need to trip
				chkPENA <= "00";
--t				chkRELAY <= '0';
--t				chkRED <= countFlash(3);
				if timer100ms='1' then
--t					countFlash <= countFlash + 1;
				else
--t					countFlash <= countFlash;
				end if;
			else
				chkPENA <= H1PENA_spi_b(1 downto 0);
--t				chkRED <= TRAF_spi_b(2);
--t				chkRELAY <= RELAYS_spi_b(0);			
--t				countFlash <= (others=>'0');
			end if;
		end if;
	end process;
	
	-- combinatorial bypass for checker so that it can be optimised out
	INTCTRL <= INTCTRL_spi;
	H1PENA(7 downto 2) <= H1PENA_spi(7 downto 2);
	H1PENA(1 downto 0) <= chkPENA when (PEC_CHECK_EN /= 0) else H1PENA_spi(1 downto 0);
	
	
	
	
	
	
end RTL;
