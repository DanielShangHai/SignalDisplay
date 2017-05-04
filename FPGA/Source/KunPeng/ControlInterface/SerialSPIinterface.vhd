-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II"
-- VERSION		"Version 11.0 Build 208 07/03/2011 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed Sep 04 13:40:08 2013"

-- Editor       Daniel Song
-- Last update  Wed Sep 04 13:40:08 2013



LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY SerialSPIinterface IS 
	PORT
	(
		CLK1 :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		RxD :  IN  STD_LOGIC;
		MISO :  IN  STD_LOGIC;
		nSS_IN :  IN  STD_LOGIC;
		SCLK_in :  IN  STD_LOGIC;
		MOSI_in :  IN  STD_LOGIC;
		TxD_in :  IN  STD_LOGIC;
		TxD_out :  OUT  STD_LOGIC;
		nSS_out :  OUT  STD_LOGIC;
		SCLK_out :  OUT  STD_LOGIC;
		MOSI_out :  OUT  STD_LOGIC
	);
END SerialSPIinterface;

-- ARCHITECTURE bdf_type OF SerialSPIinterface IS
ARCHITECTURE RTL OF SerialSPIinterface IS 

COMPONENT Mult2Sel1
	PORT(A : IN STD_LOGIC;
		  B : IN STD_LOGIC;
		  S : IN STD_LOGIC;
		  Y : OUT STD_LOGIC
	);
END COMPONENT;


COMPONENT par2ser
GENERIC (Bits : INTEGER;
			Divisor : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 req : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 ack : OUT STD_LOGIC;
		 outp : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ser2par
GENERIC (Bits : INTEGER;
			Divisor : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 inp : IN STD_LOGIC;
		 ack : IN STD_LOGIC;
		 synced : OUT STD_LOGIC;
		 req : OUT STD_LOGIC;
		 FE : OUT STD_LOGIC;
		 OE : OUT STD_LOGIC;
		 data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT serial2spi
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 rxreq : IN STD_LOGIC;
		 txack : IN STD_LOGIC;
		 miso : IN STD_LOGIC;
		 rxdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 rxack : OUT STD_LOGIC;
		 txreq : OUT STD_LOGIC;
		 nss : OUT STD_LOGIC;
		 sclk : OUT STD_LOGIC;
		 mosi : OUT STD_LOGIC;
		 ListenOnly : OUT STD_LOGIC;
		 txdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SERIAL2SPI_txreq_PAR2SER_req :  STD_LOGIC;
SIGNAL	SERIAL2SPI_txdata_PAR2SERIAL_data :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	ser2par_ack_serial2spi_rxack :  STD_LOGIC;
SIGNAL	ser2par_req_serial2spi_rxreq :  STD_LOGIC;
SIGNAL	serial2spi_txack_par2ser_ack :  STD_LOGIC;
SIGNAL	ser2par_data_serial2spi_rxdata :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	MULTI_SEL :  STD_LOGIC;
SIGNAL	NSS_B :  STD_LOGIC;
SIGNAL	SCLK_B :  STD_LOGIC;
SIGNAL	MOSI_B :  STD_LOGIC;
SIGNAL	TxD_out_B :  STD_LOGIC;


BEGIN 


b2v_inst0 : ser2par
GENERIC MAP(Bits => 8,
			Divisor => 1302
			)
PORT MAP(clk => CLK1,
		 reset => RST,
		 inp => RxD,
		 ack => ser2par_ack_serial2spi_rxack,
		 req => ser2par_req_serial2spi_rxreq,
		 data => ser2par_data_serial2spi_rxdata);


b2v_inst1 : serial2spi
PORT MAP(clk => CLK1,
		 reset => RST,
		 rxreq => ser2par_req_serial2spi_rxreq,
		 txack => serial2spi_txack_par2ser_ack,
		 miso => MISO,
		 rxdata => ser2par_data_serial2spi_rxdata,
		 rxack => ser2par_ack_serial2spi_rxack,
		 txreq => SERIAL2SPI_txreq_PAR2SER_req,
		 nss => NSS_B,
		 sclk => SCLK_B,
		 mosi => MOSI_B,
		 ListenOnly => MULTI_SEL,
		 txdata => SERIAL2SPI_txdata_PAR2SERIAL_data);
		 

b2v_inst2 : par2ser
GENERIC MAP(Bits => 8,
			Divisor => 1302
			)
PORT MAP(clk => CLK1,
		 reset => RST,
		 req => SERIAL2SPI_txreq_PAR2SER_req,
		 data => SERIAL2SPI_txdata_PAR2SERIAL_data,
		 ack => serial2spi_txack_par2ser_ack,
		 outp => TxD_out_B);




--nSS_out <= nSS_IN when (MULTI_SEL /= 0) else NSS_B;

b2v_inst3 : Mult2Sel1
PORT MAP(S => MULTI_SEL,
		 B => NSS_B,
		 A => nSS_IN,
		 Y => nSS_out);


b2v_inst4 : Mult2Sel1
PORT MAP(S => MULTI_SEL,
		 B => SCLK_B,
		 A => SCLK_in,
		 Y => SCLK_out);


b2v_inst5 : Mult2Sel1
PORT MAP(S => MULTI_SEL,
		 B => MOSI_B,
		 A => MOSI_in,
		 Y => MOSI_out);


b2v_inst6 : Mult2Sel1
PORT MAP(S => MULTI_SEL,
		 B => TxD_out_B,
		 A => TxD_in,
		 Y => TxD_out);


END RTL;