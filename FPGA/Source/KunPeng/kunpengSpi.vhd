-------------------------------------------------------------------------------
--  KunPeng SPI Interface
-------------------------------------------------------------------------------
--
-- $Id: kunpengSpi.vhd,v 1.0 2016/07/09 15:14:02 Daniel Song Exp $
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity KunPengSPI is
	generic (
		DETYPE			  : in	integer := 0;
		DEVER			     : in 	integer := 0;
		DEMAJREV		     : in 	integer := 0;
		DEMINREV		     : in 	integer := 0
	);
	port (
		reset			: in	std_logic;
		clk			: in	std_logic;	-- system 50MHz
		
		spi_sclk		: in 	std_logic;
		spi_nss		: in	std_logic;
		spi_mosi		: in 	std_logic;
		spi_miso		: out 	std_logic;
				-- interface to arbiter to write to memory
		SRAMWrAddr		: buffer std_logic_vector(20 downto 0);
		SRAMWrData 		: out 	std_logic_vector(7 downto 0);
		SRAMStrobe		: out	std_logic;
		SRAMStart		: in	std_logic;	-- start of cycle from arbiter
		SRAMDone		: in	std_logic;	-- end of cycle from arbiter
		SRAMIsWrite		: out	std_logic;	-- 1 is write, 0 is read
		SRAMRdData		: in	std_logic_vector(7 downto 0);
		
		--t		PRINTGOQDEPTH 	: in	std_logic_vector(7 downto 0);
		PRINTSTAT		: in	std_logic_vector(7 downto 0);		
		PE_BUFFERNO		: in	std_logic_vector(7 downto 0);
		
	
		debugLedOut : out    std_logic_vector(3 downto 0)
	);	
	
	
architecture RTL of WuKongSPI is	
	
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