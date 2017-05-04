-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "02/10/2017 10:47:11"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	kunpeng IS
    PORT (
	SPI0_MISO : OUT std_logic;
	nRST : IN std_logic;
	CLKs : IN std_logic;
	RxD : IN std_logic;
	SPI0_SSN : IN std_logic;
	SPI0_SCLK : IN std_logic;
	SPI0_MOSI : IN std_logic;
	SPI_nSS : OUT std_logic;
	TxD : OUT std_logic
	);
END kunpeng;

-- Design Ports Information
-- SPI0_MISO	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_nSS	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TxD	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI0_SSN	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nRST	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI0_SCLK	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKs	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI0_MOSI	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RxD	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF kunpeng IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SPI0_MISO : std_logic;
SIGNAL ww_nRST : std_logic;
SIGNAL ww_CLKs : std_logic;
SIGNAL ww_RxD : std_logic;
SIGNAL ww_SPI0_SSN : std_logic;
SIGNAL ww_SPI0_SCLK : std_logic;
SIGNAL ww_SPI0_MOSI : std_logic;
SIGNAL ww_SPI_nSS : std_logic;
SIGNAL ww_TxD : std_logic;
SIGNAL \nRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLKs~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst71|5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SPI0_MISO~output_o\ : std_logic;
SIGNAL \SPI_nSS~output_o\ : std_logic;
SIGNAL \TxD~output_o\ : std_logic;
SIGNAL \SPI0_SCLK~input_o\ : std_logic;
SIGNAL \CLKs~input_o\ : std_logic;
SIGNAL \CLKs~inputclkctrl_outclk\ : std_logic;
SIGNAL \RxD~input_o\ : std_logic;
SIGNAL \inst|inst52|inp_sync1~0_combout\ : std_logic;
SIGNAL \nRST~input_o\ : std_logic;
SIGNAL \nRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|inst52|inp_sync1~q\ : std_logic;
SIGNAL \inst|inst52|inp_sync2~q\ : std_logic;
SIGNAL \inst|inst52|inp_sync3~q\ : std_logic;
SIGNAL \inst|inst52|Selector1~10_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~2_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~1\ : std_logic;
SIGNAL \inst|inst52|Add0~2_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~4_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~3\ : std_logic;
SIGNAL \inst|inst52|Add0~4_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~3_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~5\ : std_logic;
SIGNAL \inst|inst52|Add0~6_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~8_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~7\ : std_logic;
SIGNAL \inst|inst52|Add0~9\ : std_logic;
SIGNAL \inst|inst52|Add0~10_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~10_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~11\ : std_logic;
SIGNAL \inst|inst52|Add0~12_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~7_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~13\ : std_logic;
SIGNAL \inst|inst52|Add0~14_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~5_combout\ : std_logic;
SIGNAL \inst|inst52|Selector1~11_combout\ : std_logic;
SIGNAL \inst|inst52|BitCounter[0]~2_combout\ : std_logic;
SIGNAL \inst|inst52|Selector1~12_combout\ : std_logic;
SIGNAL \inst|inst52|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst52|state.DataBits~q\ : std_logic;
SIGNAL \inst|inst52|BitCounter[2]~5_combout\ : std_logic;
SIGNAL \inst|inst52|Selector1~9_combout\ : std_logic;
SIGNAL \inst|inst52|BitCounter[0]~3_combout\ : std_logic;
SIGNAL \inst|inst52|BitCounter[0]~6_combout\ : std_logic;
SIGNAL \inst|inst52|BitCounter[1]~4_combout\ : std_logic;
SIGNAL \inst|inst52|Add1~0_combout\ : std_logic;
SIGNAL \inst|inst52|Selector1~14_combout\ : std_logic;
SIGNAL \inst|inst52|Selector2~0_combout\ : std_logic;
SIGNAL \inst|inst52|state.Start~q\ : std_logic;
SIGNAL \inst|inst52|process_1~2_combout\ : std_logic;
SIGNAL \inst|inst52|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter[5]~0_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter[5]~1_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~8_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~6_combout\ : std_logic;
SIGNAL \inst|inst52|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|inst52|sample~0_combout\ : std_logic;
SIGNAL \inst|inst52|Add0~15\ : std_logic;
SIGNAL \inst|inst52|Add0~16_combout\ : std_logic;
SIGNAL \inst|inst52|divisorCounter~9_combout\ : std_logic;
SIGNAL \inst|inst52|Equal1~0_combout\ : std_logic;
SIGNAL \inst|inst52|ce~0_combout\ : std_logic;
SIGNAL \inst|inst52|ce~q\ : std_logic;
SIGNAL \inst|inst52|Selector1~15_combout\ : std_logic;
SIGNAL \inst|inst52|Selector1~13_combout\ : std_logic;
SIGNAL \inst|inst52|state.Idle~q\ : std_logic;
SIGNAL \inst|inst52|sample~1_combout\ : std_logic;
SIGNAL \inst|inst52|sample~2_combout\ : std_logic;
SIGNAL \inst|inst52|sample~q\ : std_logic;
SIGNAL \inst|inst52|Selector4~0_combout\ : std_logic;
SIGNAL \inst|inst52|state.Stop~q\ : std_logic;
SIGNAL \inst|inst52|Selector0~0_combout\ : std_logic;
SIGNAL \inst|inst52|Selector0~1_combout\ : std_logic;
SIGNAL \inst|inst52|done~q\ : std_logic;
SIGNAL \inst|inst52|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~6_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[6]~5_combout\ : std_logic;
SIGNAL \inst|inst52|data[7]~0_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~4_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[7]~3_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~5_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[4]~4_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~7_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[5]~6_combout\ : std_logic;
SIGNAL \inst|inst70|Mux1~1_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[3]~0_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[2]~1_combout\ : std_logic;
SIGNAL \inst|inst52|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~8_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[0]~7_combout\ : std_logic;
SIGNAL \inst|inst52|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|inst52|shiftreg[1]~2_combout\ : std_logic;
SIGNAL \inst|inst70|Mux1~0_combout\ : std_logic;
SIGNAL \inst|inst70|Mux1~2_combout\ : std_logic;
SIGNAL \inst|inst70|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.AckDataMSB~q\ : std_logic;
SIGNAL \inst|inst70|Selector6~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.WaitLSB~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D1b~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|Selector44~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector2~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.AckSymbol~q\ : std_logic;
SIGNAL \inst|inst70|Selector7~3_combout\ : std_logic;
SIGNAL \inst|inst70|state.SendSymbol~q\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[0]~9_combout\ : std_logic;
SIGNAL \inst|inst59|Selector10~2_combout\ : std_logic;
SIGNAL \inst|inst70|Selector26~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.SendMSBWaitAck~q\ : std_logic;
SIGNAL \inst|inst70|Selector7~1_combout\ : std_logic;
SIGNAL \inst|inst70|state.SendLSB~q\ : std_logic;
SIGNAL \inst|inst70|Selector39~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector39~1_combout\ : std_logic;
SIGNAL \inst|inst70|txreq~q\ : std_logic;
SIGNAL \inst|inst59|Selector3~0_combout\ : std_logic;
SIGNAL \inst|inst59|Selector3~1_combout\ : std_logic;
SIGNAL \inst|inst59|DataFetch_state.WaitPushAck~q\ : std_logic;
SIGNAL \inst|inst59|DataFetch_state.Idle~0_combout\ : std_logic;
SIGNAL \inst|inst59|Selector2~0_combout\ : std_logic;
SIGNAL \inst|inst59|DataFetch_state.Idle~q\ : std_logic;
SIGNAL \inst|inst59|POP_Ack~0_combout\ : std_logic;
SIGNAL \inst|inst59|POP_Ack~q\ : std_logic;
SIGNAL \inst|inst59|Selector9~0_combout\ : std_logic;
SIGNAL \inst|inst59|state.Pre_start_Ack~q\ : std_logic;
SIGNAL \inst|inst59|Selector10~6_combout\ : std_logic;
SIGNAL \inst|inst59|Selector10~4_combout\ : std_logic;
SIGNAL \inst|inst59|Selector10~3_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[0]~6_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[0]~7\ : std_logic;
SIGNAL \inst|inst59|DataCounter[1]~8_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[1]~9\ : std_logic;
SIGNAL \inst|inst59|DataCounter[2]~12_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[2]~13\ : std_logic;
SIGNAL \inst|inst59|DataCounter[3]~14_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[3]~15\ : std_logic;
SIGNAL \inst|inst59|DataCounter[4]~16_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[4]~17\ : std_logic;
SIGNAL \inst|inst59|DataCounter[5]~18_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[5]~10_combout\ : std_logic;
SIGNAL \inst|inst59|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|inst59|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|inst59|DataCounter[5]~11_combout\ : std_logic;
SIGNAL \inst|inst59|Selector10~0_combout\ : std_logic;
SIGNAL \inst|inst59|Selector10~5_combout\ : std_logic;
SIGNAL \inst|inst59|Selector10~7_combout\ : std_logic;
SIGNAL \inst|inst59|state.Start~q\ : std_logic;
SIGNAL \inst|inst59|Selector11~0_combout\ : std_logic;
SIGNAL \inst|inst59|state.DataBits~q\ : std_logic;
SIGNAL \inst|inst59|state.Stop~2_combout\ : std_logic;
SIGNAL \inst|inst59|state.Stop~q\ : std_logic;
SIGNAL \inst|inst59|Selector6~0_combout\ : std_logic;
SIGNAL \inst|inst59|state.Idle~q\ : std_logic;
SIGNAL \inst|inst59|state.Idle~_wirecell_combout\ : std_logic;
SIGNAL \inst|inst59|Equal0~0_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[4]~19\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[5]~20_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[5]~21\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[6]~22_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[6]~23\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[7]~24_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[7]~25\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[8]~26_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[2]~13_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[0]~10\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[1]~11_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[1]~12\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[2]~14_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[2]~15\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[3]~16_combout\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[3]~17\ : std_logic;
SIGNAL \inst|inst59|divisorCounter[4]~18_combout\ : std_logic;
SIGNAL \inst|inst59|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inst59|ce~0_combout\ : std_logic;
SIGNAL \inst|inst59|ce~q\ : std_logic;
SIGNAL \inst|inst59|bitCounter~0_combout\ : std_logic;
SIGNAL \inst|inst59|Selector18~0_combout\ : std_logic;
SIGNAL \inst|inst59|Selector16~1_combout\ : std_logic;
SIGNAL \inst|inst59|Selector16~2_combout\ : std_logic;
SIGNAL \inst|inst59|Selector16~0_combout\ : std_logic;
SIGNAL \inst|inst59|Selector17~0_combout\ : std_logic;
SIGNAL \inst|inst59|Selector10~1_combout\ : std_logic;
SIGNAL \inst|inst59|Selector7~2_combout\ : std_logic;
SIGNAL \inst|inst59|state.Pre_start~q\ : std_logic;
SIGNAL \inst|inst59|state.Pre_start_Ack1~feeder_combout\ : std_logic;
SIGNAL \inst|inst59|state.Pre_start_Ack1~q\ : std_logic;
SIGNAL \inst|inst59|Selector14~0_combout\ : std_logic;
SIGNAL \inst|inst59|POP_req~q\ : std_logic;
SIGNAL \inst|inst59|ack~0_combout\ : std_logic;
SIGNAL \inst|inst59|ack~1_combout\ : std_logic;
SIGNAL \inst|inst59|ack~q\ : std_logic;
SIGNAL \inst|inst70|Selector4~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.SendSymbolWaitAck~q\ : std_logic;
SIGNAL \inst|inst70|Selector28~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.SendLSBWaitAck~q\ : std_logic;
SIGNAL \inst|inst70|Selector27~0_combout\ : std_logic;
SIGNAL \inst|inst70|WideOr13~0_combout\ : std_logic;
SIGNAL \inst|inst70|slowerer[1]~0_combout\ : std_logic;
SIGNAL \inst|inst70|slowerer[1]~1_combout\ : std_logic;
SIGNAL \inst|inst70|Selector43~0_combout\ : std_logic;
SIGNAL \inst|inst70|Add0~1_combout\ : std_logic;
SIGNAL \inst|inst70|Selector42~0_combout\ : std_logic;
SIGNAL \inst|inst70|Add0~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector41~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector27~3_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D1b~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D0a~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D0b~q\ : std_logic;
SIGNAL \inst|inst70|Selector7~2_combout\ : std_logic;
SIGNAL \inst|inst70|state.SendMSB~q\ : std_logic;
SIGNAL \inst|inst70|WideOr6~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector38~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector0~2_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~1_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector45~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector0~1_combout\ : std_logic;
SIGNAL \inst|inst70|Selector27~1_combout\ : std_logic;
SIGNAL \inst|inst70|Selector0~3_combout\ : std_logic;
SIGNAL \inst|inst70|Selector27~2_combout\ : std_logic;
SIGNAL \inst|inst70|Selector0~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector0~4_combout\ : std_logic;
SIGNAL \inst|inst70|state.WaitMSB~q\ : std_logic;
SIGNAL \inst|inst70|Selector1~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.DecodeMSB~q\ : std_logic;
SIGNAL \inst|inst70|WideOr7~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector38~1_combout\ : std_logic;
SIGNAL \inst|inst70|rxack~q\ : std_logic;
SIGNAL \inst|inst52|Selector10~5_combout\ : std_logic;
SIGNAL \inst|inst52|hsstate.hsAcknowledge~q\ : std_logic;
SIGNAL \inst|inst52|Selector11~4_combout\ : std_logic;
SIGNAL \inst|inst52|hsstate.hsWaitNoAck~q\ : std_logic;
SIGNAL \inst|inst52|Selector10~4_combout\ : std_logic;
SIGNAL \inst|inst52|Selector8~0_combout\ : std_logic;
SIGNAL \inst|inst52|hsstate.hsIdle~2_combout\ : std_logic;
SIGNAL \inst|inst52|hsstate.hsIdle~q\ : std_logic;
SIGNAL \inst|inst52|req~2_combout\ : std_logic;
SIGNAL \inst|inst52|req~q\ : std_logic;
SIGNAL \inst|inst70|Selector7~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.DecodeLSB~q\ : std_logic;
SIGNAL \inst|inst70|Selector8~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.AckDataLSB~q\ : std_logic;
SIGNAL \inst|inst70|Selector9~0_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D7a~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D7b~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D7b~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D6a~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D6a~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D6b~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D6b~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D5a~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D5b~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D5b~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D4a~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D4b~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D3a~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D3a~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D3b~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D3b~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D2a~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D2b~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D2b~q\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D1a~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|state.SPI_D1a~q\ : std_logic;
SIGNAL \inst|inst70|Selector45~1_combout\ : std_logic;
SIGNAL \inst|inst70|Selector45~2_combout\ : std_logic;
SIGNAL \inst|inst70|Selector45~3_combout\ : std_logic;
SIGNAL \inst|inst70|sclk~q\ : std_logic;
SIGNAL \inst|inst70|process_0~1_combout\ : std_logic;
SIGNAL \inst|inst70|process_0~0_combout\ : std_logic;
SIGNAL \inst|inst70|ListenOnly~0_combout\ : std_logic;
SIGNAL \inst|inst70|ListenOnly~q\ : std_logic;
SIGNAL \inst|inst71|5~combout\ : std_logic;
SIGNAL \inst|inst71|5~clkctrl_outclk\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.Command~feeder_combout\ : std_logic;
SIGNAL \SPI0_SSN~input_o\ : std_logic;
SIGNAL \inst|inst70|nss~0_combout\ : std_logic;
SIGNAL \inst|inst70|nss~1_combout\ : std_logic;
SIGNAL \inst|inst70|nss~q\ : std_logic;
SIGNAL \inst|inst60|5~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|bitCount[0]~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|bitCount[1]~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|bitCount[2]~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal0~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|byteStrobe~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.Command~q\ : std_logic;
SIGNAL \inst|inst70|Mux5~0_combout\ : std_logic;
SIGNAL \inst|inst70|Mux5~1_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[6]~1_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[6]~0_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[6]~2_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[7]~5_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[7]~6_combout\ : std_logic;
SIGNAL \inst|inst70|Mux6~0_combout\ : std_logic;
SIGNAL \inst|inst70|Mux6~1_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~6_combout\ : std_logic;
SIGNAL \inst|inst70|Mux4~0_combout\ : std_logic;
SIGNAL \inst|inst70|Mux4~1_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[6]~3_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[3]~4_combout\ : std_logic;
SIGNAL \inst|inst70|Mux3~0_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~5_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~3_combout\ : std_logic;
SIGNAL \inst|inst70|DataIn[0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~2_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~4_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~7_combout\ : std_logic;
SIGNAL \inst|inst70|Selector40~8_combout\ : std_logic;
SIGNAL \inst|inst70|mosi~q\ : std_logic;
SIGNAL \SPI0_MOSI~input_o\ : std_logic;
SIGNAL \inst|inst72|5~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|inShift[0]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal3~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal1~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal4~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector18~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMWrAddrB0~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector19~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMWrAddrB1~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector20~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMWrAddrB2~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector21~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMWrDataFirst~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector22~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMWrDataRest~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdPad~7_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal5~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal1~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdPad~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.Finished~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal3~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector13~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMRdAddrB0~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector14~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMRdAddrB1~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector15~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMRdAddrB2~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector16~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMRdPad~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector17~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.SRAMRdDataRest~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdPad~3_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal1~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector1~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.WrLengthL~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector2~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.WrLengthM~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector3~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.WrBase~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal2~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector6~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.RdLengthL~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector38~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector7~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.RdLengthM~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector8~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.RdBase~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector9~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.RdPad~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|cntlength[0]~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|cntlength[0]~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~1\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector37~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~3\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~4_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector36~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~5\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~6_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector35~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~7\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~8_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector34~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~9\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~10_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector33~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~11\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~12_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector32~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~13\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~14_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector31~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~15\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~16_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector30~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|cntlength[8]~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~17\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~18_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector29~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~19\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~20_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector28~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~21\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~22_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector27~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~23\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~24_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector26~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal6~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal6~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~25\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~26_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector25~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~27\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~28_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector24~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~29\ : std_logic;
SIGNAL \SPI_PROTOCOL|Add1~30_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector23~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal6~3_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal6~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Equal6~4_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector4~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector4~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.WrData~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdPad~4_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdPad~5_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdPad~6_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdPad~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|DumpDoRead~combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.DumpRdData~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|WideOr18~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.Finished~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.Finished~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.Finished~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|WideOr18~combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~2_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|Selector10~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|state.RdData~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~1_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift[7]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~3_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~4_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift[6]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~5_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~6_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift[5]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~7_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~8_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift[4]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~9_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~10_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift[3]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~11_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~12_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift[2]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~13_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift~14_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift[1]~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[0]~5_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|address~7_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[4]~8_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[0]~6\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[1]~9_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[1]~10\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[2]~11_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[2]~12\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[3]~13_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[3]~14\ : std_logic;
SIGNAL \SPI_PROTOCOL|address[4]~15_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParams~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParams~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParamsA~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParamsA~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParamsB~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParamsB~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParamsC~feeder_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|LatchReadParamsC~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|rd_params[0][0]~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|rd_params[0][0]~q\ : std_logic;
SIGNAL \SPI_PROTOCOL|Mux7~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outByte[0]~0_combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outByte[0]~1_combout\ : std_logic;
SIGNAL \inst|inst59|Selector5~0_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[6]~0_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[5]~1_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[4]~6_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[7]~2_combout\ : std_logic;
SIGNAL \inst|inst70|Mux14~0_combout\ : std_logic;
SIGNAL \inst|inst70|txdata[2]~0_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[0]~7_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[3]~5_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[2]~3_combout\ : std_logic;
SIGNAL \inst|inst70|DataOut[1]~4_combout\ : std_logic;
SIGNAL \inst|inst70|Mux20~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~369_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][7]~1_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~10_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][7]~365_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~360_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][7]~58_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~9_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][7]~356_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~351_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~8_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][7]~347_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~342_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][7]~39_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][7]~338_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~333_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][7]~329_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~324_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][7]~20_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][7]~320_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~315_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][7]~311_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~306_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][7]~302_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~297_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][7]~293_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~288_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~7_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][7]~284_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~279_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~6_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][7]~275_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~270_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][7]~266_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~261_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][7]~257_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~252_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][7]~248_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~243_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][7]~239_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~234_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][7]~230_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~225_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][7]~221_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~216_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~5_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][7]~212_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~207_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~4_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][7]~203_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~198_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][7]~194_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~189_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][7]~185_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~180_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][7]~176_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~171_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][7]~167_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~162_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][7]~158_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~153_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][7]~149_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~144_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][7]~140_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~135_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~2_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][7]~131_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~126_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][7]~122_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~117_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][7]~113_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~108_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][7]~104_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~99_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][7]~95_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~90_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][7]~86_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~81_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][7]~77_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~72_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~1_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][7]~68_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~63_combout\ : std_logic;
SIGNAL \inst|inst59|Decoder0~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][7]~59_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~53_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][7]~49_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~44_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][7]~40_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~34_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][7]~30_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~25_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][7]~21_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~15_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][7]~11_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][2]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~6_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][7]~2_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][2]~q\ : std_logic;
SIGNAL \inst|inst59|SendData[2]~feeder_combout\ : std_logic;
SIGNAL \inst|inst59|SendData[7]~0_combout\ : std_logic;
SIGNAL \inst|inst70|Mux13~0_combout\ : std_logic;
SIGNAL \inst|inst70|txdata[3]~3_combout\ : std_logic;
SIGNAL \inst|inst70|Mux19~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~372_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~363_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~354_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~345_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~336_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~327_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~318_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~309_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~300_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~291_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~282_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~273_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~264_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~255_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~246_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~237_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~228_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~219_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~210_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~201_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~192_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~183_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~174_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~165_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~156_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~147_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~138_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~129_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~120_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~111_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~102_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~93_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~84_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~75_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~66_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~56_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~47_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~37_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~28_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~18_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][3]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~9_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][3]~q\ : std_logic;
SIGNAL \inst|inst70|Mux15~0_combout\ : std_logic;
SIGNAL \inst|inst70|txdata[1]~1_combout\ : std_logic;
SIGNAL \inst|inst70|Mux21~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~370_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~361_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~352_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~343_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~334_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~325_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~316_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~307_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~298_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~289_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~280_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~271_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~262_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~253_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~244_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~235_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~226_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~217_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~208_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~199_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~190_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~181_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~172_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~163_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~154_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~145_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~136_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~127_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~118_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~109_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~100_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~91_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~82_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~73_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~64_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~54_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~45_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~35_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~26_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~16_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][1]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~7_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][1]~q\ : std_logic;
SIGNAL \inst|inst59|SendData[1]~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|Mux16~0_combout\ : std_logic;
SIGNAL \inst|inst70|txdata[0]~2_combout\ : std_logic;
SIGNAL \inst|inst70|Mux22~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~371_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~362_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~353_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~344_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~335_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~326_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~317_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~308_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~299_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~290_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~281_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~272_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~263_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~254_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~245_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~236_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~227_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~218_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~209_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~200_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~191_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~182_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~173_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~164_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~155_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~146_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~137_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~128_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~119_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~110_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~101_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~92_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~83_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~74_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~65_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~55_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][0]~feeder_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~46_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~36_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~27_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~17_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][0]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~8_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][0]~q\ : std_logic;
SIGNAL \inst|inst59|Mux0~2_combout\ : std_logic;
SIGNAL \inst|inst59|Mux0~3_combout\ : std_logic;
SIGNAL \inst|inst70|Mux11~0_combout\ : std_logic;
SIGNAL \inst|inst70|txdata[5]~4_combout\ : std_logic;
SIGNAL \inst|inst70|Mux17~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~364_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~355_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~346_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~337_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~328_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~319_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~310_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][5]~feeder_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~301_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~292_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~283_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~274_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~265_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~256_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~247_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~238_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~229_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~220_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~211_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~202_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~193_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~184_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~175_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~166_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~157_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~148_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][5]~feeder_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~139_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~130_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~121_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~112_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~103_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~94_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~85_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~76_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~67_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~57_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~48_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~38_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~29_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~19_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~10_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][5]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][5]~q\ : std_logic;
SIGNAL \inst|inst59|SendData[5]~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|Selector29~0_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~368_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~359_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~350_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~341_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~332_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~323_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~314_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~305_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~296_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~287_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~278_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~269_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~260_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~251_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~242_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~233_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~224_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~215_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~206_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~197_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~188_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~179_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~170_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~161_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~152_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][7]~feeder_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~143_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~134_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~125_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~116_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~107_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~98_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~89_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~80_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~71_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~62_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~52_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~43_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~33_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~24_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~14_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][7]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~5_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][7]~q\ : std_logic;
SIGNAL \inst|inst70|txdata[6]~5_combout\ : std_logic;
SIGNAL \inst|inst70|Mux17~0_wirecell_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~366_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~357_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~348_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~339_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~330_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~321_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~312_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~303_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~294_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~285_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~276_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~267_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~258_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~249_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~240_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~231_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~222_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~213_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~204_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~195_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~186_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~177_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~168_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~159_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~150_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~141_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~132_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~123_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~114_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~105_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~96_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~87_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~78_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~69_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~60_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~50_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~41_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~31_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~22_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~12_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][6]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~3_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][6]~q\ : std_logic;
SIGNAL \inst|inst59|SendData[6]~feeder_combout\ : std_logic;
SIGNAL \inst|inst70|txdata[4]~6_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~367_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[40][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~358_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[39][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~349_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[38][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~340_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[37][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~331_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[36][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~322_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[35][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~313_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[34][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~304_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[33][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~295_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[32][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~286_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[31][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~277_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[30][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~268_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[29][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~259_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[28][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~250_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[27][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~241_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[26][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~232_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[25][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~223_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[24][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~214_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[23][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~205_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[22][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~196_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[21][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~187_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[20][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~178_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[19][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~169_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[18][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~160_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[17][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~151_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[16][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~142_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[15][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~133_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[14][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~124_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[13][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~115_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[12][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~106_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[11][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~97_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[10][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~88_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[9][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~79_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[8][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~70_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[7][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~61_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[6][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~51_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[5][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~42_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[4][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~32_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[3][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~23_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[2][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~13_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[1][4]~q\ : std_logic;
SIGNAL \inst|inst59|Data_Buff~4_combout\ : std_logic;
SIGNAL \inst|inst59|Data_Buff[0][4]~q\ : std_logic;
SIGNAL \inst|inst59|Mux0~0_combout\ : std_logic;
SIGNAL \inst|inst59|Mux0~1_combout\ : std_logic;
SIGNAL \inst|inst59|Selector5~1_combout\ : std_logic;
SIGNAL \inst|inst59|Selector5~2_combout\ : std_logic;
SIGNAL \inst|inst59|outp~q\ : std_logic;
SIGNAL \inst|inst61|5~combout\ : std_logic;
SIGNAL \SPI_PROTOCOL|outShift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SPI_PROTOCOL|inShift\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SPI_PROTOCOL|cntlength\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SPI_PROTOCOL|bitCount\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SPI_PROTOCOL|address\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|inst59|bitCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst52|divisorCounter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|inst52|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst52|BitCounter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inst70|DataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst59|DataCounter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|inst70|txdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst59|divisorCounter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|inst70|DataIn\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst70|slowerer\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inst59|SendData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst52|shiftreg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|inst71|ALT_INV_5~clkctrl_outclk\ : std_logic;
SIGNAL \SPI_PROTOCOL|ALT_INV_byteStrobe~q\ : std_logic;
SIGNAL \inst|inst60|ALT_INV_5~0_combout\ : std_logic;
SIGNAL \inst|inst59|ALT_INV_DataFetch_state.Idle~q\ : std_logic;

BEGIN

SPI0_MISO <= ww_SPI0_MISO;
ww_nRST <= nRST;
ww_CLKs <= CLKs;
ww_RxD <= RxD;
ww_SPI0_SSN <= SPI0_SSN;
ww_SPI0_SCLK <= SPI0_SCLK;
ww_SPI0_MOSI <= SPI0_MOSI;
SPI_nSS <= ww_SPI_nSS;
TxD <= ww_TxD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\nRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nRST~input_o\);

\CLKs~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKs~input_o\);

\inst|inst71|5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inst71|5~combout\);
\inst|inst71|ALT_INV_5~clkctrl_outclk\ <= NOT \inst|inst71|5~clkctrl_outclk\;
\SPI_PROTOCOL|ALT_INV_byteStrobe~q\ <= NOT \SPI_PROTOCOL|byteStrobe~q\;
\inst|inst60|ALT_INV_5~0_combout\ <= NOT \inst|inst60|5~0_combout\;
\inst|inst59|ALT_INV_DataFetch_state.Idle~q\ <= NOT \inst|inst59|DataFetch_state.Idle~q\;

-- Location: IOOBUF_X33_Y24_N2
\SPI0_MISO~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI_PROTOCOL|outShift\(7),
	devoe => ww_devoe,
	o => \SPI0_MISO~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\SPI_nSS~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst60|5~0_combout\,
	devoe => ww_devoe,
	o => \SPI_nSS~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\TxD~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst61|5~combout\,
	devoe => ww_devoe,
	o => \TxD~output_o\);

-- Location: IOIBUF_X12_Y31_N1
\SPI0_SCLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SPI0_SCLK,
	o => \SPI0_SCLK~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\CLKs~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKs,
	o => \CLKs~input_o\);

-- Location: CLKCTRL_G17
\CLKs~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKs~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKs~inputclkctrl_outclk\);

-- Location: IOIBUF_X10_Y31_N1
\RxD~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RxD,
	o => \RxD~input_o\);

-- Location: LCCOMB_X9_Y22_N8
\inst|inst52|inp_sync1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|inp_sync1~0_combout\ = !\RxD~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RxD~input_o\,
	combout => \inst|inst52|inp_sync1~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\nRST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRST,
	o => \nRST~input_o\);

-- Location: CLKCTRL_G19
\nRST~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nRST~inputclkctrl_outclk\);

-- Location: FF_X9_Y22_N9
\inst|inst52|inp_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|inp_sync1~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|inp_sync1~q\);

-- Location: FF_X9_Y22_N27
\inst|inst52|inp_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|inp_sync1~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|inp_sync2~q\);

-- Location: FF_X9_Y22_N5
\inst|inst52|inp_sync3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|inp_sync2~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|inp_sync3~q\);

-- Location: LCCOMB_X9_Y22_N28
\inst|inst52|Selector1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector1~10_combout\ = (!\inst|inst52|state.Idle~q\ & (\inst|inst52|inp_sync2~q\ & !\inst|inst52|inp_sync3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|state.Idle~q\,
	datac => \inst|inst52|inp_sync2~q\,
	datad => \inst|inst52|inp_sync3~q\,
	combout => \inst|inst52|Selector1~10_combout\);

-- Location: LCCOMB_X8_Y22_N12
\inst|inst52|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~0_combout\ = \inst|inst52|divisorCounter\(0) $ (VCC)
-- \inst|inst52|Add0~1\ = CARRY(\inst|inst52|divisorCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(0),
	datad => VCC,
	combout => \inst|inst52|Add0~0_combout\,
	cout => \inst|inst52|Add0~1\);

-- Location: LCCOMB_X9_Y22_N2
\inst|inst52|divisorCounter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~2_combout\ = ((\inst|inst52|Add0~0_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\)))) # (!\inst|inst52|divisorCounter[5]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Add0~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|Equal1~0_combout\,
	datad => \inst|inst52|divisorCounter[5]~1_combout\,
	combout => \inst|inst52|divisorCounter~2_combout\);

-- Location: FF_X9_Y22_N3
\inst|inst52|divisorCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(0));

-- Location: LCCOMB_X8_Y22_N14
\inst|inst52|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~2_combout\ = (\inst|inst52|divisorCounter\(1) & (!\inst|inst52|Add0~1\)) # (!\inst|inst52|divisorCounter\(1) & ((\inst|inst52|Add0~1\) # (GND)))
-- \inst|inst52|Add0~3\ = CARRY((!\inst|inst52|Add0~1\) # (!\inst|inst52|divisorCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(1),
	datad => VCC,
	cin => \inst|inst52|Add0~1\,
	combout => \inst|inst52|Add0~2_combout\,
	cout => \inst|inst52|Add0~3\);

-- Location: LCCOMB_X9_Y22_N30
\inst|inst52|divisorCounter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~4_combout\ = (\inst|inst52|Add0~2_combout\ & (\inst|inst52|divisorCounter[5]~1_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Add0~2_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|Equal1~0_combout\,
	datad => \inst|inst52|divisorCounter[5]~1_combout\,
	combout => \inst|inst52|divisorCounter~4_combout\);

-- Location: FF_X9_Y22_N31
\inst|inst52|divisorCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(1));

-- Location: LCCOMB_X8_Y22_N16
\inst|inst52|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~4_combout\ = (\inst|inst52|divisorCounter\(2) & (\inst|inst52|Add0~3\ $ (GND))) # (!\inst|inst52|divisorCounter\(2) & (!\inst|inst52|Add0~3\ & VCC))
-- \inst|inst52|Add0~5\ = CARRY((\inst|inst52|divisorCounter\(2) & !\inst|inst52|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|divisorCounter\(2),
	datad => VCC,
	cin => \inst|inst52|Add0~3\,
	combout => \inst|inst52|Add0~4_combout\,
	cout => \inst|inst52|Add0~5\);

-- Location: LCCOMB_X8_Y22_N8
\inst|inst52|divisorCounter~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~3_combout\ = (\inst|inst52|divisorCounter[5]~1_combout\ & (\inst|inst52|Add0~4_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|divisorCounter[5]~1_combout\,
	datad => \inst|inst52|Add0~4_combout\,
	combout => \inst|inst52|divisorCounter~3_combout\);

-- Location: FF_X8_Y22_N9
\inst|inst52|divisorCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(2));

-- Location: LCCOMB_X8_Y22_N18
\inst|inst52|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~6_combout\ = (\inst|inst52|divisorCounter\(3) & (!\inst|inst52|Add0~5\)) # (!\inst|inst52|divisorCounter\(3) & ((\inst|inst52|Add0~5\) # (GND)))
-- \inst|inst52|Add0~7\ = CARRY((!\inst|inst52|Add0~5\) # (!\inst|inst52|divisorCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|divisorCounter\(3),
	datad => VCC,
	cin => \inst|inst52|Add0~5\,
	combout => \inst|inst52|Add0~6_combout\,
	cout => \inst|inst52|Add0~7\);

-- Location: LCCOMB_X8_Y22_N4
\inst|inst52|divisorCounter~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~8_combout\ = (\inst|inst52|divisorCounter[5]~1_combout\ & (\inst|inst52|Add0~6_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|divisorCounter[5]~1_combout\,
	datad => \inst|inst52|Add0~6_combout\,
	combout => \inst|inst52|divisorCounter~8_combout\);

-- Location: FF_X8_Y22_N5
\inst|inst52|divisorCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~8_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(3));

-- Location: LCCOMB_X8_Y22_N20
\inst|inst52|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~8_combout\ = (\inst|inst52|divisorCounter\(4) & (\inst|inst52|Add0~7\ $ (GND))) # (!\inst|inst52|divisorCounter\(4) & (!\inst|inst52|Add0~7\ & VCC))
-- \inst|inst52|Add0~9\ = CARRY((\inst|inst52|divisorCounter\(4) & !\inst|inst52|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|divisorCounter\(4),
	datad => VCC,
	cin => \inst|inst52|Add0~7\,
	combout => \inst|inst52|Add0~8_combout\,
	cout => \inst|inst52|Add0~9\);

-- Location: LCCOMB_X8_Y22_N22
\inst|inst52|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~10_combout\ = (\inst|inst52|divisorCounter\(5) & (!\inst|inst52|Add0~9\)) # (!\inst|inst52|divisorCounter\(5) & ((\inst|inst52|Add0~9\) # (GND)))
-- \inst|inst52|Add0~11\ = CARRY((!\inst|inst52|Add0~9\) # (!\inst|inst52|divisorCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(5),
	datad => VCC,
	cin => \inst|inst52|Add0~9\,
	combout => \inst|inst52|Add0~10_combout\,
	cout => \inst|inst52|Add0~11\);

-- Location: LCCOMB_X8_Y22_N30
\inst|inst52|divisorCounter~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~10_combout\ = (\inst|inst52|divisorCounter[5]~1_combout\ & (\inst|inst52|Add0~10_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|divisorCounter[5]~1_combout\,
	datad => \inst|inst52|Add0~10_combout\,
	combout => \inst|inst52|divisorCounter~10_combout\);

-- Location: FF_X8_Y22_N31
\inst|inst52|divisorCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~10_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(5));

-- Location: LCCOMB_X8_Y22_N24
\inst|inst52|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~12_combout\ = (\inst|inst52|divisorCounter\(6) & (\inst|inst52|Add0~11\ $ (GND))) # (!\inst|inst52|divisorCounter\(6) & (!\inst|inst52|Add0~11\ & VCC))
-- \inst|inst52|Add0~13\ = CARRY((\inst|inst52|divisorCounter\(6) & !\inst|inst52|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(6),
	datad => VCC,
	cin => \inst|inst52|Add0~11\,
	combout => \inst|inst52|Add0~12_combout\,
	cout => \inst|inst52|Add0~13\);

-- Location: LCCOMB_X8_Y22_N6
\inst|inst52|divisorCounter~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~7_combout\ = (\inst|inst52|divisorCounter[5]~1_combout\ & (\inst|inst52|Add0~12_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|divisorCounter[5]~1_combout\,
	datad => \inst|inst52|Add0~12_combout\,
	combout => \inst|inst52|divisorCounter~7_combout\);

-- Location: FF_X8_Y22_N7
\inst|inst52|divisorCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~7_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(6));

-- Location: LCCOMB_X8_Y22_N26
\inst|inst52|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~14_combout\ = (\inst|inst52|divisorCounter\(7) & (!\inst|inst52|Add0~13\)) # (!\inst|inst52|divisorCounter\(7) & ((\inst|inst52|Add0~13\) # (GND)))
-- \inst|inst52|Add0~15\ = CARRY((!\inst|inst52|Add0~13\) # (!\inst|inst52|divisorCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(7),
	datad => VCC,
	cin => \inst|inst52|Add0~13\,
	combout => \inst|inst52|Add0~14_combout\,
	cout => \inst|inst52|Add0~15\);

-- Location: LCCOMB_X8_Y22_N10
\inst|inst52|divisorCounter~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~5_combout\ = (\inst|inst52|divisorCounter[5]~1_combout\ & (\inst|inst52|Add0~14_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|divisorCounter[5]~1_combout\,
	datad => \inst|inst52|Add0~14_combout\,
	combout => \inst|inst52|divisorCounter~5_combout\);

-- Location: FF_X8_Y22_N11
\inst|inst52|divisorCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(7));

-- Location: LCCOMB_X10_Y22_N14
\inst|inst52|Selector1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector1~11_combout\ = (\inst|inst52|state.Stop~q\) # ((!\inst|inst52|ce~q\ & (\inst|inst52|state.Start~q\ & !\inst|inst52|inp_sync2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|ce~q\,
	datab => \inst|inst52|state.Start~q\,
	datac => \inst|inst52|inp_sync2~q\,
	datad => \inst|inst52|state.Stop~q\,
	combout => \inst|inst52|Selector1~11_combout\);

-- Location: LCCOMB_X10_Y22_N18
\inst|inst52|BitCounter[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|BitCounter[0]~2_combout\ = (!\inst|inst52|state.Start~q\) # (!\inst|inst52|ce~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|ce~q\,
	datad => \inst|inst52|state.Start~q\,
	combout => \inst|inst52|BitCounter[0]~2_combout\);

-- Location: LCCOMB_X10_Y22_N4
\inst|inst52|Selector1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector1~12_combout\ = (\inst|inst52|Selector1~10_combout\) # (((\inst|inst52|Selector1~11_combout\ & \inst|inst52|sample~q\)) # (!\inst|inst52|BitCounter[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Selector1~10_combout\,
	datab => \inst|inst52|Selector1~11_combout\,
	datac => \inst|inst52|sample~q\,
	datad => \inst|inst52|BitCounter[0]~2_combout\,
	combout => \inst|inst52|Selector1~12_combout\);

-- Location: LCCOMB_X10_Y22_N20
\inst|inst52|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector3~0_combout\ = (!\inst|inst52|Selector1~14_combout\ & (((!\inst|inst52|Selector1~12_combout\ & \inst|inst52|state.DataBits~q\)) # (!\inst|inst52|BitCounter[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Selector1~14_combout\,
	datab => \inst|inst52|Selector1~12_combout\,
	datac => \inst|inst52|state.DataBits~q\,
	datad => \inst|inst52|BitCounter[0]~2_combout\,
	combout => \inst|inst52|Selector3~0_combout\);

-- Location: FF_X10_Y22_N21
\inst|inst52|state.DataBits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|Selector3~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|state.DataBits~q\);

-- Location: LCCOMB_X10_Y22_N10
\inst|inst52|BitCounter[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|BitCounter[2]~5_combout\ = (\inst|inst52|BitCounter[0]~3_combout\ & (((\inst|inst52|BitCounter\(2))))) # (!\inst|inst52|BitCounter[0]~3_combout\ & (\inst|inst52|state.DataBits~q\ & (\inst|inst52|Add1~0_combout\ $ 
-- (\inst|inst52|BitCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|state.DataBits~q\,
	datab => \inst|inst52|Add1~0_combout\,
	datac => \inst|inst52|BitCounter\(2),
	datad => \inst|inst52|BitCounter[0]~3_combout\,
	combout => \inst|inst52|BitCounter[2]~5_combout\);

-- Location: FF_X10_Y22_N11
\inst|inst52|BitCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|BitCounter[2]~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|BitCounter\(2));

-- Location: LCCOMB_X10_Y22_N30
\inst|inst52|Selector1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector1~9_combout\ = (\inst|inst52|ce~q\ & \inst|inst52|state.DataBits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|ce~q\,
	datad => \inst|inst52|state.DataBits~q\,
	combout => \inst|inst52|Selector1~9_combout\);

-- Location: LCCOMB_X10_Y22_N0
\inst|inst52|BitCounter[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|BitCounter[0]~3_combout\ = (\inst|inst52|BitCounter[0]~2_combout\ & (((\inst|inst52|BitCounter\(2) & \inst|inst52|Add1~0_combout\)) # (!\inst|inst52|Selector1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(2),
	datab => \inst|inst52|Add1~0_combout\,
	datac => \inst|inst52|Selector1~9_combout\,
	datad => \inst|inst52|BitCounter[0]~2_combout\,
	combout => \inst|inst52|BitCounter[0]~3_combout\);

-- Location: LCCOMB_X10_Y22_N26
\inst|inst52|BitCounter[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|BitCounter[0]~6_combout\ = (\inst|inst52|BitCounter\(0) & (((\inst|inst52|BitCounter[0]~3_combout\)))) # (!\inst|inst52|BitCounter\(0) & (\inst|inst52|ce~q\ & (\inst|inst52|state.DataBits~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|ce~q\,
	datab => \inst|inst52|state.DataBits~q\,
	datac => \inst|inst52|BitCounter\(0),
	datad => \inst|inst52|BitCounter[0]~3_combout\,
	combout => \inst|inst52|BitCounter[0]~6_combout\);

-- Location: FF_X10_Y22_N27
\inst|inst52|BitCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|BitCounter[0]~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|BitCounter\(0));

-- Location: LCCOMB_X10_Y22_N28
\inst|inst52|BitCounter[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|BitCounter[1]~4_combout\ = (\inst|inst52|BitCounter[0]~3_combout\ & (((\inst|inst52|BitCounter\(1))))) # (!\inst|inst52|BitCounter[0]~3_combout\ & (\inst|inst52|state.DataBits~q\ & (\inst|inst52|BitCounter\(0) $ 
-- (\inst|inst52|BitCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(0),
	datab => \inst|inst52|state.DataBits~q\,
	datac => \inst|inst52|BitCounter\(1),
	datad => \inst|inst52|BitCounter[0]~3_combout\,
	combout => \inst|inst52|BitCounter[1]~4_combout\);

-- Location: FF_X10_Y22_N29
\inst|inst52|BitCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|BitCounter[1]~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|BitCounter\(1));

-- Location: LCCOMB_X10_Y22_N8
\inst|inst52|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add1~0_combout\ = (\inst|inst52|BitCounter\(0) & \inst|inst52|BitCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst52|BitCounter\(0),
	datad => \inst|inst52|BitCounter\(1),
	combout => \inst|inst52|Add1~0_combout\);

-- Location: LCCOMB_X10_Y22_N22
\inst|inst52|Selector1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector1~14_combout\ = (\inst|inst52|ce~q\ & (\inst|inst52|state.DataBits~q\ & (\inst|inst52|Add1~0_combout\ & \inst|inst52|BitCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|ce~q\,
	datab => \inst|inst52|state.DataBits~q\,
	datac => \inst|inst52|Add1~0_combout\,
	datad => \inst|inst52|BitCounter\(2),
	combout => \inst|inst52|Selector1~14_combout\);

-- Location: LCCOMB_X10_Y22_N24
\inst|inst52|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector2~0_combout\ = (!\inst|inst52|Selector1~14_combout\ & ((\inst|inst52|Selector1~10_combout\) # ((!\inst|inst52|Selector1~12_combout\ & \inst|inst52|state.Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Selector1~10_combout\,
	datab => \inst|inst52|Selector1~12_combout\,
	datac => \inst|inst52|state.Start~q\,
	datad => \inst|inst52|Selector1~14_combout\,
	combout => \inst|inst52|Selector2~0_combout\);

-- Location: FF_X10_Y22_N25
\inst|inst52|state.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|Selector2~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|state.Start~q\);

-- Location: LCCOMB_X9_Y22_N4
\inst|inst52|process_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|process_1~2_combout\ = (\inst|inst52|inp_sync2~q\ & (\inst|inst52|state.Start~q\ & (!\inst|inst52|inp_sync3~q\ & !\inst|inst52|divisorCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datab => \inst|inst52|state.Start~q\,
	datac => \inst|inst52|inp_sync3~q\,
	datad => \inst|inst52|divisorCounter\(8),
	combout => \inst|inst52|process_1~2_combout\);

-- Location: LCCOMB_X9_Y22_N6
\inst|inst52|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|LessThan0~1_combout\ = ((!\inst|inst52|divisorCounter\(1) & (!\inst|inst52|divisorCounter\(0) & !\inst|inst52|divisorCounter\(2)))) # (!\inst|inst52|divisorCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(1),
	datab => \inst|inst52|divisorCounter\(0),
	datac => \inst|inst52|divisorCounter\(4),
	datad => \inst|inst52|divisorCounter\(2),
	combout => \inst|inst52|LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y22_N18
\inst|inst52|divisorCounter[5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter[5]~0_combout\ = (\inst|inst52|divisorCounter\(6) & ((\inst|inst52|divisorCounter\(5)) # ((!\inst|inst52|LessThan0~1_combout\ & \inst|inst52|divisorCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|LessThan0~1_combout\,
	datab => \inst|inst52|divisorCounter\(3),
	datac => \inst|inst52|divisorCounter\(6),
	datad => \inst|inst52|divisorCounter\(5),
	combout => \inst|inst52|divisorCounter[5]~0_combout\);

-- Location: LCCOMB_X9_Y22_N12
\inst|inst52|divisorCounter[5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter[5]~1_combout\ = (\inst|inst52|state.Idle~q\ & (((\inst|inst52|divisorCounter\(7) & \inst|inst52|divisorCounter[5]~0_combout\)) # (!\inst|inst52|process_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(7),
	datab => \inst|inst52|state.Idle~q\,
	datac => \inst|inst52|process_1~2_combout\,
	datad => \inst|inst52|divisorCounter[5]~0_combout\,
	combout => \inst|inst52|divisorCounter[5]~1_combout\);

-- Location: LCCOMB_X8_Y22_N0
\inst|inst52|divisorCounter~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~6_combout\ = (\inst|inst52|divisorCounter[5]~1_combout\ & (\inst|inst52|Add0~8_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|divisorCounter[5]~1_combout\,
	datad => \inst|inst52|Add0~8_combout\,
	combout => \inst|inst52|divisorCounter~6_combout\);

-- Location: FF_X8_Y22_N1
\inst|inst52|divisorCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(4));

-- Location: LCCOMB_X9_Y22_N22
\inst|inst52|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|LessThan0~0_combout\ = (!\inst|inst52|divisorCounter\(2) & !\inst|inst52|divisorCounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(2),
	datac => \inst|inst52|divisorCounter\(1),
	combout => \inst|inst52|LessThan0~0_combout\);

-- Location: LCCOMB_X9_Y22_N10
\inst|inst52|sample~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|sample~0_combout\ = (\inst|inst52|divisorCounter\(4) & (\inst|inst52|LessThan0~0_combout\ & (\inst|inst52|divisorCounter\(0) & \inst|inst52|divisorCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(4),
	datab => \inst|inst52|LessThan0~0_combout\,
	datac => \inst|inst52|divisorCounter\(0),
	datad => \inst|inst52|divisorCounter\(7),
	combout => \inst|inst52|sample~0_combout\);

-- Location: LCCOMB_X8_Y22_N28
\inst|inst52|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Add0~16_combout\ = \inst|inst52|Add0~15\ $ (!\inst|inst52|divisorCounter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst52|divisorCounter\(8),
	cin => \inst|inst52|Add0~15\,
	combout => \inst|inst52|Add0~16_combout\);

-- Location: LCCOMB_X8_Y22_N2
\inst|inst52|divisorCounter~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|divisorCounter~9_combout\ = (\inst|inst52|divisorCounter[5]~1_combout\ & (\inst|inst52|Add0~16_combout\ & ((\inst|inst52|Equal1~0_combout\) # (!\inst|inst52|sample~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datab => \inst|inst52|sample~0_combout\,
	datac => \inst|inst52|divisorCounter[5]~1_combout\,
	datad => \inst|inst52|Add0~16_combout\,
	combout => \inst|inst52|divisorCounter~9_combout\);

-- Location: FF_X8_Y22_N3
\inst|inst52|divisorCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|divisorCounter~9_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|divisorCounter\(8));

-- Location: LCCOMB_X9_Y22_N20
\inst|inst52|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Equal1~0_combout\ = ((\inst|inst52|divisorCounter\(3)) # ((\inst|inst52|divisorCounter\(6)) # (!\inst|inst52|divisorCounter\(5)))) # (!\inst|inst52|divisorCounter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(8),
	datab => \inst|inst52|divisorCounter\(3),
	datac => \inst|inst52|divisorCounter\(6),
	datad => \inst|inst52|divisorCounter\(5),
	combout => \inst|inst52|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y22_N14
\inst|inst52|ce~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|ce~0_combout\ = (!\inst|inst52|Equal1~0_combout\ & (\inst|inst52|sample~0_combout\ & \inst|inst52|divisorCounter[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Equal1~0_combout\,
	datac => \inst|inst52|sample~0_combout\,
	datad => \inst|inst52|divisorCounter[5]~1_combout\,
	combout => \inst|inst52|ce~0_combout\);

-- Location: FF_X9_Y22_N15
\inst|inst52|ce\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|ce~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|ce~q\);

-- Location: LCCOMB_X9_Y22_N26
\inst|inst52|Selector1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector1~15_combout\ = (!\inst|inst52|Selector1~10_combout\ & ((!\inst|inst52|state.Start~q\) # (!\inst|inst52|ce~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Selector1~10_combout\,
	datab => \inst|inst52|ce~q\,
	datad => \inst|inst52|state.Start~q\,
	combout => \inst|inst52|Selector1~15_combout\);

-- Location: LCCOMB_X9_Y22_N24
\inst|inst52|Selector1~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector1~13_combout\ = (\inst|inst52|Selector1~14_combout\) # ((\inst|inst52|Selector1~12_combout\ & (!\inst|inst52|Selector1~15_combout\)) # (!\inst|inst52|Selector1~12_combout\ & ((\inst|inst52|state.Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Selector1~15_combout\,
	datab => \inst|inst52|Selector1~14_combout\,
	datac => \inst|inst52|state.Idle~q\,
	datad => \inst|inst52|Selector1~12_combout\,
	combout => \inst|inst52|Selector1~13_combout\);

-- Location: FF_X9_Y22_N25
\inst|inst52|state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|Selector1~13_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|state.Idle~q\);

-- Location: LCCOMB_X9_Y22_N16
\inst|inst52|sample~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|sample~1_combout\ = (!\inst|inst52|divisorCounter\(8) & (\inst|inst52|divisorCounter\(3) & (\inst|inst52|divisorCounter\(6) & !\inst|inst52|divisorCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|divisorCounter\(8),
	datab => \inst|inst52|divisorCounter\(3),
	datac => \inst|inst52|divisorCounter\(6),
	datad => \inst|inst52|divisorCounter\(5),
	combout => \inst|inst52|sample~1_combout\);

-- Location: LCCOMB_X9_Y22_N0
\inst|inst52|sample~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|sample~2_combout\ = (\inst|inst52|state.Idle~q\ & (\inst|inst52|sample~0_combout\ & \inst|inst52|sample~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|state.Idle~q\,
	datac => \inst|inst52|sample~0_combout\,
	datad => \inst|inst52|sample~1_combout\,
	combout => \inst|inst52|sample~2_combout\);

-- Location: FF_X9_Y22_N1
\inst|inst52|sample\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|sample~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|sample~q\);

-- Location: LCCOMB_X10_Y22_N6
\inst|inst52|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector4~0_combout\ = (\inst|inst52|Selector1~14_combout\) # ((!\inst|inst52|sample~q\ & \inst|inst52|state.Stop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|sample~q\,
	datac => \inst|inst52|state.Stop~q\,
	datad => \inst|inst52|Selector1~14_combout\,
	combout => \inst|inst52|Selector4~0_combout\);

-- Location: FF_X10_Y22_N7
\inst|inst52|state.Stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|Selector4~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|state.Stop~q\);

-- Location: LCCOMB_X10_Y22_N12
\inst|inst52|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector0~0_combout\ = (\inst|inst52|done~q\ & ((\inst|inst52|state.Stop~q\) # ((\inst|inst52|state.Start~q\) # (\inst|inst52|state.DataBits~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|state.Stop~q\,
	datab => \inst|inst52|done~q\,
	datac => \inst|inst52|state.Start~q\,
	datad => \inst|inst52|state.DataBits~q\,
	combout => \inst|inst52|Selector0~0_combout\);

-- Location: LCCOMB_X10_Y22_N16
\inst|inst52|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector0~1_combout\ = (\inst|inst52|Selector0~0_combout\) # ((!\inst|inst52|inp_sync2~q\ & (\inst|inst52|sample~q\ & \inst|inst52|state.Stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datab => \inst|inst52|Selector0~0_combout\,
	datac => \inst|inst52|sample~q\,
	datad => \inst|inst52|state.Stop~q\,
	combout => \inst|inst52|Selector0~1_combout\);

-- Location: FF_X10_Y22_N17
\inst|inst52|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|Selector0~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|done~q\);

-- Location: LCCOMB_X10_Y22_N2
\inst|inst52|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~0_combout\ = (\inst|inst52|sample~q\ & \inst|inst52|state.DataBits~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst52|sample~q\,
	datad => \inst|inst52|state.DataBits~q\,
	combout => \inst|inst52|Decoder0~0_combout\);

-- Location: LCCOMB_X13_Y22_N10
\inst|inst52|Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~6_combout\ = (\inst|inst52|BitCounter\(1) & (\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & !\inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~6_combout\);

-- Location: LCCOMB_X13_Y22_N30
\inst|inst52|shiftreg[6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[6]~5_combout\ = (\inst|inst52|Decoder0~6_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~6_combout\ & ((\inst|inst52|shiftreg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(6),
	datad => \inst|inst52|Decoder0~6_combout\,
	combout => \inst|inst52|shiftreg[6]~5_combout\);

-- Location: FF_X13_Y22_N31
\inst|inst52|shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[6]~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(6));

-- Location: LCCOMB_X14_Y22_N14
\inst|inst52|data[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|data[7]~0_combout\ = (!\inst|inst52|hsstate.hsIdle~q\ & \inst|inst52|done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|hsstate.hsIdle~q\,
	datad => \inst|inst52|done~q\,
	combout => \inst|inst52|data[7]~0_combout\);

-- Location: FF_X14_Y23_N27
\inst|inst52|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|shiftreg\(6),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(6));

-- Location: LCCOMB_X13_Y22_N2
\inst|inst52|Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~4_combout\ = (\inst|inst52|BitCounter\(1) & (\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & \inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~4_combout\);

-- Location: LCCOMB_X13_Y22_N22
\inst|inst52|shiftreg[7]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[7]~3_combout\ = (\inst|inst52|Decoder0~4_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~4_combout\ & ((\inst|inst52|shiftreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(7),
	datad => \inst|inst52|Decoder0~4_combout\,
	combout => \inst|inst52|shiftreg[7]~3_combout\);

-- Location: FF_X13_Y22_N23
\inst|inst52|shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[7]~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(7));

-- Location: FF_X14_Y23_N31
\inst|inst52|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|shiftreg\(7),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(7));

-- Location: LCCOMB_X13_Y22_N28
\inst|inst52|Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~5_combout\ = (!\inst|inst52|BitCounter\(1) & (\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & !\inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~5_combout\);

-- Location: LCCOMB_X13_Y22_N0
\inst|inst52|shiftreg[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[4]~4_combout\ = (\inst|inst52|Decoder0~5_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~5_combout\ & ((\inst|inst52|shiftreg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(4),
	datad => \inst|inst52|Decoder0~5_combout\,
	combout => \inst|inst52|shiftreg[4]~4_combout\);

-- Location: FF_X13_Y22_N1
\inst|inst52|shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[4]~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(4));

-- Location: FF_X14_Y23_N9
\inst|inst52|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|shiftreg\(4),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(4));

-- Location: LCCOMB_X13_Y22_N12
\inst|inst52|Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~7_combout\ = (!\inst|inst52|BitCounter\(1) & (\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & \inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~7_combout\);

-- Location: LCCOMB_X13_Y22_N4
\inst|inst52|shiftreg[5]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[5]~6_combout\ = (\inst|inst52|Decoder0~7_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~7_combout\ & ((\inst|inst52|shiftreg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(5),
	datad => \inst|inst52|Decoder0~7_combout\,
	combout => \inst|inst52|shiftreg[5]~6_combout\);

-- Location: FF_X13_Y22_N5
\inst|inst52|shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[5]~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(5));

-- Location: FF_X14_Y23_N13
\inst|inst52|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|shiftreg\(5),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(5));

-- Location: LCCOMB_X14_Y23_N8
\inst|inst70|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux1~1_combout\ = (!\inst|inst52|data\(7) & ((\inst|inst52|data\(6) & (!\inst|inst52|data\(4) & !\inst|inst52|data\(5))) # (!\inst|inst52|data\(6) & (\inst|inst52|data\(4) & \inst|inst52|data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(6),
	datab => \inst|inst52|data\(7),
	datac => \inst|inst52|data\(4),
	datad => \inst|inst52|data\(5),
	combout => \inst|inst70|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y22_N16
\inst|inst52|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~1_combout\ = (\inst|inst52|BitCounter\(1) & (!\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & \inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~1_combout\);

-- Location: LCCOMB_X13_Y22_N24
\inst|inst52|shiftreg[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[3]~0_combout\ = (\inst|inst52|Decoder0~1_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~1_combout\ & ((\inst|inst52|shiftreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(3),
	datad => \inst|inst52|Decoder0~1_combout\,
	combout => \inst|inst52|shiftreg[3]~0_combout\);

-- Location: FF_X13_Y22_N25
\inst|inst52|shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[3]~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(3));

-- Location: FF_X14_Y23_N1
\inst|inst52|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|shiftreg\(3),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(3));

-- Location: LCCOMB_X13_Y22_N18
\inst|inst52|Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~2_combout\ = (\inst|inst52|BitCounter\(1) & (!\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & !\inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~2_combout\);

-- Location: LCCOMB_X13_Y22_N14
\inst|inst52|shiftreg[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[2]~1_combout\ = (\inst|inst52|Decoder0~2_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~2_combout\ & ((\inst|inst52|shiftreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(2),
	datad => \inst|inst52|Decoder0~2_combout\,
	combout => \inst|inst52|shiftreg[2]~1_combout\);

-- Location: FF_X13_Y22_N15
\inst|inst52|shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[2]~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(2));

-- Location: LCCOMB_X14_Y23_N6
\inst|inst52|data[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|data[2]~feeder_combout\ = \inst|inst52|shiftreg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst52|shiftreg\(2),
	combout => \inst|inst52|data[2]~feeder_combout\);

-- Location: FF_X14_Y23_N7
\inst|inst52|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|data[2]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(2));

-- Location: LCCOMB_X13_Y22_N6
\inst|inst52|Decoder0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~8_combout\ = (!\inst|inst52|BitCounter\(1) & (!\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & !\inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~8_combout\);

-- Location: LCCOMB_X13_Y22_N26
\inst|inst52|shiftreg[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[0]~7_combout\ = (\inst|inst52|Decoder0~8_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~8_combout\ & ((\inst|inst52|shiftreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(0),
	datad => \inst|inst52|Decoder0~8_combout\,
	combout => \inst|inst52|shiftreg[0]~7_combout\);

-- Location: FF_X13_Y22_N27
\inst|inst52|shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[0]~7_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(0));

-- Location: FF_X14_Y23_N15
\inst|inst52|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|shiftreg\(0),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(0));

-- Location: LCCOMB_X13_Y22_N20
\inst|inst52|Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Decoder0~3_combout\ = (!\inst|inst52|BitCounter\(1) & (!\inst|inst52|BitCounter\(2) & (\inst|inst52|Decoder0~0_combout\ & \inst|inst52|BitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|BitCounter\(1),
	datab => \inst|inst52|BitCounter\(2),
	datac => \inst|inst52|Decoder0~0_combout\,
	datad => \inst|inst52|BitCounter\(0),
	combout => \inst|inst52|Decoder0~3_combout\);

-- Location: LCCOMB_X13_Y22_N8
\inst|inst52|shiftreg[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|shiftreg[1]~2_combout\ = (\inst|inst52|Decoder0~3_combout\ & (!\inst|inst52|inp_sync2~q\)) # (!\inst|inst52|Decoder0~3_combout\ & ((\inst|inst52|shiftreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|inp_sync2~q\,
	datac => \inst|inst52|shiftreg\(1),
	datad => \inst|inst52|Decoder0~3_combout\,
	combout => \inst|inst52|shiftreg[1]~2_combout\);

-- Location: FF_X13_Y22_N9
\inst|inst52|shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|shiftreg[1]~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|shiftreg\(1));

-- Location: FF_X14_Y23_N17
\inst|inst52|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst52|shiftreg\(1),
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst52|data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|data\(1));

-- Location: LCCOMB_X14_Y23_N26
\inst|inst70|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux1~0_combout\ = (\inst|inst52|data\(2) & (((!\inst|inst52|data\(1)) # (!\inst|inst52|data\(6))) # (!\inst|inst52|data\(0)))) # (!\inst|inst52|data\(2) & ((\inst|inst52|data\(1)) # ((\inst|inst52|data\(0) & \inst|inst52|data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(2),
	datab => \inst|inst52|data\(0),
	datac => \inst|inst52|data\(6),
	datad => \inst|inst52|data\(1),
	combout => \inst|inst70|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y23_N12
\inst|inst70|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux1~2_combout\ = ((\inst|inst70|Mux1~0_combout\ & (\inst|inst52|data\(3))) # (!\inst|inst70|Mux1~0_combout\ & ((!\inst|inst52|data\(5))))) # (!\inst|inst70|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Mux1~1_combout\,
	datab => \inst|inst52|data\(3),
	datac => \inst|inst52|data\(5),
	datad => \inst|inst70|Mux1~0_combout\,
	combout => \inst|inst70|Mux1~2_combout\);

-- Location: LCCOMB_X17_Y23_N0
\inst|inst70|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector5~0_combout\ = (\inst|inst70|Mux1~2_combout\ & (\inst|inst52|req~q\ & (\inst|inst70|state.AckDataMSB~q\))) # (!\inst|inst70|Mux1~2_combout\ & ((\inst|inst70|state.DecodeMSB~q\) # ((\inst|inst52|req~q\ & 
-- \inst|inst70|state.AckDataMSB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Mux1~2_combout\,
	datab => \inst|inst52|req~q\,
	datac => \inst|inst70|state.AckDataMSB~q\,
	datad => \inst|inst70|state.DecodeMSB~q\,
	combout => \inst|inst70|Selector5~0_combout\);

-- Location: FF_X17_Y23_N1
\inst|inst70|state.AckDataMSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector5~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.AckDataMSB~q\);

-- Location: LCCOMB_X17_Y23_N2
\inst|inst70|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector6~0_combout\ = (!\inst|inst52|req~q\ & ((\inst|inst70|state.WaitLSB~q\) # (\inst|inst70|state.AckDataMSB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|req~q\,
	datac => \inst|inst70|state.WaitLSB~q\,
	datad => \inst|inst70|state.AckDataMSB~q\,
	combout => \inst|inst70|Selector6~0_combout\);

-- Location: FF_X17_Y23_N3
\inst|inst70|state.WaitLSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector6~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.WaitLSB~q\);

-- Location: LCCOMB_X12_Y23_N14
\inst|inst70|state.SPI_D1b~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D1b~feeder_combout\ = \inst|inst70|state.SPI_D1a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D1a~q\,
	combout => \inst|inst70|state.SPI_D1b~feeder_combout\);

-- Location: LCCOMB_X17_Y23_N28
\inst|inst70|Selector44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector44~0_combout\ = (\inst|inst70|state.AckDataLSB~q\) # (!\inst|inst70|slowerer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.AckDataLSB~q\,
	datac => \inst|inst70|slowerer\(0),
	combout => \inst|inst70|Selector44~0_combout\);

-- Location: LCCOMB_X17_Y23_N30
\inst|inst70|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector2~0_combout\ = (\inst|inst70|WideOr7~0_combout\ & (\inst|inst52|req~q\ & (\inst|inst70|state.AckSymbol~q\))) # (!\inst|inst70|WideOr7~0_combout\ & ((\inst|inst70|Mux1~2_combout\) # ((\inst|inst52|req~q\ & 
-- \inst|inst70|state.AckSymbol~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|WideOr7~0_combout\,
	datab => \inst|inst52|req~q\,
	datac => \inst|inst70|state.AckSymbol~q\,
	datad => \inst|inst70|Mux1~2_combout\,
	combout => \inst|inst70|Selector2~0_combout\);

-- Location: FF_X17_Y23_N31
\inst|inst70|state.AckSymbol\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector2~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.AckSymbol~q\);

-- Location: LCCOMB_X14_Y22_N16
\inst|inst70|Selector7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector7~3_combout\ = (!\inst|inst52|req~q\ & \inst|inst70|state.AckSymbol~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|req~q\,
	datac => \inst|inst70|state.AckSymbol~q\,
	combout => \inst|inst70|Selector7~3_combout\);

-- Location: FF_X14_Y22_N17
\inst|inst70|state.SendSymbol\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector7~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SendSymbol~q\);

-- Location: LCCOMB_X16_Y15_N4
\inst|inst59|divisorCounter[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[0]~9_combout\ = \inst|inst59|divisorCounter\(0) $ (VCC)
-- \inst|inst59|divisorCounter[0]~10\ = CARRY(\inst|inst59|divisorCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|divisorCounter\(0),
	datad => VCC,
	combout => \inst|inst59|divisorCounter[0]~9_combout\,
	cout => \inst|inst59|divisorCounter[0]~10\);

-- Location: LCCOMB_X16_Y16_N12
\inst|inst59|Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~2_combout\ = (\inst|inst59|state.DataBits~q\ & \inst|inst59|Selector10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|state.DataBits~q\,
	datad => \inst|inst59|Selector10~1_combout\,
	combout => \inst|inst59|Selector10~2_combout\);

-- Location: LCCOMB_X17_Y22_N2
\inst|inst70|Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector26~0_combout\ = (\inst|inst70|state.SendMSB~q\) # ((\inst|inst70|state.SendMSBWaitAck~q\ & !\inst|inst59|ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SendMSB~q\,
	datac => \inst|inst70|state.SendMSBWaitAck~q\,
	datad => \inst|inst59|ack~q\,
	combout => \inst|inst70|Selector26~0_combout\);

-- Location: FF_X17_Y22_N3
\inst|inst70|state.SendMSBWaitAck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector26~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SendMSBWaitAck~q\);

-- Location: LCCOMB_X17_Y22_N4
\inst|inst70|Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector7~1_combout\ = (\inst|inst59|ack~q\ & \inst|inst70|state.SendMSBWaitAck~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ack~q\,
	datad => \inst|inst70|state.SendMSBWaitAck~q\,
	combout => \inst|inst70|Selector7~1_combout\);

-- Location: FF_X17_Y22_N5
\inst|inst70|state.SendLSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector7~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SendLSB~q\);

-- Location: LCCOMB_X17_Y22_N6
\inst|inst70|Selector39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector39~0_combout\ = (\inst|inst70|txreq~q\) # ((\inst|inst70|state.SendLSB~q\) # ((\inst|inst70|state.SendSymbol~q\) # (\inst|inst70|state.SendMSB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txreq~q\,
	datab => \inst|inst70|state.SendLSB~q\,
	datac => \inst|inst70|state.SendSymbol~q\,
	datad => \inst|inst70|state.SendMSB~q\,
	combout => \inst|inst70|Selector39~0_combout\);

-- Location: LCCOMB_X16_Y18_N0
\inst|inst70|Selector39~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector39~1_combout\ = (\inst|inst70|Selector39~0_combout\ & ((\inst|inst70|Selector27~0_combout\) # ((!\inst|inst59|ack~q\ & \inst|inst70|txreq~q\)))) # (!\inst|inst70|Selector39~0_combout\ & (!\inst|inst59|ack~q\ & 
-- (\inst|inst70|txreq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Selector39~0_combout\,
	datab => \inst|inst59|ack~q\,
	datac => \inst|inst70|txreq~q\,
	datad => \inst|inst70|Selector27~0_combout\,
	combout => \inst|inst70|Selector39~1_combout\);

-- Location: FF_X16_Y18_N1
\inst|inst70|txreq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector39~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txreq~q\);

-- Location: LCCOMB_X16_Y22_N18
\inst|inst59|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector3~0_combout\ = (!\inst|inst59|POP_req~q\ & (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst70|txreq~q\) # (\inst|inst59|DataFetch_state.WaitPushAck~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txreq~q\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|DataFetch_state.WaitPushAck~q\,
	combout => \inst|inst59|Selector3~0_combout\);

-- Location: LCCOMB_X16_Y22_N2
\inst|inst59|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector3~1_combout\ = (\inst|inst59|Selector3~0_combout\) # ((\inst|inst59|DataFetch_state.Idle~q\ & (\inst|inst59|DataFetch_state.WaitPushAck~q\ & \inst|inst59|DataFetch_state.Idle~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|Selector3~0_combout\,
	datac => \inst|inst59|DataFetch_state.WaitPushAck~q\,
	datad => \inst|inst59|DataFetch_state.Idle~0_combout\,
	combout => \inst|inst59|Selector3~1_combout\);

-- Location: FF_X16_Y22_N3
\inst|inst59|DataFetch_state.WaitPushAck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector3~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataFetch_state.WaitPushAck~q\);

-- Location: LCCOMB_X16_Y22_N0
\inst|inst59|DataFetch_state.Idle~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataFetch_state.Idle~0_combout\ = (\inst|inst59|DataFetch_state.WaitPushAck~q\ & ((\inst|inst70|txreq~q\))) # (!\inst|inst59|DataFetch_state.WaitPushAck~q\ & (\inst|inst59|POP_req~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txreq~q\,
	datad => \inst|inst59|DataFetch_state.WaitPushAck~q\,
	combout => \inst|inst59|DataFetch_state.Idle~0_combout\);

-- Location: LCCOMB_X16_Y22_N4
\inst|inst59|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector2~0_combout\ = (\inst|inst70|txreq~q\) # (\inst|inst59|POP_req~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst70|txreq~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Selector2~0_combout\);

-- Location: FF_X16_Y22_N1
\inst|inst59|DataFetch_state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|DataFetch_state.Idle~0_combout\,
	asdata => \inst|inst59|Selector2~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|ALT_INV_DataFetch_state.Idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataFetch_state.Idle~q\);

-- Location: LCCOMB_X16_Y22_N30
\inst|inst59|POP_Ack~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|POP_Ack~0_combout\ = (\inst|inst59|DataFetch_state.Idle~q\ & (\inst|inst59|POP_Ack~q\ & ((\inst|inst59|POP_req~q\) # (\inst|inst59|DataFetch_state.WaitPushAck~q\)))) # (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # 
-- ((\inst|inst59|POP_Ack~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|POP_Ack~q\,
	datad => \inst|inst59|DataFetch_state.WaitPushAck~q\,
	combout => \inst|inst59|POP_Ack~0_combout\);

-- Location: FF_X16_Y22_N31
\inst|inst59|POP_Ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|POP_Ack~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|POP_Ack~q\);

-- Location: LCCOMB_X16_Y18_N28
\inst|inst59|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector9~0_combout\ = (\inst|inst59|state.Pre_start_Ack1~q\) # ((!\inst|inst59|POP_Ack~q\ & \inst|inst59|state.Pre_start_Ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_Ack~q\,
	datac => \inst|inst59|state.Pre_start_Ack~q\,
	datad => \inst|inst59|state.Pre_start_Ack1~q\,
	combout => \inst|inst59|Selector9~0_combout\);

-- Location: FF_X16_Y18_N29
\inst|inst59|state.Pre_start_Ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector9~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|state.Pre_start_Ack~q\);

-- Location: LCCOMB_X16_Y16_N28
\inst|inst59|Selector10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~6_combout\ = (\inst|inst59|state.Pre_start_Ack~q\ & \inst|inst59|POP_Ack~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|state.Pre_start_Ack~q\,
	datac => \inst|inst59|POP_Ack~q\,
	combout => \inst|inst59|Selector10~6_combout\);

-- Location: LCCOMB_X16_Y16_N20
\inst|inst59|Selector10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~4_combout\ = (\inst|inst59|ce~q\ & ((\inst|inst59|state.Start~q\) # (\inst|inst59|state.Stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|state.Start~q\,
	datac => \inst|inst59|state.Stop~q\,
	datad => \inst|inst59|ce~q\,
	combout => \inst|inst59|Selector10~4_combout\);

-- Location: LCCOMB_X16_Y16_N26
\inst|inst59|Selector10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~3_combout\ = (\inst|inst59|state.Pre_start_Ack1~q\) # ((\inst|inst59|state.Pre_start~q\) # ((\inst|inst59|POP_Ack~q\ & \inst|inst59|state.Pre_start_Ack~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_Ack~q\,
	datab => \inst|inst59|state.Pre_start_Ack~q\,
	datac => \inst|inst59|state.Pre_start_Ack1~q\,
	datad => \inst|inst59|state.Pre_start~q\,
	combout => \inst|inst59|Selector10~3_combout\);

-- Location: LCCOMB_X17_Y19_N10
\inst|inst59|DataCounter[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[0]~6_combout\ = \inst|inst59|DataCounter\(0) $ (VCC)
-- \inst|inst59|DataCounter[0]~7\ = CARRY(\inst|inst59|DataCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datad => VCC,
	combout => \inst|inst59|DataCounter[0]~6_combout\,
	cout => \inst|inst59|DataCounter[0]~7\);

-- Location: LCCOMB_X17_Y19_N12
\inst|inst59|DataCounter[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[1]~8_combout\ = (\inst|inst59|DataCounter\(1) & ((\inst|inst59|POP_req~q\ & (\inst|inst59|DataCounter[0]~7\ & VCC)) # (!\inst|inst59|POP_req~q\ & (!\inst|inst59|DataCounter[0]~7\)))) # (!\inst|inst59|DataCounter\(1) & 
-- ((\inst|inst59|POP_req~q\ & (!\inst|inst59|DataCounter[0]~7\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst59|DataCounter[0]~7\) # (GND)))))
-- \inst|inst59|DataCounter[1]~9\ = CARRY((\inst|inst59|DataCounter\(1) & (!\inst|inst59|POP_req~q\ & !\inst|inst59|DataCounter[0]~7\)) # (!\inst|inst59|DataCounter\(1) & ((!\inst|inst59|DataCounter[0]~7\) # (!\inst|inst59|POP_req~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(1),
	datab => \inst|inst59|POP_req~q\,
	datad => VCC,
	cin => \inst|inst59|DataCounter[0]~7\,
	combout => \inst|inst59|DataCounter[1]~8_combout\,
	cout => \inst|inst59|DataCounter[1]~9\);

-- Location: FF_X17_Y19_N13
\inst|inst59|DataCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|DataCounter[1]~8_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|DataCounter[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataCounter\(1));

-- Location: LCCOMB_X17_Y19_N14
\inst|inst59|DataCounter[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[2]~12_combout\ = ((\inst|inst59|POP_req~q\ $ (\inst|inst59|DataCounter\(2) $ (!\inst|inst59|DataCounter[1]~9\)))) # (GND)
-- \inst|inst59|DataCounter[2]~13\ = CARRY((\inst|inst59|POP_req~q\ & ((\inst|inst59|DataCounter\(2)) # (!\inst|inst59|DataCounter[1]~9\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst59|DataCounter\(2) & !\inst|inst59|DataCounter[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataCounter\(2),
	datad => VCC,
	cin => \inst|inst59|DataCounter[1]~9\,
	combout => \inst|inst59|DataCounter[2]~12_combout\,
	cout => \inst|inst59|DataCounter[2]~13\);

-- Location: FF_X17_Y19_N15
\inst|inst59|DataCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|DataCounter[2]~12_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|DataCounter[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataCounter\(2));

-- Location: LCCOMB_X17_Y19_N16
\inst|inst59|DataCounter[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[3]~14_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|DataCounter\(3) & (\inst|inst59|DataCounter[2]~13\ & VCC)) # (!\inst|inst59|DataCounter\(3) & (!\inst|inst59|DataCounter[2]~13\)))) # (!\inst|inst59|POP_req~q\ & 
-- ((\inst|inst59|DataCounter\(3) & (!\inst|inst59|DataCounter[2]~13\)) # (!\inst|inst59|DataCounter\(3) & ((\inst|inst59|DataCounter[2]~13\) # (GND)))))
-- \inst|inst59|DataCounter[3]~15\ = CARRY((\inst|inst59|POP_req~q\ & (!\inst|inst59|DataCounter\(3) & !\inst|inst59|DataCounter[2]~13\)) # (!\inst|inst59|POP_req~q\ & ((!\inst|inst59|DataCounter[2]~13\) # (!\inst|inst59|DataCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataCounter\(3),
	datad => VCC,
	cin => \inst|inst59|DataCounter[2]~13\,
	combout => \inst|inst59|DataCounter[3]~14_combout\,
	cout => \inst|inst59|DataCounter[3]~15\);

-- Location: FF_X17_Y19_N17
\inst|inst59|DataCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|DataCounter[3]~14_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|DataCounter[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataCounter\(3));

-- Location: LCCOMB_X17_Y19_N18
\inst|inst59|DataCounter[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[4]~16_combout\ = ((\inst|inst59|POP_req~q\ $ (\inst|inst59|DataCounter\(4) $ (!\inst|inst59|DataCounter[3]~15\)))) # (GND)
-- \inst|inst59|DataCounter[4]~17\ = CARRY((\inst|inst59|POP_req~q\ & ((\inst|inst59|DataCounter\(4)) # (!\inst|inst59|DataCounter[3]~15\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst59|DataCounter\(4) & !\inst|inst59|DataCounter[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataCounter\(4),
	datad => VCC,
	cin => \inst|inst59|DataCounter[3]~15\,
	combout => \inst|inst59|DataCounter[4]~16_combout\,
	cout => \inst|inst59|DataCounter[4]~17\);

-- Location: FF_X17_Y19_N19
\inst|inst59|DataCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|DataCounter[4]~16_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|DataCounter[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataCounter\(4));

-- Location: LCCOMB_X17_Y19_N20
\inst|inst59|DataCounter[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[5]~18_combout\ = \inst|inst59|DataCounter\(5) $ (\inst|inst59|DataCounter[4]~17\ $ (\inst|inst59|POP_req~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|POP_req~q\,
	cin => \inst|inst59|DataCounter[4]~17\,
	combout => \inst|inst59|DataCounter[5]~18_combout\);

-- Location: FF_X17_Y19_N21
\inst|inst59|DataCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|DataCounter[5]~18_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|DataCounter[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataCounter\(5));

-- Location: LCCOMB_X17_Y19_N0
\inst|inst59|DataCounter[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[5]~10_combout\ = ((\inst|inst59|DataCounter\(5) & ((\inst|inst59|DataCounter\(3)) # (\inst|inst59|DataCounter\(4))))) # (!\inst|inst70|txreq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txreq~q\,
	datab => \inst|inst59|DataCounter\(3),
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|DataCounter\(4),
	combout => \inst|inst59|DataCounter[5]~10_combout\);

-- Location: LCCOMB_X16_Y19_N20
\inst|inst59|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|LessThan0~0_combout\ = (\inst|inst59|DataCounter\(1)) # ((\inst|inst59|DataCounter\(3)) # ((\inst|inst59|DataCounter\(2)) # (\inst|inst59|DataCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(1),
	datab => \inst|inst59|DataCounter\(3),
	datac => \inst|inst59|DataCounter\(2),
	datad => \inst|inst59|DataCounter\(4),
	combout => \inst|inst59|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y19_N22
\inst|inst59|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|LessThan0~1_combout\ = (\inst|inst59|DataCounter\(0)) # ((\inst|inst59|DataCounter\(5)) # (\inst|inst59|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|DataCounter\(0),
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|LessThan0~0_combout\,
	combout => \inst|inst59|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y19_N26
\inst|inst59|DataCounter[5]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|DataCounter[5]~11_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\ & ((\inst|inst59|LessThan0~1_combout\))) # (!\inst|inst59|POP_req~q\ & (!\inst|inst59|DataCounter[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|DataCounter[5]~10_combout\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|LessThan0~1_combout\,
	combout => \inst|inst59|DataCounter[5]~11_combout\);

-- Location: FF_X17_Y19_N11
\inst|inst59|DataCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|DataCounter[0]~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|DataCounter[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|DataCounter\(0));

-- Location: LCCOMB_X15_Y16_N24
\inst|inst59|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~0_combout\ = (!\inst|inst59|state.Idle~q\ & ((\inst|inst59|DataCounter\(0)) # ((\inst|inst59|DataCounter\(5)) # (\inst|inst59|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datab => \inst|inst59|state.Idle~q\,
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|LessThan0~0_combout\,
	combout => \inst|inst59|Selector10~0_combout\);

-- Location: LCCOMB_X16_Y16_N10
\inst|inst59|Selector10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~5_combout\ = (\inst|inst59|Selector10~4_combout\) # ((\inst|inst59|Selector10~3_combout\) # (\inst|inst59|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Selector10~4_combout\,
	datac => \inst|inst59|Selector10~3_combout\,
	datad => \inst|inst59|Selector10~0_combout\,
	combout => \inst|inst59|Selector10~5_combout\);

-- Location: LCCOMB_X16_Y16_N14
\inst|inst59|Selector10~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~7_combout\ = (!\inst|inst59|Selector10~2_combout\ & ((\inst|inst59|Selector10~6_combout\) # ((\inst|inst59|state.Start~q\ & !\inst|inst59|Selector10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Selector10~2_combout\,
	datab => \inst|inst59|Selector10~6_combout\,
	datac => \inst|inst59|state.Start~q\,
	datad => \inst|inst59|Selector10~5_combout\,
	combout => \inst|inst59|Selector10~7_combout\);

-- Location: FF_X16_Y16_N15
\inst|inst59|state.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector10~7_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|state.Start~q\);

-- Location: LCCOMB_X16_Y16_N24
\inst|inst59|Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector11~0_combout\ = (\inst|inst59|ce~q\ & ((\inst|inst59|state.Start~q\) # ((\inst|inst59|state.DataBits~q\ & !\inst|inst59|Selector10~1_combout\)))) # (!\inst|inst59|ce~q\ & (((\inst|inst59|state.DataBits~q\ & 
-- !\inst|inst59|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ce~q\,
	datab => \inst|inst59|state.Start~q\,
	datac => \inst|inst59|state.DataBits~q\,
	datad => \inst|inst59|Selector10~1_combout\,
	combout => \inst|inst59|Selector11~0_combout\);

-- Location: FF_X16_Y16_N25
\inst|inst59|state.DataBits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector11~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|state.DataBits~q\);

-- Location: LCCOMB_X16_Y16_N22
\inst|inst59|state.Stop~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|state.Stop~2_combout\ = (\inst|inst59|Selector10~1_combout\ & ((\inst|inst59|state.DataBits~q\) # ((\inst|inst59|state.Stop~q\ & !\inst|inst59|Selector10~5_combout\)))) # (!\inst|inst59|Selector10~1_combout\ & (((\inst|inst59|state.Stop~q\ & 
-- !\inst|inst59|Selector10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Selector10~1_combout\,
	datab => \inst|inst59|state.DataBits~q\,
	datac => \inst|inst59|state.Stop~q\,
	datad => \inst|inst59|Selector10~5_combout\,
	combout => \inst|inst59|state.Stop~2_combout\);

-- Location: FF_X16_Y16_N23
\inst|inst59|state.Stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|state.Stop~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|state.Stop~q\);

-- Location: LCCOMB_X16_Y16_N8
\inst|inst59|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector6~0_combout\ = (\inst|inst59|ce~q\ & (!\inst|inst59|state.Stop~q\ & ((\inst|inst59|state.Idle~q\) # (\inst|inst59|LessThan0~1_combout\)))) # (!\inst|inst59|ce~q\ & (((\inst|inst59|state.Idle~q\) # 
-- (\inst|inst59|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ce~q\,
	datab => \inst|inst59|state.Stop~q\,
	datac => \inst|inst59|state.Idle~q\,
	datad => \inst|inst59|LessThan0~1_combout\,
	combout => \inst|inst59|Selector6~0_combout\);

-- Location: FF_X16_Y16_N9
\inst|inst59|state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector6~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|state.Idle~q\);

-- Location: LCCOMB_X16_Y15_N22
\inst|inst59|state.Idle~_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|state.Idle~_wirecell_combout\ = !\inst|inst59|state.Idle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|state.Idle~q\,
	combout => \inst|inst59|state.Idle~_wirecell_combout\);

-- Location: LCCOMB_X16_Y15_N28
\inst|inst59|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Equal0~0_combout\ = (\inst|inst59|divisorCounter\(3)) # ((\inst|inst59|divisorCounter\(2)) # ((\inst|inst59|divisorCounter\(1)) # (!\inst|inst59|divisorCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|divisorCounter\(3),
	datab => \inst|inst59|divisorCounter\(2),
	datac => \inst|inst59|divisorCounter\(0),
	datad => \inst|inst59|divisorCounter\(1),
	combout => \inst|inst59|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y15_N12
\inst|inst59|divisorCounter[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[4]~18_combout\ = (\inst|inst59|divisorCounter\(4) & (\inst|inst59|divisorCounter[3]~17\ $ (GND))) # (!\inst|inst59|divisorCounter\(4) & (!\inst|inst59|divisorCounter[3]~17\ & VCC))
-- \inst|inst59|divisorCounter[4]~19\ = CARRY((\inst|inst59|divisorCounter\(4) & !\inst|inst59|divisorCounter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|divisorCounter\(4),
	datad => VCC,
	cin => \inst|inst59|divisorCounter[3]~17\,
	combout => \inst|inst59|divisorCounter[4]~18_combout\,
	cout => \inst|inst59|divisorCounter[4]~19\);

-- Location: LCCOMB_X16_Y15_N14
\inst|inst59|divisorCounter[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[5]~20_combout\ = (\inst|inst59|divisorCounter\(5) & (!\inst|inst59|divisorCounter[4]~19\)) # (!\inst|inst59|divisorCounter\(5) & ((\inst|inst59|divisorCounter[4]~19\) # (GND)))
-- \inst|inst59|divisorCounter[5]~21\ = CARRY((!\inst|inst59|divisorCounter[4]~19\) # (!\inst|inst59|divisorCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|divisorCounter\(5),
	datad => VCC,
	cin => \inst|inst59|divisorCounter[4]~19\,
	combout => \inst|inst59|divisorCounter[5]~20_combout\,
	cout => \inst|inst59|divisorCounter[5]~21\);

-- Location: LCCOMB_X16_Y15_N24
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X16_Y15_N15
\inst|inst59|divisorCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[5]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(5));

-- Location: LCCOMB_X16_Y15_N16
\inst|inst59|divisorCounter[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[6]~22_combout\ = (\inst|inst59|divisorCounter\(6) & (\inst|inst59|divisorCounter[5]~21\ $ (GND))) # (!\inst|inst59|divisorCounter\(6) & (!\inst|inst59|divisorCounter[5]~21\ & VCC))
-- \inst|inst59|divisorCounter[6]~23\ = CARRY((\inst|inst59|divisorCounter\(6) & !\inst|inst59|divisorCounter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|divisorCounter\(6),
	datad => VCC,
	cin => \inst|inst59|divisorCounter[5]~21\,
	combout => \inst|inst59|divisorCounter[6]~22_combout\,
	cout => \inst|inst59|divisorCounter[6]~23\);

-- Location: FF_X16_Y15_N17
\inst|inst59|divisorCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[6]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(6));

-- Location: LCCOMB_X16_Y15_N18
\inst|inst59|divisorCounter[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[7]~24_combout\ = (\inst|inst59|divisorCounter\(7) & (!\inst|inst59|divisorCounter[6]~23\)) # (!\inst|inst59|divisorCounter\(7) & ((\inst|inst59|divisorCounter[6]~23\) # (GND)))
-- \inst|inst59|divisorCounter[7]~25\ = CARRY((!\inst|inst59|divisorCounter[6]~23\) # (!\inst|inst59|divisorCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|divisorCounter\(7),
	datad => VCC,
	cin => \inst|inst59|divisorCounter[6]~23\,
	combout => \inst|inst59|divisorCounter[7]~24_combout\,
	cout => \inst|inst59|divisorCounter[7]~25\);

-- Location: FF_X16_Y15_N19
\inst|inst59|divisorCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[7]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(7));

-- Location: LCCOMB_X16_Y15_N20
\inst|inst59|divisorCounter[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[8]~26_combout\ = \inst|inst59|divisorCounter[7]~25\ $ (!\inst|inst59|divisorCounter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|divisorCounter\(8),
	cin => \inst|inst59|divisorCounter[7]~25\,
	combout => \inst|inst59|divisorCounter[8]~26_combout\);

-- Location: FF_X16_Y15_N21
\inst|inst59|divisorCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[8]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(8));

-- Location: LCCOMB_X16_Y15_N26
\inst|inst59|divisorCounter[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[2]~13_combout\ = ((!\inst|inst59|Equal0~0_combout\ & (\inst|inst59|divisorCounter\(8) & !\inst|inst59|Equal0~1_combout\))) # (!\inst|inst59|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Equal0~0_combout\,
	datab => \inst|inst59|divisorCounter\(8),
	datac => \inst|inst59|Equal0~1_combout\,
	datad => \inst|inst59|state.Idle~q\,
	combout => \inst|inst59|divisorCounter[2]~13_combout\);

-- Location: FF_X16_Y15_N5
\inst|inst59|divisorCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[0]~9_combout\,
	asdata => \inst|inst59|state.Idle~_wirecell_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(0));

-- Location: LCCOMB_X16_Y15_N6
\inst|inst59|divisorCounter[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[1]~11_combout\ = (\inst|inst59|divisorCounter\(1) & (!\inst|inst59|divisorCounter[0]~10\)) # (!\inst|inst59|divisorCounter\(1) & ((\inst|inst59|divisorCounter[0]~10\) # (GND)))
-- \inst|inst59|divisorCounter[1]~12\ = CARRY((!\inst|inst59|divisorCounter[0]~10\) # (!\inst|inst59|divisorCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|divisorCounter\(1),
	datad => VCC,
	cin => \inst|inst59|divisorCounter[0]~10\,
	combout => \inst|inst59|divisorCounter[1]~11_combout\,
	cout => \inst|inst59|divisorCounter[1]~12\);

-- Location: FF_X16_Y15_N7
\inst|inst59|divisorCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[1]~11_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(1));

-- Location: LCCOMB_X16_Y15_N8
\inst|inst59|divisorCounter[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[2]~14_combout\ = (\inst|inst59|divisorCounter\(2) & (\inst|inst59|divisorCounter[1]~12\ $ (GND))) # (!\inst|inst59|divisorCounter\(2) & (!\inst|inst59|divisorCounter[1]~12\ & VCC))
-- \inst|inst59|divisorCounter[2]~15\ = CARRY((\inst|inst59|divisorCounter\(2) & !\inst|inst59|divisorCounter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|divisorCounter\(2),
	datad => VCC,
	cin => \inst|inst59|divisorCounter[1]~12\,
	combout => \inst|inst59|divisorCounter[2]~14_combout\,
	cout => \inst|inst59|divisorCounter[2]~15\);

-- Location: FF_X16_Y15_N9
\inst|inst59|divisorCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[2]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(2));

-- Location: LCCOMB_X16_Y15_N10
\inst|inst59|divisorCounter[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|divisorCounter[3]~16_combout\ = (\inst|inst59|divisorCounter\(3) & (!\inst|inst59|divisorCounter[2]~15\)) # (!\inst|inst59|divisorCounter\(3) & ((\inst|inst59|divisorCounter[2]~15\) # (GND)))
-- \inst|inst59|divisorCounter[3]~17\ = CARRY((!\inst|inst59|divisorCounter[2]~15\) # (!\inst|inst59|divisorCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|divisorCounter\(3),
	datad => VCC,
	cin => \inst|inst59|divisorCounter[2]~15\,
	combout => \inst|inst59|divisorCounter[3]~16_combout\,
	cout => \inst|inst59|divisorCounter[3]~17\);

-- Location: FF_X16_Y15_N11
\inst|inst59|divisorCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[3]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(3));

-- Location: FF_X16_Y15_N13
\inst|inst59|divisorCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|divisorCounter[4]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst59|divisorCounter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|divisorCounter\(4));

-- Location: LCCOMB_X16_Y15_N30
\inst|inst59|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Equal0~1_combout\ = ((\inst|inst59|divisorCounter\(6)) # ((!\inst|inst59|divisorCounter\(7)) # (!\inst|inst59|divisorCounter\(5)))) # (!\inst|inst59|divisorCounter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|divisorCounter\(4),
	datab => \inst|inst59|divisorCounter\(6),
	datac => \inst|inst59|divisorCounter\(5),
	datad => \inst|inst59|divisorCounter\(7),
	combout => \inst|inst59|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y16_N6
\inst|inst59|ce~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|ce~0_combout\ = (!\inst|inst59|Equal0~1_combout\ & (\inst|inst59|state.Idle~q\ & (!\inst|inst59|Equal0~0_combout\ & \inst|inst59|divisorCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Equal0~1_combout\,
	datab => \inst|inst59|state.Idle~q\,
	datac => \inst|inst59|Equal0~0_combout\,
	datad => \inst|inst59|divisorCounter\(8),
	combout => \inst|inst59|ce~0_combout\);

-- Location: FF_X16_Y16_N7
\inst|inst59|ce\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|ce~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|ce~q\);

-- Location: LCCOMB_X17_Y16_N6
\inst|inst59|bitCounter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|bitCounter~0_combout\ = (\inst|inst59|ce~q\ & (\inst|inst59|bitCounter\(0) & ((!\inst|inst59|bitCounter\(2)) # (!\inst|inst59|bitCounter\(1))))) # (!\inst|inst59|ce~q\ & (((!\inst|inst59|bitCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ce~q\,
	datab => \inst|inst59|bitCounter\(1),
	datac => \inst|inst59|bitCounter\(2),
	datad => \inst|inst59|bitCounter\(0),
	combout => \inst|inst59|bitCounter~0_combout\);

-- Location: LCCOMB_X17_Y16_N18
\inst|inst59|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector18~0_combout\ = (\inst|inst59|state.DataBits~q\ & (((!\inst|inst59|bitCounter~0_combout\)))) # (!\inst|inst59|state.DataBits~q\ & (!\inst|inst59|state.Start~q\ & (\inst|inst59|bitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|state.Start~q\,
	datab => \inst|inst59|state.DataBits~q\,
	datac => \inst|inst59|bitCounter\(0),
	datad => \inst|inst59|bitCounter~0_combout\,
	combout => \inst|inst59|Selector18~0_combout\);

-- Location: FF_X17_Y16_N19
\inst|inst59|bitCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector18~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|bitCounter\(0));

-- Location: LCCOMB_X17_Y16_N10
\inst|inst59|Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector16~1_combout\ = (\inst|inst59|ce~q\ & (\inst|inst59|bitCounter\(1) & (!\inst|inst59|bitCounter\(2) & \inst|inst59|bitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ce~q\,
	datab => \inst|inst59|bitCounter\(1),
	datac => \inst|inst59|bitCounter\(2),
	datad => \inst|inst59|bitCounter\(0),
	combout => \inst|inst59|Selector16~1_combout\);

-- Location: LCCOMB_X17_Y16_N8
\inst|inst59|Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector16~2_combout\ = (\inst|inst59|state.DataBits~q\ & ((\inst|inst59|bitCounter\(2) $ (\inst|inst59|Selector16~1_combout\)))) # (!\inst|inst59|state.DataBits~q\ & (!\inst|inst59|state.Start~q\ & (\inst|inst59|bitCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|state.Start~q\,
	datab => \inst|inst59|state.DataBits~q\,
	datac => \inst|inst59|bitCounter\(2),
	datad => \inst|inst59|Selector16~1_combout\,
	combout => \inst|inst59|Selector16~2_combout\);

-- Location: FF_X17_Y16_N9
\inst|inst59|bitCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector16~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|bitCounter\(2));

-- Location: LCCOMB_X17_Y16_N16
\inst|inst59|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector16~0_combout\ = (\inst|inst59|ce~q\ & (\inst|inst59|bitCounter\(0) & ((!\inst|inst59|bitCounter\(2)) # (!\inst|inst59|bitCounter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ce~q\,
	datab => \inst|inst59|bitCounter\(1),
	datac => \inst|inst59|bitCounter\(2),
	datad => \inst|inst59|bitCounter\(0),
	combout => \inst|inst59|Selector16~0_combout\);

-- Location: LCCOMB_X17_Y16_N14
\inst|inst59|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector17~0_combout\ = (\inst|inst59|state.DataBits~q\ & ((\inst|inst59|bitCounter\(1) $ (\inst|inst59|Selector16~0_combout\)))) # (!\inst|inst59|state.DataBits~q\ & (!\inst|inst59|state.Start~q\ & (\inst|inst59|bitCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|state.Start~q\,
	datab => \inst|inst59|state.DataBits~q\,
	datac => \inst|inst59|bitCounter\(1),
	datad => \inst|inst59|Selector16~0_combout\,
	combout => \inst|inst59|Selector17~0_combout\);

-- Location: FF_X17_Y16_N15
\inst|inst59|bitCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector17~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|bitCounter\(1));

-- Location: LCCOMB_X17_Y16_N4
\inst|inst59|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector10~1_combout\ = (\inst|inst59|ce~q\ & (\inst|inst59|bitCounter\(1) & (\inst|inst59|bitCounter\(2) & \inst|inst59|bitCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ce~q\,
	datab => \inst|inst59|bitCounter\(1),
	datac => \inst|inst59|bitCounter\(2),
	datad => \inst|inst59|bitCounter\(0),
	combout => \inst|inst59|Selector10~1_combout\);

-- Location: LCCOMB_X16_Y16_N18
\inst|inst59|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector7~2_combout\ = (\inst|inst59|Selector10~0_combout\ & ((!\inst|inst59|state.DataBits~q\) # (!\inst|inst59|Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Selector10~1_combout\,
	datab => \inst|inst59|state.DataBits~q\,
	datad => \inst|inst59|Selector10~0_combout\,
	combout => \inst|inst59|Selector7~2_combout\);

-- Location: FF_X16_Y16_N19
\inst|inst59|state.Pre_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector7~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|state.Pre_start~q\);

-- Location: LCCOMB_X16_Y16_N4
\inst|inst59|state.Pre_start_Ack1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|state.Pre_start_Ack1~feeder_combout\ = \inst|inst59|state.Pre_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|state.Pre_start~q\,
	combout => \inst|inst59|state.Pre_start_Ack1~feeder_combout\);

-- Location: FF_X16_Y16_N5
\inst|inst59|state.Pre_start_Ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|state.Pre_start_Ack1~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|state.Pre_start_Ack1~q\);

-- Location: LCCOMB_X16_Y18_N26
\inst|inst59|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector14~0_combout\ = (\inst|inst59|state.Pre_start_Ack~q\ & (((\inst|inst59|POP_req~q\ & !\inst|inst59|POP_Ack~q\)))) # (!\inst|inst59|state.Pre_start_Ack~q\ & ((\inst|inst59|state.Pre_start_Ack1~q\) # ((\inst|inst59|POP_req~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|state.Pre_start_Ack1~q\,
	datab => \inst|inst59|state.Pre_start_Ack~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|POP_Ack~q\,
	combout => \inst|inst59|Selector14~0_combout\);

-- Location: FF_X16_Y18_N27
\inst|inst59|POP_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector14~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|POP_req~q\);

-- Location: LCCOMB_X16_Y22_N20
\inst|inst59|ack~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|ack~0_combout\ = (\inst|inst59|ack~q\ & ((\inst|inst70|txreq~q\) # ((!\inst|inst59|DataFetch_state.WaitPushAck~q\) # (!\inst|inst59|DataFetch_state.Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|ack~q\,
	datab => \inst|inst70|txreq~q\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|DataFetch_state.WaitPushAck~q\,
	combout => \inst|inst59|ack~0_combout\);

-- Location: LCCOMB_X16_Y22_N12
\inst|inst59|ack~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|ack~1_combout\ = (\inst|inst59|ack~0_combout\) # ((!\inst|inst59|POP_req~q\ & (\inst|inst70|txreq~q\ & !\inst|inst59|DataFetch_state.Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txreq~q\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|ack~0_combout\,
	combout => \inst|inst59|ack~1_combout\);

-- Location: FF_X16_Y22_N13
\inst|inst59|ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|ack~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|ack~q\);

-- Location: LCCOMB_X17_Y22_N12
\inst|inst70|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector4~0_combout\ = (\inst|inst70|state.SendSymbol~q\) # ((\inst|inst70|state.SendSymbolWaitAck~q\ & !\inst|inst59|ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SendSymbol~q\,
	datac => \inst|inst70|state.SendSymbolWaitAck~q\,
	datad => \inst|inst59|ack~q\,
	combout => \inst|inst70|Selector4~0_combout\);

-- Location: FF_X17_Y22_N13
\inst|inst70|state.SendSymbolWaitAck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector4~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SendSymbolWaitAck~q\);

-- Location: LCCOMB_X17_Y22_N18
\inst|inst70|Selector28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector28~0_combout\ = (\inst|inst70|state.SendLSB~q\) # ((\inst|inst70|state.SendLSBWaitAck~q\ & !\inst|inst59|ack~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SendLSB~q\,
	datac => \inst|inst70|state.SendLSBWaitAck~q\,
	datad => \inst|inst59|ack~q\,
	combout => \inst|inst70|Selector28~0_combout\);

-- Location: FF_X17_Y22_N19
\inst|inst70|state.SendLSBWaitAck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector28~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SendLSBWaitAck~q\);

-- Location: LCCOMB_X17_Y22_N8
\inst|inst70|Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector27~0_combout\ = (!\inst|inst70|state.SendSymbolWaitAck~q\ & (!\inst|inst70|state.SendLSBWaitAck~q\ & !\inst|inst70|state.SendMSBWaitAck~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SendSymbolWaitAck~q\,
	datab => \inst|inst70|state.SendLSBWaitAck~q\,
	datad => \inst|inst70|state.SendMSBWaitAck~q\,
	combout => \inst|inst70|Selector27~0_combout\);

-- Location: LCCOMB_X17_Y23_N8
\inst|inst70|WideOr13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|WideOr13~0_combout\ = (\inst|inst70|state.WaitMSB~q\ & (!\inst|inst70|state.WaitLSB~q\ & (!\inst|inst70|state.AckSymbol~q\ & !\inst|inst70|state.AckDataMSB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.WaitMSB~q\,
	datab => \inst|inst70|state.WaitLSB~q\,
	datac => \inst|inst70|state.AckSymbol~q\,
	datad => \inst|inst70|state.AckDataMSB~q\,
	combout => \inst|inst70|WideOr13~0_combout\);

-- Location: LCCOMB_X14_Y22_N26
\inst|inst70|slowerer[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|slowerer[1]~0_combout\ = (\inst|inst70|state.DecodeLSB~q\) # ((\inst|inst70|state.SendSymbol~q\) # ((\inst|inst52|req~q\ & \inst|inst70|state.AckDataLSB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.DecodeLSB~q\,
	datab => \inst|inst70|state.SendSymbol~q\,
	datac => \inst|inst52|req~q\,
	datad => \inst|inst70|state.AckDataLSB~q\,
	combout => \inst|inst70|slowerer[1]~0_combout\);

-- Location: LCCOMB_X17_Y23_N14
\inst|inst70|slowerer[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|slowerer[1]~1_combout\ = (\inst|inst70|Selector27~0_combout\ & (!\inst|inst70|WideOr6~0_combout\ & (\inst|inst70|WideOr13~0_combout\ & !\inst|inst70|slowerer[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Selector27~0_combout\,
	datab => \inst|inst70|WideOr6~0_combout\,
	datac => \inst|inst70|WideOr13~0_combout\,
	datad => \inst|inst70|slowerer[1]~0_combout\,
	combout => \inst|inst70|slowerer[1]~1_combout\);

-- Location: FF_X17_Y23_N29
\inst|inst70|slowerer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector44~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|slowerer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|slowerer\(0));

-- Location: LCCOMB_X17_Y23_N26
\inst|inst70|Selector43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector43~0_combout\ = (!\inst|inst70|state.AckDataLSB~q\ & (!\inst|inst70|Selector27~3_combout\ & (\inst|inst70|slowerer\(1) $ (!\inst|inst70|slowerer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.AckDataLSB~q\,
	datab => \inst|inst70|Selector27~3_combout\,
	datac => \inst|inst70|slowerer\(1),
	datad => \inst|inst70|slowerer\(0),
	combout => \inst|inst70|Selector43~0_combout\);

-- Location: FF_X17_Y23_N27
\inst|inst70|slowerer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector43~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|slowerer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|slowerer\(1));

-- Location: LCCOMB_X17_Y23_N24
\inst|inst70|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Add0~1_combout\ = \inst|inst70|slowerer\(2) $ (((\inst|inst70|slowerer\(1)) # (\inst|inst70|slowerer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|slowerer\(2),
	datac => \inst|inst70|slowerer\(1),
	datad => \inst|inst70|slowerer\(0),
	combout => \inst|inst70|Add0~1_combout\);

-- Location: LCCOMB_X17_Y23_N22
\inst|inst70|Selector42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector42~0_combout\ = (!\inst|inst70|state.AckDataLSB~q\ & (!\inst|inst70|Add0~1_combout\ & !\inst|inst70|Selector27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.AckDataLSB~q\,
	datab => \inst|inst70|Add0~1_combout\,
	datac => \inst|inst70|Selector27~3_combout\,
	combout => \inst|inst70|Selector42~0_combout\);

-- Location: FF_X17_Y23_N23
\inst|inst70|slowerer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector42~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|slowerer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|slowerer\(2));

-- Location: LCCOMB_X17_Y23_N20
\inst|inst70|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Add0~0_combout\ = \inst|inst70|slowerer\(3) $ (((\inst|inst70|slowerer\(2)) # ((\inst|inst70|slowerer\(1)) # (\inst|inst70|slowerer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|slowerer\(2),
	datab => \inst|inst70|slowerer\(3),
	datac => \inst|inst70|slowerer\(1),
	datad => \inst|inst70|slowerer\(0),
	combout => \inst|inst70|Add0~0_combout\);

-- Location: LCCOMB_X17_Y23_N16
\inst|inst70|Selector41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector41~0_combout\ = (\inst|inst70|state.AckDataLSB~q\) # ((\inst|inst70|Selector27~3_combout\) # (!\inst|inst70|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.AckDataLSB~q\,
	datab => \inst|inst70|Add0~0_combout\,
	datac => \inst|inst70|Selector27~3_combout\,
	combout => \inst|inst70|Selector41~0_combout\);

-- Location: FF_X17_Y23_N17
\inst|inst70|slowerer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector41~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|slowerer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|slowerer\(3));

-- Location: LCCOMB_X17_Y23_N4
\inst|inst70|Selector27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector27~3_combout\ = (!\inst|inst70|slowerer\(1) & (!\inst|inst70|slowerer\(3) & (!\inst|inst70|slowerer\(2) & !\inst|inst70|slowerer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|slowerer\(1),
	datab => \inst|inst70|slowerer\(3),
	datac => \inst|inst70|slowerer\(2),
	datad => \inst|inst70|slowerer\(0),
	combout => \inst|inst70|Selector27~3_combout\);

-- Location: FF_X12_Y23_N15
\inst|inst70|state.SPI_D1b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D1b~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D1b~q\);

-- Location: FF_X12_Y23_N23
\inst|inst70|state.SPI_D0a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|state.SPI_D1b~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D0a~q\);

-- Location: FF_X12_Y23_N9
\inst|inst70|state.SPI_D0b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|state.SPI_D0a~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D0b~q\);

-- Location: LCCOMB_X17_Y22_N10
\inst|inst70|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector7~2_combout\ = (\inst|inst70|state.SPI_D0b~q\ & \inst|inst70|Selector27~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SPI_D0b~q\,
	datac => \inst|inst70|Selector27~3_combout\,
	combout => \inst|inst70|Selector7~2_combout\);

-- Location: FF_X17_Y22_N11
\inst|inst70|state.SendMSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector7~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SendMSB~q\);

-- Location: LCCOMB_X17_Y22_N26
\inst|inst70|WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|WideOr6~0_combout\ = (\inst|inst70|state.SendMSB~q\) # ((\inst|inst70|state.SendLSB~q\) # (\inst|inst70|state.DecodeMSB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SendMSB~q\,
	datab => \inst|inst70|state.SendLSB~q\,
	datad => \inst|inst70|state.DecodeMSB~q\,
	combout => \inst|inst70|WideOr6~0_combout\);

-- Location: LCCOMB_X17_Y23_N6
\inst|inst70|Selector38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector38~0_combout\ = (!\inst|inst70|state.AckSymbol~q\ & (!\inst|inst70|state.AckDataLSB~q\ & !\inst|inst70|state.AckDataMSB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.AckSymbol~q\,
	datac => \inst|inst70|state.AckDataLSB~q\,
	datad => \inst|inst70|state.AckDataMSB~q\,
	combout => \inst|inst70|Selector38~0_combout\);

-- Location: LCCOMB_X17_Y23_N18
\inst|inst70|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector0~2_combout\ = (\inst|inst52|req~q\ & (\inst|inst70|state.WaitMSB~q\ & (!\inst|inst70|state.WaitLSB~q\))) # (!\inst|inst52|req~q\ & (((\inst|inst70|Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.WaitMSB~q\,
	datab => \inst|inst70|state.WaitLSB~q\,
	datac => \inst|inst52|req~q\,
	datad => \inst|inst70|Selector38~0_combout\,
	combout => \inst|inst70|Selector0~2_combout\);

-- Location: LCCOMB_X12_Y23_N30
\inst|inst70|Selector40~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~1_combout\ = (!\inst|inst70|state.SPI_D3b~q\ & (!\inst|inst70|state.SPI_D0b~q\ & (!\inst|inst70|state.SPI_D1b~q\ & !\inst|inst70|state.SPI_D2b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D3b~q\,
	datab => \inst|inst70|state.SPI_D0b~q\,
	datac => \inst|inst70|state.SPI_D1b~q\,
	datad => \inst|inst70|state.SPI_D2b~q\,
	combout => \inst|inst70|Selector40~1_combout\);

-- Location: LCCOMB_X16_Y24_N18
\inst|inst70|Selector40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~0_combout\ = (!\inst|inst70|state.SPI_D5b~q\ & (!\inst|inst70|state.SPI_D4b~q\ & (!\inst|inst70|state.SPI_D6b~q\ & !\inst|inst70|state.SPI_D7b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D5b~q\,
	datab => \inst|inst70|state.SPI_D4b~q\,
	datac => \inst|inst70|state.SPI_D6b~q\,
	datad => \inst|inst70|state.SPI_D7b~q\,
	combout => \inst|inst70|Selector40~0_combout\);

-- Location: LCCOMB_X16_Y24_N16
\inst|inst70|Selector45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector45~0_combout\ = (!\inst|inst70|state.SPI_D6a~q\ & (!\inst|inst70|state.SPI_D7a~q\ & (!\inst|inst70|state.SPI_D4a~q\ & !\inst|inst70|state.SPI_D5a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D6a~q\,
	datab => \inst|inst70|state.SPI_D7a~q\,
	datac => \inst|inst70|state.SPI_D4a~q\,
	datad => \inst|inst70|state.SPI_D5a~q\,
	combout => \inst|inst70|Selector45~0_combout\);

-- Location: LCCOMB_X13_Y23_N8
\inst|inst70|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector0~1_combout\ = (\inst|inst70|Selector45~1_combout\ & (\inst|inst70|Selector40~1_combout\ & (\inst|inst70|Selector40~0_combout\ & \inst|inst70|Selector45~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Selector45~1_combout\,
	datab => \inst|inst70|Selector40~1_combout\,
	datac => \inst|inst70|Selector40~0_combout\,
	datad => \inst|inst70|Selector45~0_combout\,
	combout => \inst|inst70|Selector0~1_combout\);

-- Location: LCCOMB_X14_Y22_N18
\inst|inst70|Selector27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector27~1_combout\ = (!\inst|inst70|state.DecodeLSB~q\ & (!\inst|inst70|state.SendSymbol~q\ & (!\inst|inst70|WideOr6~0_combout\ & \inst|inst70|Selector27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.DecodeLSB~q\,
	datab => \inst|inst70|state.SendSymbol~q\,
	datac => \inst|inst70|WideOr6~0_combout\,
	datad => \inst|inst70|Selector27~0_combout\,
	combout => \inst|inst70|Selector27~1_combout\);

-- Location: LCCOMB_X13_Y23_N14
\inst|inst70|Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector0~3_combout\ = ((\inst|inst70|Selector0~2_combout\ & ((\inst|inst70|Selector0~1_combout\) # (!\inst|inst70|Selector27~3_combout\)))) # (!\inst|inst70|Selector27~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Selector0~2_combout\,
	datab => \inst|inst70|Selector27~3_combout\,
	datac => \inst|inst70|Selector0~1_combout\,
	datad => \inst|inst70|Selector27~1_combout\,
	combout => \inst|inst70|Selector0~3_combout\);

-- Location: LCCOMB_X17_Y22_N20
\inst|inst70|Selector27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector27~2_combout\ = (\inst|inst59|ack~q\ & ((\inst|inst70|state.SendSymbolWaitAck~q\) # (\inst|inst70|state.SendLSBWaitAck~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SendSymbolWaitAck~q\,
	datab => \inst|inst70|state.SendLSBWaitAck~q\,
	datad => \inst|inst59|ack~q\,
	combout => \inst|inst70|Selector27~2_combout\);

-- Location: LCCOMB_X14_Y22_N30
\inst|inst70|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector0~0_combout\ = (!\inst|inst70|state.DecodeLSB~q\ & (!\inst|inst70|state.SendSymbol~q\ & ((\inst|inst70|Selector27~2_combout\) # (!\inst|inst70|state.WaitMSB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.DecodeLSB~q\,
	datab => \inst|inst70|state.SendSymbol~q\,
	datac => \inst|inst70|state.WaitMSB~q\,
	datad => \inst|inst70|Selector27~2_combout\,
	combout => \inst|inst70|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y23_N24
\inst|inst70|Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector0~4_combout\ = (\inst|inst70|WideOr6~0_combout\) # ((\inst|inst70|Selector7~1_combout\) # ((!\inst|inst70|Selector0~0_combout\) # (!\inst|inst70|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|WideOr6~0_combout\,
	datab => \inst|inst70|Selector7~1_combout\,
	datac => \inst|inst70|Selector0~3_combout\,
	datad => \inst|inst70|Selector0~0_combout\,
	combout => \inst|inst70|Selector0~4_combout\);

-- Location: FF_X13_Y23_N25
\inst|inst70|state.WaitMSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector0~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.WaitMSB~q\);

-- Location: LCCOMB_X17_Y22_N0
\inst|inst70|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector1~0_combout\ = (\inst|inst52|req~q\ & (!\inst|inst70|state.WaitLSB~q\ & !\inst|inst70|state.WaitMSB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|req~q\,
	datab => \inst|inst70|state.WaitLSB~q\,
	datad => \inst|inst70|state.WaitMSB~q\,
	combout => \inst|inst70|Selector1~0_combout\);

-- Location: FF_X17_Y22_N1
\inst|inst70|state.DecodeMSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector1~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.DecodeMSB~q\);

-- Location: LCCOMB_X14_Y23_N24
\inst|inst70|WideOr7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|WideOr7~0_combout\ = (!\inst|inst70|state.DecodeLSB~q\ & !\inst|inst70|state.DecodeMSB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.DecodeLSB~q\,
	datad => \inst|inst70|state.DecodeMSB~q\,
	combout => \inst|inst70|WideOr7~0_combout\);

-- Location: LCCOMB_X17_Y23_N12
\inst|inst70|Selector38~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector38~1_combout\ = (\inst|inst70|rxack~q\ & (((\inst|inst52|req~q\) # (\inst|inst70|Selector38~0_combout\)))) # (!\inst|inst70|rxack~q\ & (!\inst|inst70|WideOr7~0_combout\ & ((\inst|inst70|Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|WideOr7~0_combout\,
	datab => \inst|inst52|req~q\,
	datac => \inst|inst70|rxack~q\,
	datad => \inst|inst70|Selector38~0_combout\,
	combout => \inst|inst70|Selector38~1_combout\);

-- Location: FF_X17_Y23_N13
\inst|inst70|rxack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector38~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|rxack~q\);

-- Location: LCCOMB_X14_Y22_N28
\inst|inst52|Selector10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector10~5_combout\ = (\inst|inst70|rxack~q\ & (\inst|inst52|data[7]~0_combout\ & (!\inst|inst52|hsstate.hsAcknowledge~q\))) # (!\inst|inst70|rxack~q\ & (!\inst|inst52|hsstate.hsWaitNoAck~q\ & ((\inst|inst52|data[7]~0_combout\) # 
-- (\inst|inst52|hsstate.hsAcknowledge~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|rxack~q\,
	datab => \inst|inst52|data[7]~0_combout\,
	datac => \inst|inst52|hsstate.hsAcknowledge~q\,
	datad => \inst|inst52|hsstate.hsWaitNoAck~q\,
	combout => \inst|inst52|Selector10~5_combout\);

-- Location: FF_X14_Y22_N29
\inst|inst52|hsstate.hsAcknowledge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|Selector10~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|hsstate.hsAcknowledge~q\);

-- Location: LCCOMB_X14_Y22_N10
\inst|inst52|Selector11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector11~4_combout\ = (\inst|inst70|rxack~q\ & ((\inst|inst52|hsstate.hsAcknowledge~q\) # ((\inst|inst52|hsstate.hsWaitNoAck~q\ & !\inst|inst52|data[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|rxack~q\,
	datab => \inst|inst52|hsstate.hsAcknowledge~q\,
	datac => \inst|inst52|hsstate.hsWaitNoAck~q\,
	datad => \inst|inst52|data[7]~0_combout\,
	combout => \inst|inst52|Selector11~4_combout\);

-- Location: FF_X14_Y22_N11
\inst|inst52|hsstate.hsWaitNoAck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|Selector11~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|hsstate.hsWaitNoAck~q\);

-- Location: LCCOMB_X14_Y22_N12
\inst|inst52|Selector10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector10~4_combout\ = (!\inst|inst70|rxack~q\ & \inst|inst52|hsstate.hsWaitNoAck~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst70|rxack~q\,
	datad => \inst|inst52|hsstate.hsWaitNoAck~q\,
	combout => \inst|inst52|Selector10~4_combout\);

-- Location: LCCOMB_X14_Y22_N6
\inst|inst52|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|Selector8~0_combout\ = (\inst|inst70|rxack~q\ & \inst|inst52|hsstate.hsAcknowledge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst70|rxack~q\,
	datad => \inst|inst52|hsstate.hsAcknowledge~q\,
	combout => \inst|inst52|Selector8~0_combout\);

-- Location: LCCOMB_X14_Y22_N24
\inst|inst52|hsstate.hsIdle~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|hsstate.hsIdle~2_combout\ = (!\inst|inst52|Selector10~4_combout\ & ((\inst|inst52|done~q\) # ((\inst|inst52|hsstate.hsIdle~q\) # (\inst|inst52|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|Selector10~4_combout\,
	datab => \inst|inst52|done~q\,
	datac => \inst|inst52|hsstate.hsIdle~q\,
	datad => \inst|inst52|Selector8~0_combout\,
	combout => \inst|inst52|hsstate.hsIdle~2_combout\);

-- Location: FF_X14_Y22_N25
\inst|inst52|hsstate.hsIdle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|hsstate.hsIdle~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|hsstate.hsIdle~q\);

-- Location: LCCOMB_X14_Y22_N4
\inst|inst52|req~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst52|req~2_combout\ = (\inst|inst52|hsstate.hsIdle~q\ & (((\inst|inst52|req~q\ & !\inst|inst52|Selector8~0_combout\)))) # (!\inst|inst52|hsstate.hsIdle~q\ & ((\inst|inst52|done~q\) # ((\inst|inst52|req~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|done~q\,
	datab => \inst|inst52|hsstate.hsIdle~q\,
	datac => \inst|inst52|req~q\,
	datad => \inst|inst52|Selector8~0_combout\,
	combout => \inst|inst52|req~2_combout\);

-- Location: FF_X14_Y22_N5
\inst|inst52|req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst52|req~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst52|req~q\);

-- Location: LCCOMB_X14_Y22_N22
\inst|inst70|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector7~0_combout\ = (\inst|inst52|req~q\ & \inst|inst70|state.WaitLSB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|req~q\,
	datad => \inst|inst70|state.WaitLSB~q\,
	combout => \inst|inst70|Selector7~0_combout\);

-- Location: FF_X14_Y22_N23
\inst|inst70|state.DecodeLSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector7~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.DecodeLSB~q\);

-- Location: LCCOMB_X14_Y22_N0
\inst|inst70|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector8~0_combout\ = (\inst|inst70|state.DecodeLSB~q\ & (((\inst|inst52|req~q\ & \inst|inst70|state.AckDataLSB~q\)) # (!\inst|inst70|Mux1~2_combout\))) # (!\inst|inst70|state.DecodeLSB~q\ & (\inst|inst52|req~q\ & 
-- (\inst|inst70|state.AckDataLSB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.DecodeLSB~q\,
	datab => \inst|inst52|req~q\,
	datac => \inst|inst70|state.AckDataLSB~q\,
	datad => \inst|inst70|Mux1~2_combout\,
	combout => \inst|inst70|Selector8~0_combout\);

-- Location: FF_X14_Y22_N1
\inst|inst70|state.AckDataLSB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector8~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.AckDataLSB~q\);

-- Location: LCCOMB_X16_Y24_N24
\inst|inst70|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector9~0_combout\ = (\inst|inst70|state.AckDataLSB~q\ & (((!\inst|inst70|Selector27~3_combout\ & \inst|inst70|state.SPI_D7a~q\)) # (!\inst|inst52|req~q\))) # (!\inst|inst70|state.AckDataLSB~q\ & (!\inst|inst70|Selector27~3_combout\ & 
-- (\inst|inst70|state.SPI_D7a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.AckDataLSB~q\,
	datab => \inst|inst70|Selector27~3_combout\,
	datac => \inst|inst70|state.SPI_D7a~q\,
	datad => \inst|inst52|req~q\,
	combout => \inst|inst70|Selector9~0_combout\);

-- Location: FF_X16_Y24_N25
\inst|inst70|state.SPI_D7a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector9~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D7a~q\);

-- Location: LCCOMB_X16_Y24_N10
\inst|inst70|state.SPI_D7b~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D7b~feeder_combout\ = \inst|inst70|state.SPI_D7a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D7a~q\,
	combout => \inst|inst70|state.SPI_D7b~feeder_combout\);

-- Location: FF_X16_Y24_N11
\inst|inst70|state.SPI_D7b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D7b~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D7b~q\);

-- Location: LCCOMB_X16_Y24_N6
\inst|inst70|state.SPI_D6a~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D6a~feeder_combout\ = \inst|inst70|state.SPI_D7b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D7b~q\,
	combout => \inst|inst70|state.SPI_D6a~feeder_combout\);

-- Location: FF_X16_Y24_N7
\inst|inst70|state.SPI_D6a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D6a~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D6a~q\);

-- Location: LCCOMB_X16_Y24_N8
\inst|inst70|state.SPI_D6b~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D6b~feeder_combout\ = \inst|inst70|state.SPI_D6a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D6a~q\,
	combout => \inst|inst70|state.SPI_D6b~feeder_combout\);

-- Location: FF_X16_Y24_N9
\inst|inst70|state.SPI_D6b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D6b~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D6b~q\);

-- Location: FF_X16_Y24_N21
\inst|inst70|state.SPI_D5a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|state.SPI_D6b~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D5a~q\);

-- Location: LCCOMB_X16_Y24_N30
\inst|inst70|state.SPI_D5b~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D5b~feeder_combout\ = \inst|inst70|state.SPI_D5a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D5a~q\,
	combout => \inst|inst70|state.SPI_D5b~feeder_combout\);

-- Location: FF_X16_Y24_N31
\inst|inst70|state.SPI_D5b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D5b~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D5b~q\);

-- Location: FF_X16_Y24_N27
\inst|inst70|state.SPI_D4a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|state.SPI_D5b~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D4a~q\);

-- Location: FF_X16_Y24_N29
\inst|inst70|state.SPI_D4b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|state.SPI_D4a~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D4b~q\);

-- Location: LCCOMB_X12_Y23_N20
\inst|inst70|state.SPI_D3a~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D3a~feeder_combout\ = \inst|inst70|state.SPI_D4b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D4b~q\,
	combout => \inst|inst70|state.SPI_D3a~feeder_combout\);

-- Location: FF_X12_Y23_N21
\inst|inst70|state.SPI_D3a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D3a~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D3a~q\);

-- Location: LCCOMB_X12_Y23_N26
\inst|inst70|state.SPI_D3b~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D3b~feeder_combout\ = \inst|inst70|state.SPI_D3a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D3a~q\,
	combout => \inst|inst70|state.SPI_D3b~feeder_combout\);

-- Location: FF_X12_Y23_N27
\inst|inst70|state.SPI_D3b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D3b~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D3b~q\);

-- Location: FF_X12_Y23_N19
\inst|inst70|state.SPI_D2a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|state.SPI_D3b~q\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D2a~q\);

-- Location: LCCOMB_X12_Y23_N24
\inst|inst70|state.SPI_D2b~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D2b~feeder_combout\ = \inst|inst70|state.SPI_D2a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D2a~q\,
	combout => \inst|inst70|state.SPI_D2b~feeder_combout\);

-- Location: FF_X12_Y23_N25
\inst|inst70|state.SPI_D2b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D2b~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D2b~q\);

-- Location: LCCOMB_X12_Y23_N12
\inst|inst70|state.SPI_D1a~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|state.SPI_D1a~feeder_combout\ = \inst|inst70|state.SPI_D2b~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|state.SPI_D2b~q\,
	combout => \inst|inst70|state.SPI_D1a~feeder_combout\);

-- Location: FF_X12_Y23_N13
\inst|inst70|state.SPI_D1a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|state.SPI_D1a~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|Selector27~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|state.SPI_D1a~q\);

-- Location: LCCOMB_X12_Y23_N16
\inst|inst70|Selector45~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector45~1_combout\ = (!\inst|inst70|state.SPI_D1a~q\ & (!\inst|inst70|state.SPI_D2a~q\ & (!\inst|inst70|state.SPI_D0a~q\ & !\inst|inst70|state.SPI_D3a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D1a~q\,
	datab => \inst|inst70|state.SPI_D2a~q\,
	datac => \inst|inst70|state.SPI_D0a~q\,
	datad => \inst|inst70|state.SPI_D3a~q\,
	combout => \inst|inst70|Selector45~1_combout\);

-- Location: LCCOMB_X13_Y23_N16
\inst|inst70|Selector45~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector45~2_combout\ = (!\inst|inst70|state.AckDataLSB~q\ & (\inst|inst70|WideOr13~0_combout\ & \inst|inst70|Selector27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.AckDataLSB~q\,
	datac => \inst|inst70|WideOr13~0_combout\,
	datad => \inst|inst70|Selector27~1_combout\,
	combout => \inst|inst70|Selector45~2_combout\);

-- Location: LCCOMB_X13_Y23_N4
\inst|inst70|Selector45~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector45~3_combout\ = (((\inst|inst70|sclk~q\ & !\inst|inst70|Selector45~2_combout\)) # (!\inst|inst70|Selector45~0_combout\)) # (!\inst|inst70|Selector45~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Selector45~1_combout\,
	datab => \inst|inst70|Selector45~0_combout\,
	datac => \inst|inst70|sclk~q\,
	datad => \inst|inst70|Selector45~2_combout\,
	combout => \inst|inst70|Selector45~3_combout\);

-- Location: FF_X13_Y23_N5
\inst|inst70|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector45~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|sclk~q\);

-- Location: LCCOMB_X15_Y23_N30
\inst|inst70|process_0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|process_0~1_combout\ = (\inst|inst52|data\(4) & (\inst|inst52|data\(6) & (!\inst|inst52|data\(5) & !\inst|inst52|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(4),
	datab => \inst|inst52|data\(6),
	datac => \inst|inst52|data\(5),
	datad => \inst|inst52|data\(0),
	combout => \inst|inst70|process_0~1_combout\);

-- Location: LCCOMB_X14_Y23_N0
\inst|inst70|process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|process_0~0_combout\ = (!\inst|inst52|data\(7) & (!\inst|inst52|data\(1) & (\inst|inst52|data\(3) & !\inst|inst52|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(7),
	datab => \inst|inst52|data\(1),
	datac => \inst|inst52|data\(3),
	datad => \inst|inst52|data\(2),
	combout => \inst|inst70|process_0~0_combout\);

-- Location: LCCOMB_X14_Y24_N26
\inst|inst70|ListenOnly~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|ListenOnly~0_combout\ = (\inst|inst70|ListenOnly~q\) # ((\inst|inst70|process_0~1_combout\ & (\inst|inst52|req~q\ & \inst|inst70|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|process_0~1_combout\,
	datab => \inst|inst52|req~q\,
	datac => \inst|inst70|ListenOnly~q\,
	datad => \inst|inst70|process_0~0_combout\,
	combout => \inst|inst70|ListenOnly~0_combout\);

-- Location: FF_X14_Y24_N27
\inst|inst70|ListenOnly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|ListenOnly~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|ListenOnly~q\);

-- Location: LCCOMB_X13_Y27_N4
\inst|inst71|5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst71|5~combout\ = LCELL((\inst|inst70|ListenOnly~q\ & ((\inst|inst70|sclk~q\))) # (!\inst|inst70|ListenOnly~q\ & (\SPI0_SCLK~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI0_SCLK~input_o\,
	datac => \inst|inst70|sclk~q\,
	datad => \inst|inst70|ListenOnly~q\,
	combout => \inst|inst71|5~combout\);

-- Location: CLKCTRL_G12
\inst|inst71|5~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inst71|5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inst71|5~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y25_N26
\SPI_PROTOCOL|state.Command~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.Command~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \SPI_PROTOCOL|state.Command~feeder_combout\);

-- Location: IOIBUF_X14_Y31_N8
\SPI0_SSN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SPI0_SSN,
	o => \SPI0_SSN~input_o\);

-- Location: LCCOMB_X14_Y23_N22
\inst|inst70|nss~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|nss~0_combout\ = (\inst|inst52|data\(5) & (!\inst|inst52|data\(4) & (!\inst|inst52|data\(6) & !\inst|inst70|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(5),
	datab => \inst|inst52|data\(4),
	datac => \inst|inst52|data\(6),
	datad => \inst|inst70|WideOr7~0_combout\,
	combout => \inst|inst70|nss~0_combout\);

-- Location: LCCOMB_X14_Y24_N14
\inst|inst70|nss~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|nss~1_combout\ = (\inst|inst70|nss~0_combout\ & ((\inst|inst70|process_0~0_combout\ & (!\inst|inst52|data\(0))) # (!\inst|inst70|process_0~0_combout\ & ((\inst|inst70|nss~q\))))) # (!\inst|inst70|nss~0_combout\ & (((\inst|inst70|nss~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|nss~0_combout\,
	datab => \inst|inst52|data\(0),
	datac => \inst|inst70|nss~q\,
	datad => \inst|inst70|process_0~0_combout\,
	combout => \inst|inst70|nss~1_combout\);

-- Location: FF_X14_Y24_N15
\inst|inst70|nss\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|nss~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|nss~q\);

-- Location: LCCOMB_X14_Y24_N0
\inst|inst60|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst60|5~0_combout\ = (\inst|inst70|ListenOnly~q\ & ((!\inst|inst70|nss~q\))) # (!\inst|inst70|ListenOnly~q\ & (\SPI0_SSN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI0_SSN~input_o\,
	datac => \inst|inst70|nss~q\,
	datad => \inst|inst70|ListenOnly~q\,
	combout => \inst|inst60|5~0_combout\);

-- Location: LCCOMB_X14_Y26_N10
\SPI_PROTOCOL|bitCount[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|bitCount[0]~2_combout\ = !\SPI_PROTOCOL|bitCount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI_PROTOCOL|bitCount\(0),
	combout => \SPI_PROTOCOL|bitCount[0]~2_combout\);

-- Location: FF_X14_Y26_N11
\SPI_PROTOCOL|bitCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|bitCount[0]~2_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|bitCount\(0));

-- Location: LCCOMB_X14_Y26_N28
\SPI_PROTOCOL|bitCount[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|bitCount[1]~1_combout\ = \SPI_PROTOCOL|bitCount\(1) $ (\SPI_PROTOCOL|bitCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI_PROTOCOL|bitCount\(1),
	datad => \SPI_PROTOCOL|bitCount\(0),
	combout => \SPI_PROTOCOL|bitCount[1]~1_combout\);

-- Location: FF_X14_Y26_N29
\SPI_PROTOCOL|bitCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|bitCount[1]~1_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|bitCount\(1));

-- Location: LCCOMB_X14_Y26_N2
\SPI_PROTOCOL|bitCount[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|bitCount[2]~0_combout\ = \SPI_PROTOCOL|bitCount\(2) $ (((\SPI_PROTOCOL|bitCount\(0) & \SPI_PROTOCOL|bitCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|bitCount\(0),
	datac => \SPI_PROTOCOL|bitCount\(2),
	datad => \SPI_PROTOCOL|bitCount\(1),
	combout => \SPI_PROTOCOL|bitCount[2]~0_combout\);

-- Location: FF_X14_Y26_N3
\SPI_PROTOCOL|bitCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|bitCount[2]~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|bitCount\(2));

-- Location: LCCOMB_X14_Y26_N4
\SPI_PROTOCOL|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal0~0_combout\ = (\SPI_PROTOCOL|bitCount\(0) & (\SPI_PROTOCOL|bitCount\(1) & \SPI_PROTOCOL|bitCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|bitCount\(0),
	datab => \SPI_PROTOCOL|bitCount\(1),
	datad => \SPI_PROTOCOL|bitCount\(2),
	combout => \SPI_PROTOCOL|Equal0~0_combout\);

-- Location: FF_X14_Y26_N5
\SPI_PROTOCOL|byteStrobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Equal0~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|byteStrobe~q\);

-- Location: FF_X13_Y25_N27
\SPI_PROTOCOL|state.Command\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|state.Command~feeder_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.Command~q\);

-- Location: LCCOMB_X15_Y23_N22
\inst|inst70|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux5~0_combout\ = (\inst|inst52|data\(1) & (((\inst|inst52|data\(2)) # (!\inst|inst52|data\(0))) # (!\inst|inst52|data\(6)))) # (!\inst|inst52|data\(1) & (\inst|inst52|data\(6) & ((\inst|inst52|data\(0)) # (!\inst|inst52|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(1),
	datab => \inst|inst52|data\(6),
	datac => \inst|inst52|data\(2),
	datad => \inst|inst52|data\(0),
	combout => \inst|inst70|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y23_N30
\inst|inst70|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux5~1_combout\ = (!\inst|inst52|data\(3) & \inst|inst70|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|data\(3),
	datad => \inst|inst70|Mux5~0_combout\,
	combout => \inst|inst70|Mux5~1_combout\);

-- Location: LCCOMB_X14_Y23_N10
\inst|inst70|DataIn[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[6]~1_combout\ = (\inst|inst52|data\(7)) # ((\inst|inst52|data\(5) & (\inst|inst52|data\(6))) # (!\inst|inst52|data\(5) & ((\inst|inst52|data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(6),
	datab => \inst|inst52|data\(4),
	datac => \inst|inst52|data\(7),
	datad => \inst|inst52|data\(5),
	combout => \inst|inst70|DataIn[6]~1_combout\);

-- Location: LCCOMB_X14_Y23_N4
\inst|inst70|DataIn[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[6]~0_combout\ = (\inst|inst52|data\(3) & ((\inst|inst52|data\(2)) # ((\inst|inst52|data\(6)) # (\inst|inst52|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(2),
	datab => \inst|inst52|data\(3),
	datac => \inst|inst52|data\(6),
	datad => \inst|inst52|data\(1),
	combout => \inst|inst70|DataIn[6]~0_combout\);

-- Location: LCCOMB_X14_Y23_N28
\inst|inst70|DataIn[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[6]~2_combout\ = ((\inst|inst52|data\(2) & (\inst|inst52|data\(0) & \inst|inst52|data\(1))) # (!\inst|inst52|data\(2) & (!\inst|inst52|data\(0) & !\inst|inst52|data\(1)))) # (!\inst|inst52|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(2),
	datab => \inst|inst52|data\(0),
	datac => \inst|inst52|data\(6),
	datad => \inst|inst52|data\(1),
	combout => \inst|inst70|DataIn[6]~2_combout\);

-- Location: LCCOMB_X14_Y23_N2
\inst|inst70|DataIn[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[7]~5_combout\ = (\inst|inst52|data\(4)) # (!\inst|inst70|DataIn[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|data\(4),
	datad => \inst|inst70|DataIn[6]~2_combout\,
	combout => \inst|inst70|DataIn[7]~5_combout\);

-- Location: LCCOMB_X15_Y23_N18
\inst|inst70|DataIn[7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[7]~6_combout\ = (!\inst|inst70|DataIn[6]~1_combout\ & (!\inst|inst70|DataIn[6]~0_combout\ & (\inst|inst70|state.DecodeMSB~q\ & \inst|inst70|DataIn[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataIn[6]~1_combout\,
	datab => \inst|inst70|DataIn[6]~0_combout\,
	datac => \inst|inst70|state.DecodeMSB~q\,
	datad => \inst|inst70|DataIn[7]~5_combout\,
	combout => \inst|inst70|DataIn[7]~6_combout\);

-- Location: FF_X14_Y23_N3
\inst|inst70|DataIn[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|Mux5~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|DataIn[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(5));

-- Location: LCCOMB_X14_Y23_N16
\inst|inst70|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux6~0_combout\ = (\inst|inst52|data\(0) & (\inst|inst52|data\(1) & \inst|inst52|data\(2))) # (!\inst|inst52|data\(0) & ((\inst|inst52|data\(1)) # (\inst|inst52|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst52|data\(0),
	datac => \inst|inst52|data\(1),
	datad => \inst|inst52|data\(2),
	combout => \inst|inst70|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y23_N14
\inst|inst70|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux6~1_combout\ = (\inst|inst52|data\(6) & ((\inst|inst52|data\(3) & (\inst|inst52|data\(0))) # (!\inst|inst52|data\(3) & ((\inst|inst70|Mux6~0_combout\))))) # (!\inst|inst52|data\(6) & (((\inst|inst52|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(6),
	datab => \inst|inst52|data\(3),
	datac => \inst|inst52|data\(0),
	datad => \inst|inst70|Mux6~0_combout\,
	combout => \inst|inst70|Mux6~1_combout\);

-- Location: FF_X14_Y23_N21
\inst|inst70|DataIn[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|Mux6~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|DataIn[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(4));

-- Location: LCCOMB_X13_Y23_N22
\inst|inst70|Selector40~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~6_combout\ = (\inst|inst70|DataIn\(5) & (((\inst|inst70|DataIn\(4))) # (!\inst|inst70|state.SPI_D5b~q\))) # (!\inst|inst70|DataIn\(5) & (!\inst|inst70|state.SPI_D6b~q\ & ((\inst|inst70|DataIn\(4)) # 
-- (!\inst|inst70|state.SPI_D5b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataIn\(5),
	datab => \inst|inst70|state.SPI_D5b~q\,
	datac => \inst|inst70|DataIn\(4),
	datad => \inst|inst70|state.SPI_D6b~q\,
	combout => \inst|inst70|Selector40~6_combout\);

-- Location: LCCOMB_X15_Y23_N20
\inst|inst70|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux4~0_combout\ = (\inst|inst52|data\(2)) # ((\inst|inst52|data\(1) & (\inst|inst52|data\(6) & \inst|inst52|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(1),
	datab => \inst|inst52|data\(6),
	datac => \inst|inst52|data\(2),
	datad => \inst|inst52|data\(0),
	combout => \inst|inst70|Mux4~0_combout\);

-- Location: LCCOMB_X15_Y23_N24
\inst|inst70|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux4~1_combout\ = (!\inst|inst52|data\(3) & \inst|inst70|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst52|data\(3),
	datad => \inst|inst70|Mux4~0_combout\,
	combout => \inst|inst70|Mux4~1_combout\);

-- Location: LCCOMB_X13_Y23_N20
\inst|inst70|DataIn[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[2]~feeder_combout\ = \inst|inst70|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|Mux4~1_combout\,
	combout => \inst|inst70|DataIn[2]~feeder_combout\);

-- Location: LCCOMB_X14_Y23_N18
\inst|inst70|DataIn[6]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[6]~3_combout\ = (\inst|inst70|DataIn[6]~1_combout\) # ((\inst|inst70|DataIn[6]~0_combout\) # ((!\inst|inst52|data\(4) & \inst|inst70|DataIn[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataIn[6]~1_combout\,
	datab => \inst|inst52|data\(4),
	datac => \inst|inst70|DataIn[6]~0_combout\,
	datad => \inst|inst70|DataIn[6]~2_combout\,
	combout => \inst|inst70|DataIn[6]~3_combout\);

-- Location: LCCOMB_X14_Y23_N20
\inst|inst70|DataIn[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[3]~4_combout\ = (\inst|inst70|state.DecodeLSB~q\ & !\inst|inst70|DataIn[6]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.DecodeLSB~q\,
	datad => \inst|inst70|DataIn[6]~3_combout\,
	combout => \inst|inst70|DataIn[3]~4_combout\);

-- Location: FF_X13_Y23_N21
\inst|inst70|DataIn[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataIn[2]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|DataIn[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(2));

-- Location: LCCOMB_X15_Y23_N14
\inst|inst70|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux3~0_combout\ = (\inst|inst52|data\(3)) # (\inst|inst52|data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst52|data\(3),
	datad => \inst|inst52|data\(6),
	combout => \inst|inst70|Mux3~0_combout\);

-- Location: FF_X13_Y23_N19
\inst|inst70|DataIn[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|Mux3~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|DataIn[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(3));

-- Location: LCCOMB_X13_Y23_N18
\inst|inst70|Selector40~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~5_combout\ = (\inst|inst70|state.SPI_D3b~q\ & (\inst|inst70|DataIn\(2) & ((\inst|inst70|DataIn\(3)) # (!\inst|inst70|state.SPI_D4b~q\)))) # (!\inst|inst70|state.SPI_D3b~q\ & (((\inst|inst70|DataIn\(3)) # 
-- (!\inst|inst70|state.SPI_D4b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D3b~q\,
	datab => \inst|inst70|DataIn\(2),
	datac => \inst|inst70|DataIn\(3),
	datad => \inst|inst70|state.SPI_D4b~q\,
	combout => \inst|inst70|Selector40~5_combout\);

-- Location: LCCOMB_X13_Y23_N10
\inst|inst70|Selector40~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~3_combout\ = (\inst|inst70|mosi~q\) # (\inst|inst70|state.AckDataLSB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst70|mosi~q\,
	datad => \inst|inst70|state.AckDataLSB~q\,
	combout => \inst|inst70|Selector40~3_combout\);

-- Location: FF_X13_Y23_N13
\inst|inst70|DataIn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst70|Mux5~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst70|DataIn[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(1));

-- Location: LCCOMB_X13_Y23_N28
\inst|inst70|DataIn[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataIn[0]~feeder_combout\ = \inst|inst70|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst70|Mux6~1_combout\,
	combout => \inst|inst70|DataIn[0]~feeder_combout\);

-- Location: FF_X13_Y23_N29
\inst|inst70|DataIn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataIn[0]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|DataIn[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(0));

-- Location: LCCOMB_X13_Y23_N12
\inst|inst70|Selector40~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~2_combout\ = (\inst|inst70|state.SPI_D1b~q\ & (\inst|inst70|DataIn\(0) & ((\inst|inst70|DataIn\(1)) # (!\inst|inst70|state.SPI_D2b~q\)))) # (!\inst|inst70|state.SPI_D1b~q\ & (((\inst|inst70|DataIn\(1))) # 
-- (!\inst|inst70|state.SPI_D2b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D1b~q\,
	datab => \inst|inst70|state.SPI_D2b~q\,
	datac => \inst|inst70|DataIn\(1),
	datad => \inst|inst70|DataIn\(0),
	combout => \inst|inst70|Selector40~2_combout\);

-- Location: LCCOMB_X13_Y23_N26
\inst|inst70|Selector40~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~4_combout\ = (\inst|inst70|Selector40~2_combout\ & ((\inst|inst70|Selector40~3_combout\) # ((!\inst|inst70|Selector40~0_combout\) # (!\inst|inst70|Selector40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Selector40~3_combout\,
	datab => \inst|inst70|Selector40~1_combout\,
	datac => \inst|inst70|Selector40~0_combout\,
	datad => \inst|inst70|Selector40~2_combout\,
	combout => \inst|inst70|Selector40~4_combout\);

-- Location: FF_X15_Y23_N15
\inst|inst70|DataIn[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Mux3~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|DataIn[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(7));

-- Location: FF_X15_Y23_N25
\inst|inst70|DataIn[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Mux4~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst70|DataIn[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataIn\(6));

-- Location: LCCOMB_X15_Y23_N8
\inst|inst70|Selector40~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~7_combout\ = (\inst|inst70|state.AckDataLSB~q\ & (\inst|inst70|DataIn\(7) & ((\inst|inst70|DataIn\(6)) # (!\inst|inst70|state.SPI_D7b~q\)))) # (!\inst|inst70|state.AckDataLSB~q\ & (((\inst|inst70|DataIn\(6)) # 
-- (!\inst|inst70|state.SPI_D7b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.AckDataLSB~q\,
	datab => \inst|inst70|DataIn\(7),
	datac => \inst|inst70|state.SPI_D7b~q\,
	datad => \inst|inst70|DataIn\(6),
	combout => \inst|inst70|Selector40~7_combout\);

-- Location: LCCOMB_X13_Y23_N30
\inst|inst70|Selector40~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector40~8_combout\ = (\inst|inst70|Selector40~6_combout\ & (\inst|inst70|Selector40~5_combout\ & (\inst|inst70|Selector40~4_combout\ & \inst|inst70|Selector40~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Selector40~6_combout\,
	datab => \inst|inst70|Selector40~5_combout\,
	datac => \inst|inst70|Selector40~4_combout\,
	datad => \inst|inst70|Selector40~7_combout\,
	combout => \inst|inst70|Selector40~8_combout\);

-- Location: FF_X13_Y23_N31
\inst|inst70|mosi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector40~8_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|mosi~q\);

-- Location: IOIBUF_X14_Y31_N1
\SPI0_MOSI~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SPI0_MOSI,
	o => \SPI0_MOSI~input_o\);

-- Location: LCCOMB_X14_Y25_N26
\inst|inst72|5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst72|5~0_combout\ = (\inst|inst70|ListenOnly~q\ & (\inst|inst70|mosi~q\)) # (!\inst|inst70|ListenOnly~q\ & ((\SPI0_MOSI~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|ListenOnly~q\,
	datab => \inst|inst70|mosi~q\,
	datac => \SPI0_MOSI~input_o\,
	combout => \inst|inst72|5~0_combout\);

-- Location: LCCOMB_X13_Y25_N0
\SPI_PROTOCOL|inShift[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|inShift[0]~feeder_combout\ = \inst|inst72|5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst72|5~0_combout\,
	combout => \SPI_PROTOCOL|inShift[0]~feeder_combout\);

-- Location: FF_X13_Y25_N1
\SPI_PROTOCOL|inShift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|inShift[0]~feeder_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(0));

-- Location: FF_X13_Y24_N23
\SPI_PROTOCOL|inShift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|inShift\(0),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(1));

-- Location: FF_X13_Y24_N5
\SPI_PROTOCOL|inShift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|inShift\(1),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(2));

-- Location: FF_X13_Y24_N9
\SPI_PROTOCOL|inShift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|inShift\(2),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(3));

-- Location: FF_X13_Y24_N27
\SPI_PROTOCOL|inShift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|inShift\(3),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(4));

-- Location: LCCOMB_X12_Y24_N22
\SPI_PROTOCOL|Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal3~0_combout\ = (\SPI_PROTOCOL|inShift\(3) & \SPI_PROTOCOL|inShift\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI_PROTOCOL|inShift\(3),
	datad => \SPI_PROTOCOL|inShift\(4),
	combout => \SPI_PROTOCOL|Equal3~0_combout\);

-- Location: FF_X13_Y24_N15
\SPI_PROTOCOL|inShift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|inShift\(4),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(5));

-- Location: FF_X13_Y24_N31
\SPI_PROTOCOL|inShift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|inShift\(5),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(6));

-- Location: FF_X13_Y24_N11
\SPI_PROTOCOL|inShift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|inShift\(6),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|inShift\(7));

-- Location: LCCOMB_X12_Y24_N4
\SPI_PROTOCOL|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal1~0_combout\ = (\SPI_PROTOCOL|inShift\(6) & (!\SPI_PROTOCOL|inShift\(7) & (!\SPI_PROTOCOL|inShift\(5) & !\SPI_PROTOCOL|inShift\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(6),
	datab => \SPI_PROTOCOL|inShift\(7),
	datac => \SPI_PROTOCOL|inShift\(5),
	datad => \SPI_PROTOCOL|inShift\(2),
	combout => \SPI_PROTOCOL|Equal1~0_combout\);

-- Location: LCCOMB_X13_Y25_N18
\SPI_PROTOCOL|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal4~0_combout\ = (!\SPI_PROTOCOL|inShift\(0) & (\SPI_PROTOCOL|Equal3~0_combout\ & (!\SPI_PROTOCOL|inShift\(1) & \SPI_PROTOCOL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(0),
	datab => \SPI_PROTOCOL|Equal3~0_combout\,
	datac => \SPI_PROTOCOL|inShift\(1),
	datad => \SPI_PROTOCOL|Equal1~0_combout\,
	combout => \SPI_PROTOCOL|Equal4~0_combout\);

-- Location: LCCOMB_X13_Y25_N22
\SPI_PROTOCOL|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector18~0_combout\ = (\SPI_PROTOCOL|state.Command~q\ & (\SPI_PROTOCOL|WideOr18~combout\ & (\SPI_PROTOCOL|state.SRAMWrAddrB0~q\))) # (!\SPI_PROTOCOL|state.Command~q\ & ((\SPI_PROTOCOL|Equal4~0_combout\) # ((\SPI_PROTOCOL|WideOr18~combout\ 
-- & \SPI_PROTOCOL|state.SRAMWrAddrB0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.Command~q\,
	datab => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.SRAMWrAddrB0~q\,
	datad => \SPI_PROTOCOL|Equal4~0_combout\,
	combout => \SPI_PROTOCOL|Selector18~0_combout\);

-- Location: FF_X13_Y25_N23
\SPI_PROTOCOL|state.SRAMWrAddrB0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector18~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMWrAddrB0~q\);

-- Location: LCCOMB_X13_Y26_N2
\SPI_PROTOCOL|Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector19~0_combout\ = (\SPI_PROTOCOL|state.SRAMWrAddrB0~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.SRAMWrAddrB1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.SRAMWrAddrB1~q\,
	datad => \SPI_PROTOCOL|state.SRAMWrAddrB0~q\,
	combout => \SPI_PROTOCOL|Selector19~0_combout\);

-- Location: FF_X13_Y26_N3
\SPI_PROTOCOL|state.SRAMWrAddrB1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector19~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMWrAddrB1~q\);

-- Location: LCCOMB_X13_Y26_N28
\SPI_PROTOCOL|Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector20~0_combout\ = (\SPI_PROTOCOL|state.SRAMWrAddrB1~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.SRAMWrAddrB2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.SRAMWrAddrB2~q\,
	datad => \SPI_PROTOCOL|state.SRAMWrAddrB1~q\,
	combout => \SPI_PROTOCOL|Selector20~0_combout\);

-- Location: FF_X13_Y26_N29
\SPI_PROTOCOL|state.SRAMWrAddrB2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector20~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMWrAddrB2~q\);

-- Location: LCCOMB_X13_Y26_N10
\SPI_PROTOCOL|Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector21~0_combout\ = (\SPI_PROTOCOL|state.SRAMWrAddrB2~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.SRAMWrDataFirst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.SRAMWrDataFirst~q\,
	datad => \SPI_PROTOCOL|state.SRAMWrAddrB2~q\,
	combout => \SPI_PROTOCOL|Selector21~0_combout\);

-- Location: FF_X13_Y26_N11
\SPI_PROTOCOL|state.SRAMWrDataFirst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector21~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMWrDataFirst~q\);

-- Location: LCCOMB_X14_Y24_N2
\SPI_PROTOCOL|Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector22~0_combout\ = (\SPI_PROTOCOL|state.SRAMWrDataRest~q\) # (\SPI_PROTOCOL|state.SRAMWrDataFirst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI_PROTOCOL|state.SRAMWrDataRest~q\,
	datad => \SPI_PROTOCOL|state.SRAMWrDataFirst~q\,
	combout => \SPI_PROTOCOL|Selector22~0_combout\);

-- Location: FF_X14_Y24_N3
\SPI_PROTOCOL|state.SRAMWrDataRest\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector22~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMWrDataRest~q\);

-- Location: LCCOMB_X12_Y24_N6
\SPI_PROTOCOL|state.DumpRdPad~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.DumpRdPad~7_combout\ = (\SPI_PROTOCOL|inShift\(0)) # (((!\SPI_PROTOCOL|Equal1~0_combout\) # (!\SPI_PROTOCOL|inShift\(3))) # (!\SPI_PROTOCOL|inShift\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(0),
	datab => \SPI_PROTOCOL|inShift\(4),
	datac => \SPI_PROTOCOL|inShift\(3),
	datad => \SPI_PROTOCOL|Equal1~0_combout\,
	combout => \SPI_PROTOCOL|state.DumpRdPad~7_combout\);

-- Location: LCCOMB_X12_Y24_N20
\SPI_PROTOCOL|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal5~0_combout\ = (\SPI_PROTOCOL|Equal1~0_combout\ & (\SPI_PROTOCOL|inShift\(0) & (\SPI_PROTOCOL|Equal3~0_combout\ & !\SPI_PROTOCOL|inShift\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|Equal1~0_combout\,
	datab => \SPI_PROTOCOL|inShift\(0),
	datac => \SPI_PROTOCOL|Equal3~0_combout\,
	datad => \SPI_PROTOCOL|inShift\(1),
	combout => \SPI_PROTOCOL|Equal5~0_combout\);

-- Location: LCCOMB_X13_Y25_N30
\SPI_PROTOCOL|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal1~1_combout\ = (!\SPI_PROTOCOL|inShift\(3) & !\SPI_PROTOCOL|inShift\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI_PROTOCOL|inShift\(3),
	datad => \SPI_PROTOCOL|inShift\(4),
	combout => \SPI_PROTOCOL|Equal1~1_combout\);

-- Location: LCCOMB_X13_Y25_N8
\SPI_PROTOCOL|state.DumpRdPad~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.DumpRdPad~2_combout\ = ((\SPI_PROTOCOL|inShift\(0) $ (!\SPI_PROTOCOL|inShift\(1))) # (!\SPI_PROTOCOL|Equal1~0_combout\)) # (!\SPI_PROTOCOL|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|Equal1~1_combout\,
	datab => \SPI_PROTOCOL|inShift\(0),
	datac => \SPI_PROTOCOL|inShift\(1),
	datad => \SPI_PROTOCOL|Equal1~0_combout\,
	combout => \SPI_PROTOCOL|state.DumpRdPad~2_combout\);

-- Location: LCCOMB_X12_Y24_N12
\SPI_PROTOCOL|state.Finished~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.Finished~0_combout\ = (\SPI_PROTOCOL|state.DumpRdPad~7_combout\ & (!\SPI_PROTOCOL|Equal5~0_combout\ & (!\SPI_PROTOCOL|state.Command~q\ & \SPI_PROTOCOL|state.DumpRdPad~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.DumpRdPad~7_combout\,
	datab => \SPI_PROTOCOL|Equal5~0_combout\,
	datac => \SPI_PROTOCOL|state.Command~q\,
	datad => \SPI_PROTOCOL|state.DumpRdPad~2_combout\,
	combout => \SPI_PROTOCOL|state.Finished~0_combout\);

-- Location: LCCOMB_X13_Y25_N16
\SPI_PROTOCOL|Equal3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal3~1_combout\ = (!\SPI_PROTOCOL|inShift\(0) & (\SPI_PROTOCOL|Equal3~0_combout\ & (\SPI_PROTOCOL|inShift\(1) & \SPI_PROTOCOL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(0),
	datab => \SPI_PROTOCOL|Equal3~0_combout\,
	datac => \SPI_PROTOCOL|inShift\(1),
	datad => \SPI_PROTOCOL|Equal1~0_combout\,
	combout => \SPI_PROTOCOL|Equal3~1_combout\);

-- Location: LCCOMB_X13_Y25_N20
\SPI_PROTOCOL|Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector13~0_combout\ = (\SPI_PROTOCOL|state.Command~q\ & (\SPI_PROTOCOL|WideOr18~combout\ & (\SPI_PROTOCOL|state.SRAMRdAddrB0~q\))) # (!\SPI_PROTOCOL|state.Command~q\ & ((\SPI_PROTOCOL|Equal3~1_combout\) # ((\SPI_PROTOCOL|WideOr18~combout\ 
-- & \SPI_PROTOCOL|state.SRAMRdAddrB0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.Command~q\,
	datab => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.SRAMRdAddrB0~q\,
	datad => \SPI_PROTOCOL|Equal3~1_combout\,
	combout => \SPI_PROTOCOL|Selector13~0_combout\);

-- Location: FF_X13_Y25_N21
\SPI_PROTOCOL|state.SRAMRdAddrB0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector13~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMRdAddrB0~q\);

-- Location: LCCOMB_X14_Y24_N20
\SPI_PROTOCOL|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector14~0_combout\ = (\SPI_PROTOCOL|state.SRAMRdAddrB0~q\) # ((\SPI_PROTOCOL|state.SRAMRdAddrB1~q\ & \SPI_PROTOCOL|WideOr18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|state.SRAMRdAddrB0~q\,
	datac => \SPI_PROTOCOL|state.SRAMRdAddrB1~q\,
	datad => \SPI_PROTOCOL|WideOr18~combout\,
	combout => \SPI_PROTOCOL|Selector14~0_combout\);

-- Location: FF_X14_Y24_N21
\SPI_PROTOCOL|state.SRAMRdAddrB1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector14~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMRdAddrB1~q\);

-- Location: LCCOMB_X14_Y24_N8
\SPI_PROTOCOL|Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector15~0_combout\ = (\SPI_PROTOCOL|state.SRAMRdAddrB1~q\) # ((\SPI_PROTOCOL|state.SRAMRdAddrB2~q\ & \SPI_PROTOCOL|WideOr18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|state.SRAMRdAddrB1~q\,
	datac => \SPI_PROTOCOL|state.SRAMRdAddrB2~q\,
	datad => \SPI_PROTOCOL|WideOr18~combout\,
	combout => \SPI_PROTOCOL|Selector15~0_combout\);

-- Location: FF_X14_Y24_N9
\SPI_PROTOCOL|state.SRAMRdAddrB2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector15~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMRdAddrB2~q\);

-- Location: LCCOMB_X14_Y24_N4
\SPI_PROTOCOL|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector16~0_combout\ = (\SPI_PROTOCOL|state.SRAMRdAddrB2~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.SRAMRdPad~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datab => \SPI_PROTOCOL|state.SRAMRdAddrB2~q\,
	datac => \SPI_PROTOCOL|state.SRAMRdPad~q\,
	combout => \SPI_PROTOCOL|Selector16~0_combout\);

-- Location: FF_X14_Y24_N5
\SPI_PROTOCOL|state.SRAMRdPad\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector16~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMRdPad~q\);

-- Location: LCCOMB_X14_Y24_N28
\SPI_PROTOCOL|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector17~0_combout\ = (\SPI_PROTOCOL|state.SRAMRdPad~q\) # (\SPI_PROTOCOL|state.SRAMRdDataRest~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|state.SRAMRdPad~q\,
	datac => \SPI_PROTOCOL|state.SRAMRdDataRest~q\,
	combout => \SPI_PROTOCOL|Selector17~0_combout\);

-- Location: FF_X14_Y24_N29
\SPI_PROTOCOL|state.SRAMRdDataRest\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector17~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.SRAMRdDataRest~q\);

-- Location: LCCOMB_X12_Y24_N10
\SPI_PROTOCOL|state.DumpRdPad~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.DumpRdPad~3_combout\ = (\SPI_PROTOCOL|state.DumpRdPad~7_combout\ & (!\SPI_PROTOCOL|state.Command~q\ & \SPI_PROTOCOL|state.DumpRdPad~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.DumpRdPad~7_combout\,
	datac => \SPI_PROTOCOL|state.Command~q\,
	datad => \SPI_PROTOCOL|state.DumpRdPad~2_combout\,
	combout => \SPI_PROTOCOL|state.DumpRdPad~3_combout\);

-- Location: LCCOMB_X13_Y25_N28
\SPI_PROTOCOL|Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal1~2_combout\ = (\SPI_PROTOCOL|Equal1~1_combout\ & (\SPI_PROTOCOL|inShift\(0) & (!\SPI_PROTOCOL|inShift\(1) & \SPI_PROTOCOL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|Equal1~1_combout\,
	datab => \SPI_PROTOCOL|inShift\(0),
	datac => \SPI_PROTOCOL|inShift\(1),
	datad => \SPI_PROTOCOL|Equal1~0_combout\,
	combout => \SPI_PROTOCOL|Equal1~2_combout\);

-- Location: LCCOMB_X13_Y25_N24
\SPI_PROTOCOL|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector1~0_combout\ = (\SPI_PROTOCOL|state.Command~q\ & (\SPI_PROTOCOL|WideOr18~combout\ & (\SPI_PROTOCOL|state.WrLengthL~q\))) # (!\SPI_PROTOCOL|state.Command~q\ & ((\SPI_PROTOCOL|Equal1~2_combout\) # ((\SPI_PROTOCOL|WideOr18~combout\ & 
-- \SPI_PROTOCOL|state.WrLengthL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.Command~q\,
	datab => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.WrLengthL~q\,
	datad => \SPI_PROTOCOL|Equal1~2_combout\,
	combout => \SPI_PROTOCOL|Selector1~0_combout\);

-- Location: FF_X13_Y25_N25
\SPI_PROTOCOL|state.WrLengthL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector1~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.WrLengthL~q\);

-- Location: LCCOMB_X13_Y25_N6
\SPI_PROTOCOL|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector2~0_combout\ = (\SPI_PROTOCOL|state.WrLengthL~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.WrLengthM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.WrLengthM~q\,
	datad => \SPI_PROTOCOL|state.WrLengthL~q\,
	combout => \SPI_PROTOCOL|Selector2~0_combout\);

-- Location: FF_X13_Y25_N7
\SPI_PROTOCOL|state.WrLengthM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector2~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.WrLengthM~q\);

-- Location: LCCOMB_X13_Y26_N26
\SPI_PROTOCOL|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector3~0_combout\ = (\SPI_PROTOCOL|state.WrLengthM~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.WrBase~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datab => \SPI_PROTOCOL|state.WrLengthM~q\,
	datac => \SPI_PROTOCOL|state.WrBase~q\,
	combout => \SPI_PROTOCOL|Selector3~0_combout\);

-- Location: FF_X13_Y26_N27
\SPI_PROTOCOL|state.WrBase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector3~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.WrBase~q\);

-- Location: LCCOMB_X13_Y25_N2
\SPI_PROTOCOL|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal2~0_combout\ = (\SPI_PROTOCOL|Equal1~1_combout\ & (!\SPI_PROTOCOL|inShift\(0) & (\SPI_PROTOCOL|inShift\(1) & \SPI_PROTOCOL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|Equal1~1_combout\,
	datab => \SPI_PROTOCOL|inShift\(0),
	datac => \SPI_PROTOCOL|inShift\(1),
	datad => \SPI_PROTOCOL|Equal1~0_combout\,
	combout => \SPI_PROTOCOL|Equal2~0_combout\);

-- Location: LCCOMB_X13_Y25_N10
\SPI_PROTOCOL|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector6~0_combout\ = (\SPI_PROTOCOL|state.Command~q\ & (\SPI_PROTOCOL|WideOr18~combout\ & (\SPI_PROTOCOL|state.RdLengthL~q\))) # (!\SPI_PROTOCOL|state.Command~q\ & ((\SPI_PROTOCOL|Equal2~0_combout\) # ((\SPI_PROTOCOL|WideOr18~combout\ & 
-- \SPI_PROTOCOL|state.RdLengthL~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.Command~q\,
	datab => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.RdLengthL~q\,
	datad => \SPI_PROTOCOL|Equal2~0_combout\,
	combout => \SPI_PROTOCOL|Selector6~0_combout\);

-- Location: FF_X13_Y25_N11
\SPI_PROTOCOL|state.RdLengthL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector6~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.RdLengthL~q\);

-- Location: LCCOMB_X11_Y25_N0
\SPI_PROTOCOL|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~0_combout\ = \SPI_PROTOCOL|cntlength\(0) $ (VCC)
-- \SPI_PROTOCOL|Add1~1\ = CARRY(\SPI_PROTOCOL|cntlength\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(0),
	datad => VCC,
	combout => \SPI_PROTOCOL|Add1~0_combout\,
	cout => \SPI_PROTOCOL|Add1~1\);

-- Location: LCCOMB_X12_Y24_N24
\SPI_PROTOCOL|Selector38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector38~0_combout\ = (\SPI_PROTOCOL|state.RdLengthL~q\ & (\SPI_PROTOCOL|inShift\(0))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & ((\SPI_PROTOCOL|state.WrLengthL~q\ & (\SPI_PROTOCOL|inShift\(0))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & 
-- ((\SPI_PROTOCOL|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthL~q\,
	datab => \SPI_PROTOCOL|inShift\(0),
	datac => \SPI_PROTOCOL|Add1~0_combout\,
	datad => \SPI_PROTOCOL|state.WrLengthL~q\,
	combout => \SPI_PROTOCOL|Selector38~0_combout\);

-- Location: LCCOMB_X13_Y25_N12
\SPI_PROTOCOL|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector7~0_combout\ = (\SPI_PROTOCOL|state.RdLengthL~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.RdLengthM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthL~q\,
	datab => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.RdLengthM~q\,
	combout => \SPI_PROTOCOL|Selector7~0_combout\);

-- Location: FF_X13_Y25_N13
\SPI_PROTOCOL|state.RdLengthM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector7~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.RdLengthM~q\);

-- Location: LCCOMB_X14_Y24_N18
\SPI_PROTOCOL|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector8~0_combout\ = (\SPI_PROTOCOL|state.RdLengthM~q\) # ((\SPI_PROTOCOL|state.RdBase~q\ & \SPI_PROTOCOL|WideOr18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthM~q\,
	datac => \SPI_PROTOCOL|state.RdBase~q\,
	datad => \SPI_PROTOCOL|WideOr18~combout\,
	combout => \SPI_PROTOCOL|Selector8~0_combout\);

-- Location: FF_X14_Y24_N19
\SPI_PROTOCOL|state.RdBase\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector8~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.RdBase~q\);

-- Location: LCCOMB_X13_Y24_N20
\SPI_PROTOCOL|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector9~0_combout\ = (\SPI_PROTOCOL|state.RdBase~q\) # ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.RdPad~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.RdPad~q\,
	datad => \SPI_PROTOCOL|state.RdBase~q\,
	combout => \SPI_PROTOCOL|Selector9~0_combout\);

-- Location: FF_X13_Y24_N21
\SPI_PROTOCOL|state.RdPad\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector9~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.RdPad~q\);

-- Location: LCCOMB_X13_Y26_N22
\SPI_PROTOCOL|cntlength[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|cntlength[0]~0_combout\ = (!\SPI_PROTOCOL|state.RdData~q\ & (!\SPI_PROTOCOL|state.WrData~q\ & !\SPI_PROTOCOL|state.RdPad~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.WrData~q\,
	datac => \SPI_PROTOCOL|state.RdPad~q\,
	combout => \SPI_PROTOCOL|cntlength[0]~0_combout\);

-- Location: LCCOMB_X12_Y24_N26
\SPI_PROTOCOL|cntlength[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|cntlength[0]~1_combout\ = (\SPI_PROTOCOL|byteStrobe~q\ & ((\SPI_PROTOCOL|state.WrLengthL~q\) # ((\SPI_PROTOCOL|state.RdLengthL~q\) # (!\SPI_PROTOCOL|cntlength[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.WrLengthL~q\,
	datab => \SPI_PROTOCOL|byteStrobe~q\,
	datac => \SPI_PROTOCOL|state.RdLengthL~q\,
	datad => \SPI_PROTOCOL|cntlength[0]~0_combout\,
	combout => \SPI_PROTOCOL|cntlength[0]~1_combout\);

-- Location: FF_X12_Y24_N25
\SPI_PROTOCOL|cntlength[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector38~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(0));

-- Location: LCCOMB_X11_Y25_N2
\SPI_PROTOCOL|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~2_combout\ = (\SPI_PROTOCOL|cntlength\(1) & (\SPI_PROTOCOL|Add1~1\ & VCC)) # (!\SPI_PROTOCOL|cntlength\(1) & (!\SPI_PROTOCOL|Add1~1\))
-- \SPI_PROTOCOL|Add1~3\ = CARRY((!\SPI_PROTOCOL|cntlength\(1) & !\SPI_PROTOCOL|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(1),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~1\,
	combout => \SPI_PROTOCOL|Add1~2_combout\,
	cout => \SPI_PROTOCOL|Add1~3\);

-- Location: LCCOMB_X12_Y24_N0
\SPI_PROTOCOL|Selector37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector37~0_combout\ = (\SPI_PROTOCOL|state.RdLengthL~q\ & (((\SPI_PROTOCOL|inShift\(1))))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & ((\SPI_PROTOCOL|state.WrLengthL~q\ & ((\SPI_PROTOCOL|inShift\(1)))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & 
-- (\SPI_PROTOCOL|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|Add1~2_combout\,
	datab => \SPI_PROTOCOL|inShift\(1),
	datac => \SPI_PROTOCOL|state.RdLengthL~q\,
	datad => \SPI_PROTOCOL|state.WrLengthL~q\,
	combout => \SPI_PROTOCOL|Selector37~0_combout\);

-- Location: FF_X12_Y24_N1
\SPI_PROTOCOL|cntlength[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector37~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(1));

-- Location: LCCOMB_X11_Y25_N4
\SPI_PROTOCOL|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~4_combout\ = (\SPI_PROTOCOL|cntlength\(2) & ((GND) # (!\SPI_PROTOCOL|Add1~3\))) # (!\SPI_PROTOCOL|cntlength\(2) & (\SPI_PROTOCOL|Add1~3\ $ (GND)))
-- \SPI_PROTOCOL|Add1~5\ = CARRY((\SPI_PROTOCOL|cntlength\(2)) # (!\SPI_PROTOCOL|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|cntlength\(2),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~3\,
	combout => \SPI_PROTOCOL|Add1~4_combout\,
	cout => \SPI_PROTOCOL|Add1~5\);

-- Location: LCCOMB_X12_Y24_N2
\SPI_PROTOCOL|Selector36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector36~0_combout\ = (\SPI_PROTOCOL|state.WrLengthL~q\ & (((\SPI_PROTOCOL|inShift\(2))))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & ((\SPI_PROTOCOL|state.RdLengthL~q\ & ((\SPI_PROTOCOL|inShift\(2)))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & 
-- (\SPI_PROTOCOL|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.WrLengthL~q\,
	datab => \SPI_PROTOCOL|Add1~4_combout\,
	datac => \SPI_PROTOCOL|state.RdLengthL~q\,
	datad => \SPI_PROTOCOL|inShift\(2),
	combout => \SPI_PROTOCOL|Selector36~0_combout\);

-- Location: FF_X12_Y24_N3
\SPI_PROTOCOL|cntlength[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector36~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(2));

-- Location: LCCOMB_X11_Y25_N6
\SPI_PROTOCOL|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~6_combout\ = (\SPI_PROTOCOL|cntlength\(3) & (\SPI_PROTOCOL|Add1~5\ & VCC)) # (!\SPI_PROTOCOL|cntlength\(3) & (!\SPI_PROTOCOL|Add1~5\))
-- \SPI_PROTOCOL|Add1~7\ = CARRY((!\SPI_PROTOCOL|cntlength\(3) & !\SPI_PROTOCOL|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|cntlength\(3),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~5\,
	combout => \SPI_PROTOCOL|Add1~6_combout\,
	cout => \SPI_PROTOCOL|Add1~7\);

-- Location: LCCOMB_X12_Y24_N8
\SPI_PROTOCOL|Selector35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector35~0_combout\ = (\SPI_PROTOCOL|state.RdLengthL~q\ & (\SPI_PROTOCOL|inShift\(3))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & ((\SPI_PROTOCOL|state.WrLengthL~q\ & (\SPI_PROTOCOL|inShift\(3))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & 
-- ((\SPI_PROTOCOL|Add1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthL~q\,
	datab => \SPI_PROTOCOL|inShift\(3),
	datac => \SPI_PROTOCOL|Add1~6_combout\,
	datad => \SPI_PROTOCOL|state.WrLengthL~q\,
	combout => \SPI_PROTOCOL|Selector35~0_combout\);

-- Location: FF_X12_Y24_N9
\SPI_PROTOCOL|cntlength[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector35~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(3));

-- Location: LCCOMB_X11_Y25_N8
\SPI_PROTOCOL|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~8_combout\ = (\SPI_PROTOCOL|cntlength\(4) & ((GND) # (!\SPI_PROTOCOL|Add1~7\))) # (!\SPI_PROTOCOL|cntlength\(4) & (\SPI_PROTOCOL|Add1~7\ $ (GND)))
-- \SPI_PROTOCOL|Add1~9\ = CARRY((\SPI_PROTOCOL|cntlength\(4)) # (!\SPI_PROTOCOL|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(4),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~7\,
	combout => \SPI_PROTOCOL|Add1~8_combout\,
	cout => \SPI_PROTOCOL|Add1~9\);

-- Location: LCCOMB_X12_Y24_N18
\SPI_PROTOCOL|Selector34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector34~0_combout\ = (\SPI_PROTOCOL|state.RdLengthL~q\ & (\SPI_PROTOCOL|inShift\(4))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & ((\SPI_PROTOCOL|state.WrLengthL~q\ & (\SPI_PROTOCOL|inShift\(4))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & 
-- ((\SPI_PROTOCOL|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthL~q\,
	datab => \SPI_PROTOCOL|inShift\(4),
	datac => \SPI_PROTOCOL|Add1~8_combout\,
	datad => \SPI_PROTOCOL|state.WrLengthL~q\,
	combout => \SPI_PROTOCOL|Selector34~0_combout\);

-- Location: FF_X12_Y24_N19
\SPI_PROTOCOL|cntlength[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector34~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(4));

-- Location: LCCOMB_X11_Y25_N10
\SPI_PROTOCOL|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~10_combout\ = (\SPI_PROTOCOL|cntlength\(5) & (\SPI_PROTOCOL|Add1~9\ & VCC)) # (!\SPI_PROTOCOL|cntlength\(5) & (!\SPI_PROTOCOL|Add1~9\))
-- \SPI_PROTOCOL|Add1~11\ = CARRY((!\SPI_PROTOCOL|cntlength\(5) & !\SPI_PROTOCOL|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|cntlength\(5),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~9\,
	combout => \SPI_PROTOCOL|Add1~10_combout\,
	cout => \SPI_PROTOCOL|Add1~11\);

-- Location: LCCOMB_X12_Y24_N14
\SPI_PROTOCOL|Selector33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector33~0_combout\ = (\SPI_PROTOCOL|state.WrLengthL~q\ & (\SPI_PROTOCOL|inShift\(5))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & ((\SPI_PROTOCOL|state.RdLengthL~q\ & (\SPI_PROTOCOL|inShift\(5))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & 
-- ((\SPI_PROTOCOL|Add1~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(5),
	datab => \SPI_PROTOCOL|state.WrLengthL~q\,
	datac => \SPI_PROTOCOL|state.RdLengthL~q\,
	datad => \SPI_PROTOCOL|Add1~10_combout\,
	combout => \SPI_PROTOCOL|Selector33~0_combout\);

-- Location: FF_X12_Y24_N15
\SPI_PROTOCOL|cntlength[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector33~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(5));

-- Location: LCCOMB_X11_Y25_N12
\SPI_PROTOCOL|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~12_combout\ = (\SPI_PROTOCOL|cntlength\(6) & ((GND) # (!\SPI_PROTOCOL|Add1~11\))) # (!\SPI_PROTOCOL|cntlength\(6) & (\SPI_PROTOCOL|Add1~11\ $ (GND)))
-- \SPI_PROTOCOL|Add1~13\ = CARRY((\SPI_PROTOCOL|cntlength\(6)) # (!\SPI_PROTOCOL|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(6),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~11\,
	combout => \SPI_PROTOCOL|Add1~12_combout\,
	cout => \SPI_PROTOCOL|Add1~13\);

-- Location: LCCOMB_X12_Y24_N28
\SPI_PROTOCOL|Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector32~0_combout\ = (\SPI_PROTOCOL|state.RdLengthL~q\ & (\SPI_PROTOCOL|inShift\(6))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & ((\SPI_PROTOCOL|state.WrLengthL~q\ & (\SPI_PROTOCOL|inShift\(6))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & 
-- ((\SPI_PROTOCOL|Add1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(6),
	datab => \SPI_PROTOCOL|Add1~12_combout\,
	datac => \SPI_PROTOCOL|state.RdLengthL~q\,
	datad => \SPI_PROTOCOL|state.WrLengthL~q\,
	combout => \SPI_PROTOCOL|Selector32~0_combout\);

-- Location: FF_X12_Y24_N29
\SPI_PROTOCOL|cntlength[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector32~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(6));

-- Location: LCCOMB_X11_Y25_N14
\SPI_PROTOCOL|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~14_combout\ = (\SPI_PROTOCOL|cntlength\(7) & (\SPI_PROTOCOL|Add1~13\ & VCC)) # (!\SPI_PROTOCOL|cntlength\(7) & (!\SPI_PROTOCOL|Add1~13\))
-- \SPI_PROTOCOL|Add1~15\ = CARRY((!\SPI_PROTOCOL|cntlength\(7) & !\SPI_PROTOCOL|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|cntlength\(7),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~13\,
	combout => \SPI_PROTOCOL|Add1~14_combout\,
	cout => \SPI_PROTOCOL|Add1~15\);

-- Location: LCCOMB_X12_Y24_N30
\SPI_PROTOCOL|Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector31~0_combout\ = (\SPI_PROTOCOL|state.RdLengthL~q\ & (\SPI_PROTOCOL|inShift\(7))) # (!\SPI_PROTOCOL|state.RdLengthL~q\ & ((\SPI_PROTOCOL|state.WrLengthL~q\ & (\SPI_PROTOCOL|inShift\(7))) # (!\SPI_PROTOCOL|state.WrLengthL~q\ & 
-- ((\SPI_PROTOCOL|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthL~q\,
	datab => \SPI_PROTOCOL|inShift\(7),
	datac => \SPI_PROTOCOL|Add1~14_combout\,
	datad => \SPI_PROTOCOL|state.WrLengthL~q\,
	combout => \SPI_PROTOCOL|Selector31~0_combout\);

-- Location: FF_X12_Y24_N31
\SPI_PROTOCOL|cntlength[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector31~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(7));

-- Location: LCCOMB_X11_Y25_N16
\SPI_PROTOCOL|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~16_combout\ = (\SPI_PROTOCOL|cntlength\(8) & ((GND) # (!\SPI_PROTOCOL|Add1~15\))) # (!\SPI_PROTOCOL|cntlength\(8) & (\SPI_PROTOCOL|Add1~15\ $ (GND)))
-- \SPI_PROTOCOL|Add1~17\ = CARRY((\SPI_PROTOCOL|cntlength\(8)) # (!\SPI_PROTOCOL|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(8),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~15\,
	combout => \SPI_PROTOCOL|Add1~16_combout\,
	cout => \SPI_PROTOCOL|Add1~17\);

-- Location: LCCOMB_X11_Y24_N14
\SPI_PROTOCOL|Selector30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector30~0_combout\ = (\SPI_PROTOCOL|state.RdLengthM~q\ & (\SPI_PROTOCOL|inShift\(0))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & ((\SPI_PROTOCOL|state.WrLengthM~q\ & (\SPI_PROTOCOL|inShift\(0))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & 
-- ((\SPI_PROTOCOL|Add1~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(0),
	datab => \SPI_PROTOCOL|Add1~16_combout\,
	datac => \SPI_PROTOCOL|state.RdLengthM~q\,
	datad => \SPI_PROTOCOL|state.WrLengthM~q\,
	combout => \SPI_PROTOCOL|Selector30~0_combout\);

-- Location: LCCOMB_X11_Y24_N6
\SPI_PROTOCOL|cntlength[8]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|cntlength[8]~2_combout\ = (\SPI_PROTOCOL|byteStrobe~q\ & ((\SPI_PROTOCOL|state.WrLengthM~q\) # ((\SPI_PROTOCOL|state.RdLengthM~q\) # (!\SPI_PROTOCOL|cntlength[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|byteStrobe~q\,
	datab => \SPI_PROTOCOL|state.WrLengthM~q\,
	datac => \SPI_PROTOCOL|state.RdLengthM~q\,
	datad => \SPI_PROTOCOL|cntlength[0]~0_combout\,
	combout => \SPI_PROTOCOL|cntlength[8]~2_combout\);

-- Location: FF_X11_Y24_N15
\SPI_PROTOCOL|cntlength[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector30~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(8));

-- Location: LCCOMB_X11_Y25_N18
\SPI_PROTOCOL|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~18_combout\ = (\SPI_PROTOCOL|cntlength\(9) & (\SPI_PROTOCOL|Add1~17\ & VCC)) # (!\SPI_PROTOCOL|cntlength\(9) & (!\SPI_PROTOCOL|Add1~17\))
-- \SPI_PROTOCOL|Add1~19\ = CARRY((!\SPI_PROTOCOL|cntlength\(9) & !\SPI_PROTOCOL|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(9),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~17\,
	combout => \SPI_PROTOCOL|Add1~18_combout\,
	cout => \SPI_PROTOCOL|Add1~19\);

-- Location: LCCOMB_X11_Y24_N26
\SPI_PROTOCOL|Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector29~0_combout\ = (\SPI_PROTOCOL|state.RdLengthM~q\ & (\SPI_PROTOCOL|inShift\(1))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & ((\SPI_PROTOCOL|state.WrLengthM~q\ & (\SPI_PROTOCOL|inShift\(1))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & 
-- ((\SPI_PROTOCOL|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthM~q\,
	datab => \SPI_PROTOCOL|inShift\(1),
	datac => \SPI_PROTOCOL|Add1~18_combout\,
	datad => \SPI_PROTOCOL|state.WrLengthM~q\,
	combout => \SPI_PROTOCOL|Selector29~0_combout\);

-- Location: FF_X11_Y24_N27
\SPI_PROTOCOL|cntlength[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector29~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(9));

-- Location: LCCOMB_X11_Y25_N20
\SPI_PROTOCOL|Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~20_combout\ = (\SPI_PROTOCOL|cntlength\(10) & ((GND) # (!\SPI_PROTOCOL|Add1~19\))) # (!\SPI_PROTOCOL|cntlength\(10) & (\SPI_PROTOCOL|Add1~19\ $ (GND)))
-- \SPI_PROTOCOL|Add1~21\ = CARRY((\SPI_PROTOCOL|cntlength\(10)) # (!\SPI_PROTOCOL|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(10),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~19\,
	combout => \SPI_PROTOCOL|Add1~20_combout\,
	cout => \SPI_PROTOCOL|Add1~21\);

-- Location: LCCOMB_X11_Y24_N12
\SPI_PROTOCOL|Selector28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector28~0_combout\ = (\SPI_PROTOCOL|state.RdLengthM~q\ & (((\SPI_PROTOCOL|inShift\(2))))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & ((\SPI_PROTOCOL|state.WrLengthM~q\ & (\SPI_PROTOCOL|inShift\(2))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & 
-- ((\SPI_PROTOCOL|Add1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthM~q\,
	datab => \SPI_PROTOCOL|state.WrLengthM~q\,
	datac => \SPI_PROTOCOL|inShift\(2),
	datad => \SPI_PROTOCOL|Add1~20_combout\,
	combout => \SPI_PROTOCOL|Selector28~0_combout\);

-- Location: FF_X11_Y24_N13
\SPI_PROTOCOL|cntlength[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector28~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(10));

-- Location: LCCOMB_X11_Y25_N22
\SPI_PROTOCOL|Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~22_combout\ = (\SPI_PROTOCOL|cntlength\(11) & (\SPI_PROTOCOL|Add1~21\ & VCC)) # (!\SPI_PROTOCOL|cntlength\(11) & (!\SPI_PROTOCOL|Add1~21\))
-- \SPI_PROTOCOL|Add1~23\ = CARRY((!\SPI_PROTOCOL|cntlength\(11) & !\SPI_PROTOCOL|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(11),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~21\,
	combout => \SPI_PROTOCOL|Add1~22_combout\,
	cout => \SPI_PROTOCOL|Add1~23\);

-- Location: LCCOMB_X11_Y24_N2
\SPI_PROTOCOL|Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector27~0_combout\ = (\SPI_PROTOCOL|state.RdLengthM~q\ & (\SPI_PROTOCOL|inShift\(3))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & ((\SPI_PROTOCOL|state.WrLengthM~q\ & (\SPI_PROTOCOL|inShift\(3))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & 
-- ((\SPI_PROTOCOL|Add1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthM~q\,
	datab => \SPI_PROTOCOL|inShift\(3),
	datac => \SPI_PROTOCOL|Add1~22_combout\,
	datad => \SPI_PROTOCOL|state.WrLengthM~q\,
	combout => \SPI_PROTOCOL|Selector27~0_combout\);

-- Location: FF_X11_Y24_N3
\SPI_PROTOCOL|cntlength[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector27~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(11));

-- Location: LCCOMB_X11_Y25_N24
\SPI_PROTOCOL|Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~24_combout\ = (\SPI_PROTOCOL|cntlength\(12) & ((GND) # (!\SPI_PROTOCOL|Add1~23\))) # (!\SPI_PROTOCOL|cntlength\(12) & (\SPI_PROTOCOL|Add1~23\ $ (GND)))
-- \SPI_PROTOCOL|Add1~25\ = CARRY((\SPI_PROTOCOL|cntlength\(12)) # (!\SPI_PROTOCOL|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(12),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~23\,
	combout => \SPI_PROTOCOL|Add1~24_combout\,
	cout => \SPI_PROTOCOL|Add1~25\);

-- Location: LCCOMB_X11_Y24_N16
\SPI_PROTOCOL|Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector26~0_combout\ = (\SPI_PROTOCOL|state.WrLengthM~q\ & (\SPI_PROTOCOL|inShift\(4))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & ((\SPI_PROTOCOL|state.RdLengthM~q\ & (\SPI_PROTOCOL|inShift\(4))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & 
-- ((\SPI_PROTOCOL|Add1~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(4),
	datab => \SPI_PROTOCOL|state.WrLengthM~q\,
	datac => \SPI_PROTOCOL|state.RdLengthM~q\,
	datad => \SPI_PROTOCOL|Add1~24_combout\,
	combout => \SPI_PROTOCOL|Selector26~0_combout\);

-- Location: FF_X11_Y24_N17
\SPI_PROTOCOL|cntlength[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector26~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(12));

-- Location: LCCOMB_X11_Y24_N22
\SPI_PROTOCOL|Equal6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal6~2_combout\ = (!\SPI_PROTOCOL|cntlength\(10) & (!\SPI_PROTOCOL|cntlength\(12) & (!\SPI_PROTOCOL|cntlength\(9) & !\SPI_PROTOCOL|cntlength\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(10),
	datab => \SPI_PROTOCOL|cntlength\(12),
	datac => \SPI_PROTOCOL|cntlength\(9),
	datad => \SPI_PROTOCOL|cntlength\(11),
	combout => \SPI_PROTOCOL|Equal6~2_combout\);

-- Location: LCCOMB_X11_Y24_N20
\SPI_PROTOCOL|Equal6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal6~1_combout\ = (!\SPI_PROTOCOL|cntlength\(8) & (!\SPI_PROTOCOL|cntlength\(5) & (!\SPI_PROTOCOL|cntlength\(7) & !\SPI_PROTOCOL|cntlength\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(8),
	datab => \SPI_PROTOCOL|cntlength\(5),
	datac => \SPI_PROTOCOL|cntlength\(7),
	datad => \SPI_PROTOCOL|cntlength\(6),
	combout => \SPI_PROTOCOL|Equal6~1_combout\);

-- Location: LCCOMB_X11_Y25_N26
\SPI_PROTOCOL|Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~26_combout\ = (\SPI_PROTOCOL|cntlength\(13) & (\SPI_PROTOCOL|Add1~25\ & VCC)) # (!\SPI_PROTOCOL|cntlength\(13) & (!\SPI_PROTOCOL|Add1~25\))
-- \SPI_PROTOCOL|Add1~27\ = CARRY((!\SPI_PROTOCOL|cntlength\(13) & !\SPI_PROTOCOL|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(13),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~25\,
	combout => \SPI_PROTOCOL|Add1~26_combout\,
	cout => \SPI_PROTOCOL|Add1~27\);

-- Location: LCCOMB_X11_Y24_N4
\SPI_PROTOCOL|Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector25~0_combout\ = (\SPI_PROTOCOL|state.RdLengthM~q\ & (((\SPI_PROTOCOL|inShift\(5))))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & ((\SPI_PROTOCOL|state.WrLengthM~q\ & ((\SPI_PROTOCOL|inShift\(5)))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & 
-- (\SPI_PROTOCOL|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthM~q\,
	datab => \SPI_PROTOCOL|state.WrLengthM~q\,
	datac => \SPI_PROTOCOL|Add1~26_combout\,
	datad => \SPI_PROTOCOL|inShift\(5),
	combout => \SPI_PROTOCOL|Selector25~0_combout\);

-- Location: FF_X11_Y24_N5
\SPI_PROTOCOL|cntlength[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector25~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(13));

-- Location: LCCOMB_X11_Y25_N28
\SPI_PROTOCOL|Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~28_combout\ = (\SPI_PROTOCOL|cntlength\(14) & ((GND) # (!\SPI_PROTOCOL|Add1~27\))) # (!\SPI_PROTOCOL|cntlength\(14) & (\SPI_PROTOCOL|Add1~27\ $ (GND)))
-- \SPI_PROTOCOL|Add1~29\ = CARRY((\SPI_PROTOCOL|cntlength\(14)) # (!\SPI_PROTOCOL|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|cntlength\(14),
	datad => VCC,
	cin => \SPI_PROTOCOL|Add1~27\,
	combout => \SPI_PROTOCOL|Add1~28_combout\,
	cout => \SPI_PROTOCOL|Add1~29\);

-- Location: LCCOMB_X11_Y24_N18
\SPI_PROTOCOL|Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector24~0_combout\ = (\SPI_PROTOCOL|state.WrLengthM~q\ & (\SPI_PROTOCOL|inShift\(6))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & ((\SPI_PROTOCOL|state.RdLengthM~q\ & (\SPI_PROTOCOL|inShift\(6))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & 
-- ((\SPI_PROTOCOL|Add1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(6),
	datab => \SPI_PROTOCOL|state.WrLengthM~q\,
	datac => \SPI_PROTOCOL|state.RdLengthM~q\,
	datad => \SPI_PROTOCOL|Add1~28_combout\,
	combout => \SPI_PROTOCOL|Selector24~0_combout\);

-- Location: FF_X11_Y24_N19
\SPI_PROTOCOL|cntlength[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector24~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(14));

-- Location: LCCOMB_X11_Y25_N30
\SPI_PROTOCOL|Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Add1~30_combout\ = \SPI_PROTOCOL|Add1~29\ $ (!\SPI_PROTOCOL|cntlength\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|cntlength\(15),
	cin => \SPI_PROTOCOL|Add1~29\,
	combout => \SPI_PROTOCOL|Add1~30_combout\);

-- Location: LCCOMB_X11_Y24_N8
\SPI_PROTOCOL|Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector23~0_combout\ = (\SPI_PROTOCOL|state.RdLengthM~q\ & (((\SPI_PROTOCOL|inShift\(7))))) # (!\SPI_PROTOCOL|state.RdLengthM~q\ & ((\SPI_PROTOCOL|state.WrLengthM~q\ & ((\SPI_PROTOCOL|inShift\(7)))) # (!\SPI_PROTOCOL|state.WrLengthM~q\ & 
-- (\SPI_PROTOCOL|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdLengthM~q\,
	datab => \SPI_PROTOCOL|state.WrLengthM~q\,
	datac => \SPI_PROTOCOL|Add1~30_combout\,
	datad => \SPI_PROTOCOL|inShift\(7),
	combout => \SPI_PROTOCOL|Selector23~0_combout\);

-- Location: FF_X11_Y24_N9
\SPI_PROTOCOL|cntlength[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector23~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|cntlength[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|cntlength\(15));

-- Location: LCCOMB_X11_Y24_N30
\SPI_PROTOCOL|Equal6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal6~3_combout\ = (!\SPI_PROTOCOL|cntlength\(13) & (!\SPI_PROTOCOL|cntlength\(15) & !\SPI_PROTOCOL|cntlength\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|cntlength\(13),
	datac => \SPI_PROTOCOL|cntlength\(15),
	datad => \SPI_PROTOCOL|cntlength\(14),
	combout => \SPI_PROTOCOL|Equal6~3_combout\);

-- Location: LCCOMB_X12_Y24_N16
\SPI_PROTOCOL|Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal6~0_combout\ = (!\SPI_PROTOCOL|cntlength\(1) & (!\SPI_PROTOCOL|cntlength\(4) & (!\SPI_PROTOCOL|cntlength\(3) & !\SPI_PROTOCOL|cntlength\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|cntlength\(1),
	datab => \SPI_PROTOCOL|cntlength\(4),
	datac => \SPI_PROTOCOL|cntlength\(3),
	datad => \SPI_PROTOCOL|cntlength\(2),
	combout => \SPI_PROTOCOL|Equal6~0_combout\);

-- Location: LCCOMB_X11_Y24_N0
\SPI_PROTOCOL|Equal6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Equal6~4_combout\ = (\SPI_PROTOCOL|Equal6~2_combout\ & (\SPI_PROTOCOL|Equal6~1_combout\ & (\SPI_PROTOCOL|Equal6~3_combout\ & \SPI_PROTOCOL|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|Equal6~2_combout\,
	datab => \SPI_PROTOCOL|Equal6~1_combout\,
	datac => \SPI_PROTOCOL|Equal6~3_combout\,
	datad => \SPI_PROTOCOL|Equal6~0_combout\,
	combout => \SPI_PROTOCOL|Equal6~4_combout\);

-- Location: LCCOMB_X13_Y26_N8
\SPI_PROTOCOL|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector4~0_combout\ = (\SPI_PROTOCOL|state.WrData~q\ & ((\SPI_PROTOCOL|WideOr18~combout\) # ((!\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|cntlength\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datab => \SPI_PROTOCOL|state.WrData~q\,
	datac => \SPI_PROTOCOL|cntlength\(0),
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y26_N16
\SPI_PROTOCOL|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector4~1_combout\ = (\SPI_PROTOCOL|state.WrBase~q\) # (\SPI_PROTOCOL|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.WrBase~q\,
	datac => \SPI_PROTOCOL|Selector4~0_combout\,
	combout => \SPI_PROTOCOL|Selector4~1_combout\);

-- Location: FF_X13_Y26_N17
\SPI_PROTOCOL|state.WrData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector4~1_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.WrData~q\);

-- Location: LCCOMB_X13_Y26_N24
\SPI_PROTOCOL|state.DumpRdPad~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.DumpRdPad~4_combout\ = (\SPI_PROTOCOL|state.RdData~q\ & (((\SPI_PROTOCOL|cntlength\(0)) # (!\SPI_PROTOCOL|Equal6~4_combout\)))) # (!\SPI_PROTOCOL|state.RdData~q\ & (\SPI_PROTOCOL|state.WrData~q\ & ((!\SPI_PROTOCOL|Equal6~4_combout\) # 
-- (!\SPI_PROTOCOL|cntlength\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.WrData~q\,
	datac => \SPI_PROTOCOL|cntlength\(0),
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|state.DumpRdPad~4_combout\);

-- Location: LCCOMB_X13_Y24_N2
\SPI_PROTOCOL|state.DumpRdPad~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.DumpRdPad~5_combout\ = ((\SPI_PROTOCOL|state.Finished~q\) # ((\SPI_PROTOCOL|state.DumpRdPad~4_combout\) # (!\SPI_PROTOCOL|WideOr18~0_combout\))) # (!\SPI_PROTOCOL|byteStrobe~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|byteStrobe~q\,
	datab => \SPI_PROTOCOL|state.Finished~q\,
	datac => \SPI_PROTOCOL|state.DumpRdPad~4_combout\,
	datad => \SPI_PROTOCOL|WideOr18~0_combout\,
	combout => \SPI_PROTOCOL|state.DumpRdPad~5_combout\);

-- Location: LCCOMB_X13_Y24_N24
\SPI_PROTOCOL|state.DumpRdPad~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.DumpRdPad~6_combout\ = (\SPI_PROTOCOL|state.DumpRdPad~5_combout\ & (((\SPI_PROTOCOL|state.DumpRdPad~q\)))) # (!\SPI_PROTOCOL|state.DumpRdPad~5_combout\ & (\SPI_PROTOCOL|state.DumpRdPad~3_combout\ & (\SPI_PROTOCOL|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.DumpRdPad~3_combout\,
	datab => \SPI_PROTOCOL|Equal5~0_combout\,
	datac => \SPI_PROTOCOL|state.DumpRdPad~q\,
	datad => \SPI_PROTOCOL|state.DumpRdPad~5_combout\,
	combout => \SPI_PROTOCOL|state.DumpRdPad~6_combout\);

-- Location: FF_X13_Y24_N25
\SPI_PROTOCOL|state.DumpRdPad\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|state.DumpRdPad~6_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.DumpRdPad~q\);

-- Location: LCCOMB_X13_Y24_N10
\SPI_PROTOCOL|DumpDoRead\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|DumpDoRead~combout\ = (\SPI_PROTOCOL|state.DumpRdPad~q\) # (\SPI_PROTOCOL|state.DumpRdData~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|state.DumpRdPad~q\,
	datad => \SPI_PROTOCOL|state.DumpRdData~q\,
	combout => \SPI_PROTOCOL|DumpDoRead~combout\);

-- Location: FF_X13_Y24_N13
\SPI_PROTOCOL|state.DumpRdData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	asdata => \SPI_PROTOCOL|DumpDoRead~combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => VCC,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.DumpRdData~q\);

-- Location: LCCOMB_X13_Y24_N22
\SPI_PROTOCOL|WideOr18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|WideOr18~0_combout\ = (!\SPI_PROTOCOL|state.SRAMWrDataRest~q\ & (!\SPI_PROTOCOL|state.SRAMRdDataRest~q\ & !\SPI_PROTOCOL|state.DumpRdData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.SRAMWrDataRest~q\,
	datab => \SPI_PROTOCOL|state.SRAMRdDataRest~q\,
	datad => \SPI_PROTOCOL|state.DumpRdData~q\,
	combout => \SPI_PROTOCOL|WideOr18~0_combout\);

-- Location: LCCOMB_X13_Y24_N16
\SPI_PROTOCOL|state.Finished~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.Finished~1_combout\ = (\SPI_PROTOCOL|state.Command~q\ & ((\SPI_PROTOCOL|state.RdData~q\) # ((\SPI_PROTOCOL|state.WrData~q\) # (!\SPI_PROTOCOL|WideOr18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|WideOr18~0_combout\,
	datac => \SPI_PROTOCOL|state.WrData~q\,
	datad => \SPI_PROTOCOL|state.Command~q\,
	combout => \SPI_PROTOCOL|state.Finished~1_combout\);

-- Location: LCCOMB_X13_Y24_N18
\SPI_PROTOCOL|state.Finished~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|state.Finished~2_combout\ = (\SPI_PROTOCOL|state.Finished~q\) # ((!\SPI_PROTOCOL|state.DumpRdPad~5_combout\ & ((\SPI_PROTOCOL|state.Finished~0_combout\) # (\SPI_PROTOCOL|state.Finished~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.Finished~0_combout\,
	datab => \SPI_PROTOCOL|state.Finished~1_combout\,
	datac => \SPI_PROTOCOL|state.Finished~q\,
	datad => \SPI_PROTOCOL|state.DumpRdPad~5_combout\,
	combout => \SPI_PROTOCOL|state.Finished~2_combout\);

-- Location: FF_X13_Y24_N19
\SPI_PROTOCOL|state.Finished\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|state.Finished~2_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.Finished~q\);

-- Location: LCCOMB_X13_Y24_N12
\SPI_PROTOCOL|WideOr18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|WideOr18~combout\ = (\SPI_PROTOCOL|state.SRAMWrDataRest~q\) # ((\SPI_PROTOCOL|state.Finished~q\) # ((\SPI_PROTOCOL|state.DumpRdData~q\) # (\SPI_PROTOCOL|state.SRAMRdDataRest~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.SRAMWrDataRest~q\,
	datab => \SPI_PROTOCOL|state.Finished~q\,
	datac => \SPI_PROTOCOL|state.DumpRdData~q\,
	datad => \SPI_PROTOCOL|state.SRAMRdDataRest~q\,
	combout => \SPI_PROTOCOL|WideOr18~combout\);

-- Location: LCCOMB_X11_Y24_N28
\SPI_PROTOCOL|outShift~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~2_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (((!\SPI_PROTOCOL|cntlength\(0) & \SPI_PROTOCOL|Equal6~4_combout\)) # (!\SPI_PROTOCOL|state.RdData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|cntlength\(0),
	datac => \SPI_PROTOCOL|state.RdPad~q\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~2_combout\);

-- Location: LCCOMB_X13_Y24_N6
\SPI_PROTOCOL|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Selector10~0_combout\ = ((\SPI_PROTOCOL|WideOr18~combout\ & \SPI_PROTOCOL|state.RdData~q\)) # (!\SPI_PROTOCOL|outShift~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|WideOr18~combout\,
	datac => \SPI_PROTOCOL|state.RdData~q\,
	datad => \SPI_PROTOCOL|outShift~2_combout\,
	combout => \SPI_PROTOCOL|Selector10~0_combout\);

-- Location: FF_X13_Y24_N7
\SPI_PROTOCOL|state.RdData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|Selector10~0_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|state.RdData~q\);

-- Location: LCCOMB_X13_Y24_N28
\SPI_PROTOCOL|outShift~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~0_combout\ = (\SPI_PROTOCOL|state.RdData~q\ & (!\SPI_PROTOCOL|cntlength\(0) & ((\SPI_PROTOCOL|inShift\(7)) # (\SPI_PROTOCOL|DumpDoRead~combout\)))) # (!\SPI_PROTOCOL|state.RdData~q\ & (((\SPI_PROTOCOL|inShift\(7)) # 
-- (\SPI_PROTOCOL|DumpDoRead~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|cntlength\(0),
	datac => \SPI_PROTOCOL|inShift\(7),
	datad => \SPI_PROTOCOL|DumpDoRead~combout\,
	combout => \SPI_PROTOCOL|outShift~0_combout\);

-- Location: LCCOMB_X15_Y24_N6
\SPI_PROTOCOL|outShift~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~1_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (\SPI_PROTOCOL|outShift~0_combout\ & ((\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.RdPad~q\,
	datac => \SPI_PROTOCOL|outShift~0_combout\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~1_combout\);

-- Location: LCCOMB_X15_Y24_N4
\SPI_PROTOCOL|outShift[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift[7]~feeder_combout\ = \SPI_PROTOCOL|outShift~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|outShift~1_combout\,
	combout => \SPI_PROTOCOL|outShift[7]~feeder_combout\);

-- Location: LCCOMB_X13_Y24_N30
\SPI_PROTOCOL|outShift~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~3_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (\SPI_PROTOCOL|inShift\(6) & ((!\SPI_PROTOCOL|cntlength\(0)) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.RdPad~q\,
	datac => \SPI_PROTOCOL|inShift\(6),
	datad => \SPI_PROTOCOL|cntlength\(0),
	combout => \SPI_PROTOCOL|outShift~3_combout\);

-- Location: LCCOMB_X15_Y24_N20
\SPI_PROTOCOL|outShift~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~4_combout\ = (!\SPI_PROTOCOL|DumpDoRead~combout\ & (\SPI_PROTOCOL|outShift~3_combout\ & ((\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|DumpDoRead~combout\,
	datac => \SPI_PROTOCOL|outShift~3_combout\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~4_combout\);

-- Location: LCCOMB_X15_Y24_N12
\SPI_PROTOCOL|outShift[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift[6]~feeder_combout\ = \SPI_PROTOCOL|outShift~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|outShift~4_combout\,
	combout => \SPI_PROTOCOL|outShift[6]~feeder_combout\);

-- Location: LCCOMB_X13_Y24_N14
\SPI_PROTOCOL|outShift~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~5_combout\ = (\SPI_PROTOCOL|state.RdData~q\ & (!\SPI_PROTOCOL|cntlength\(0) & ((\SPI_PROTOCOL|inShift\(5)) # (\SPI_PROTOCOL|DumpDoRead~combout\)))) # (!\SPI_PROTOCOL|state.RdData~q\ & (((\SPI_PROTOCOL|inShift\(5)) # 
-- (\SPI_PROTOCOL|DumpDoRead~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|cntlength\(0),
	datac => \SPI_PROTOCOL|inShift\(5),
	datad => \SPI_PROTOCOL|DumpDoRead~combout\,
	combout => \SPI_PROTOCOL|outShift~5_combout\);

-- Location: LCCOMB_X15_Y24_N10
\SPI_PROTOCOL|outShift~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~6_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (\SPI_PROTOCOL|outShift~5_combout\ & ((\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.RdPad~q\,
	datac => \SPI_PROTOCOL|outShift~5_combout\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~6_combout\);

-- Location: LCCOMB_X15_Y24_N8
\SPI_PROTOCOL|outShift[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift[5]~feeder_combout\ = \SPI_PROTOCOL|outShift~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|outShift~6_combout\,
	combout => \SPI_PROTOCOL|outShift[5]~feeder_combout\);

-- Location: LCCOMB_X13_Y24_N26
\SPI_PROTOCOL|outShift~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~7_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (\SPI_PROTOCOL|inShift\(4) & ((!\SPI_PROTOCOL|cntlength\(0)) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.RdPad~q\,
	datac => \SPI_PROTOCOL|inShift\(4),
	datad => \SPI_PROTOCOL|cntlength\(0),
	combout => \SPI_PROTOCOL|outShift~7_combout\);

-- Location: LCCOMB_X15_Y24_N28
\SPI_PROTOCOL|outShift~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~8_combout\ = (!\SPI_PROTOCOL|DumpDoRead~combout\ & (\SPI_PROTOCOL|outShift~7_combout\ & ((\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|DumpDoRead~combout\,
	datac => \SPI_PROTOCOL|outShift~7_combout\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~8_combout\);

-- Location: LCCOMB_X15_Y24_N30
\SPI_PROTOCOL|outShift[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift[4]~feeder_combout\ = \SPI_PROTOCOL|outShift~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|outShift~8_combout\,
	combout => \SPI_PROTOCOL|outShift[4]~feeder_combout\);

-- Location: LCCOMB_X13_Y24_N8
\SPI_PROTOCOL|outShift~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~9_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (\SPI_PROTOCOL|inShift\(3) & ((!\SPI_PROTOCOL|cntlength\(0)) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.RdPad~q\,
	datac => \SPI_PROTOCOL|inShift\(3),
	datad => \SPI_PROTOCOL|cntlength\(0),
	combout => \SPI_PROTOCOL|outShift~9_combout\);

-- Location: LCCOMB_X15_Y24_N0
\SPI_PROTOCOL|outShift~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~10_combout\ = (!\SPI_PROTOCOL|DumpDoRead~combout\ & (\SPI_PROTOCOL|outShift~9_combout\ & ((\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|DumpDoRead~combout\,
	datac => \SPI_PROTOCOL|outShift~9_combout\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~10_combout\);

-- Location: LCCOMB_X15_Y24_N18
\SPI_PROTOCOL|outShift[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift[3]~feeder_combout\ = \SPI_PROTOCOL|outShift~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|outShift~10_combout\,
	combout => \SPI_PROTOCOL|outShift[3]~feeder_combout\);

-- Location: LCCOMB_X13_Y24_N4
\SPI_PROTOCOL|outShift~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~11_combout\ = (\SPI_PROTOCOL|state.RdData~q\ & (!\SPI_PROTOCOL|cntlength\(0) & ((\SPI_PROTOCOL|inShift\(2)) # (\SPI_PROTOCOL|DumpDoRead~combout\)))) # (!\SPI_PROTOCOL|state.RdData~q\ & (((\SPI_PROTOCOL|inShift\(2)) # 
-- (\SPI_PROTOCOL|DumpDoRead~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|cntlength\(0),
	datac => \SPI_PROTOCOL|inShift\(2),
	datad => \SPI_PROTOCOL|DumpDoRead~combout\,
	combout => \SPI_PROTOCOL|outShift~11_combout\);

-- Location: LCCOMB_X15_Y24_N24
\SPI_PROTOCOL|outShift~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~12_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (\SPI_PROTOCOL|outShift~11_combout\ & ((\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.RdPad~q\,
	datac => \SPI_PROTOCOL|outShift~11_combout\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~12_combout\);

-- Location: LCCOMB_X15_Y24_N2
\SPI_PROTOCOL|outShift[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift[2]~feeder_combout\ = \SPI_PROTOCOL|outShift~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|outShift~12_combout\,
	combout => \SPI_PROTOCOL|outShift[2]~feeder_combout\);

-- Location: LCCOMB_X13_Y24_N0
\SPI_PROTOCOL|outShift~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~13_combout\ = (!\SPI_PROTOCOL|state.RdPad~q\ & (\SPI_PROTOCOL|inShift\(1) & ((!\SPI_PROTOCOL|cntlength\(0)) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.RdData~q\,
	datab => \SPI_PROTOCOL|state.RdPad~q\,
	datac => \SPI_PROTOCOL|inShift\(1),
	datad => \SPI_PROTOCOL|cntlength\(0),
	combout => \SPI_PROTOCOL|outShift~13_combout\);

-- Location: LCCOMB_X15_Y25_N18
\SPI_PROTOCOL|outShift~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift~14_combout\ = (!\SPI_PROTOCOL|DumpDoRead~combout\ & (\SPI_PROTOCOL|outShift~13_combout\ & ((\SPI_PROTOCOL|Equal6~4_combout\) # (!\SPI_PROTOCOL|state.RdData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|DumpDoRead~combout\,
	datab => \SPI_PROTOCOL|outShift~13_combout\,
	datac => \SPI_PROTOCOL|state.RdData~q\,
	datad => \SPI_PROTOCOL|Equal6~4_combout\,
	combout => \SPI_PROTOCOL|outShift~14_combout\);

-- Location: LCCOMB_X15_Y25_N28
\SPI_PROTOCOL|outShift[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outShift[1]~feeder_combout\ = \SPI_PROTOCOL|outShift~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|outShift~14_combout\,
	combout => \SPI_PROTOCOL|outShift[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y26_N16
\SPI_PROTOCOL|address[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|address[0]~5_combout\ = \SPI_PROTOCOL|address\(0) $ (VCC)
-- \SPI_PROTOCOL|address[0]~6\ = CARRY(\SPI_PROTOCOL|address\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|address\(0),
	datad => VCC,
	combout => \SPI_PROTOCOL|address[0]~5_combout\,
	cout => \SPI_PROTOCOL|address[0]~6\);

-- Location: LCCOMB_X13_Y26_N0
\SPI_PROTOCOL|address~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|address~7_combout\ = (\SPI_PROTOCOL|state.WrBase~q\) # (\SPI_PROTOCOL|state.RdBase~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI_PROTOCOL|state.WrBase~q\,
	datad => \SPI_PROTOCOL|state.RdBase~q\,
	combout => \SPI_PROTOCOL|address~7_combout\);

-- Location: LCCOMB_X13_Y26_N6
\SPI_PROTOCOL|address[4]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|address[4]~8_combout\ = (\SPI_PROTOCOL|byteStrobe~q\ & ((\SPI_PROTOCOL|state.WrBase~q\) # ((\SPI_PROTOCOL|state.RdBase~q\) # (!\SPI_PROTOCOL|cntlength[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|state.WrBase~q\,
	datab => \SPI_PROTOCOL|byteStrobe~q\,
	datac => \SPI_PROTOCOL|cntlength[0]~0_combout\,
	datad => \SPI_PROTOCOL|state.RdBase~q\,
	combout => \SPI_PROTOCOL|address[4]~8_combout\);

-- Location: FF_X14_Y26_N17
\SPI_PROTOCOL|address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|address[0]~5_combout\,
	asdata => \SPI_PROTOCOL|inShift\(0),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|address~7_combout\,
	ena => \SPI_PROTOCOL|address[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|address\(0));

-- Location: LCCOMB_X14_Y26_N18
\SPI_PROTOCOL|address[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|address[1]~9_combout\ = (\SPI_PROTOCOL|address\(1) & (!\SPI_PROTOCOL|address[0]~6\)) # (!\SPI_PROTOCOL|address\(1) & ((\SPI_PROTOCOL|address[0]~6\) # (GND)))
-- \SPI_PROTOCOL|address[1]~10\ = CARRY((!\SPI_PROTOCOL|address[0]~6\) # (!\SPI_PROTOCOL|address\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|address\(1),
	datad => VCC,
	cin => \SPI_PROTOCOL|address[0]~6\,
	combout => \SPI_PROTOCOL|address[1]~9_combout\,
	cout => \SPI_PROTOCOL|address[1]~10\);

-- Location: FF_X14_Y26_N19
\SPI_PROTOCOL|address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|address[1]~9_combout\,
	asdata => \SPI_PROTOCOL|inShift\(1),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|address~7_combout\,
	ena => \SPI_PROTOCOL|address[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|address\(1));

-- Location: LCCOMB_X14_Y26_N20
\SPI_PROTOCOL|address[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|address[2]~11_combout\ = (\SPI_PROTOCOL|address\(2) & (\SPI_PROTOCOL|address[1]~10\ $ (GND))) # (!\SPI_PROTOCOL|address\(2) & (!\SPI_PROTOCOL|address[1]~10\ & VCC))
-- \SPI_PROTOCOL|address[2]~12\ = CARRY((\SPI_PROTOCOL|address\(2) & !\SPI_PROTOCOL|address[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|address\(2),
	datad => VCC,
	cin => \SPI_PROTOCOL|address[1]~10\,
	combout => \SPI_PROTOCOL|address[2]~11_combout\,
	cout => \SPI_PROTOCOL|address[2]~12\);

-- Location: FF_X14_Y26_N21
\SPI_PROTOCOL|address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|address[2]~11_combout\,
	asdata => \SPI_PROTOCOL|inShift\(2),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|address~7_combout\,
	ena => \SPI_PROTOCOL|address[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|address\(2));

-- Location: LCCOMB_X14_Y26_N22
\SPI_PROTOCOL|address[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|address[3]~13_combout\ = (\SPI_PROTOCOL|address\(3) & (!\SPI_PROTOCOL|address[2]~12\)) # (!\SPI_PROTOCOL|address\(3) & ((\SPI_PROTOCOL|address[2]~12\) # (GND)))
-- \SPI_PROTOCOL|address[3]~14\ = CARRY((!\SPI_PROTOCOL|address[2]~12\) # (!\SPI_PROTOCOL|address\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|address\(3),
	datad => VCC,
	cin => \SPI_PROTOCOL|address[2]~12\,
	combout => \SPI_PROTOCOL|address[3]~13_combout\,
	cout => \SPI_PROTOCOL|address[3]~14\);

-- Location: FF_X14_Y26_N23
\SPI_PROTOCOL|address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|address[3]~13_combout\,
	asdata => \SPI_PROTOCOL|inShift\(3),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|address~7_combout\,
	ena => \SPI_PROTOCOL|address[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|address\(3));

-- Location: LCCOMB_X14_Y26_N24
\SPI_PROTOCOL|address[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|address[4]~15_combout\ = \SPI_PROTOCOL|address[3]~14\ $ (!\SPI_PROTOCOL|address\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|address\(4),
	cin => \SPI_PROTOCOL|address[3]~14\,
	combout => \SPI_PROTOCOL|address[4]~15_combout\);

-- Location: FF_X14_Y26_N25
\SPI_PROTOCOL|address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|address[4]~15_combout\,
	asdata => \SPI_PROTOCOL|inShift\(4),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|address~7_combout\,
	ena => \SPI_PROTOCOL|address[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|address\(4));

-- Location: LCCOMB_X14_Y24_N6
\SPI_PROTOCOL|LatchReadParams~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|LatchReadParams~feeder_combout\ = \SPI_PROTOCOL|state.RdLengthL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|state.RdLengthL~q\,
	combout => \SPI_PROTOCOL|LatchReadParams~feeder_combout\);

-- Location: FF_X14_Y24_N7
\SPI_PROTOCOL|LatchReadParams\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|LatchReadParams~feeder_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	ena => \SPI_PROTOCOL|byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|LatchReadParams~q\);

-- Location: LCCOMB_X14_Y24_N16
\SPI_PROTOCOL|LatchReadParamsA~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|LatchReadParamsA~feeder_combout\ = \SPI_PROTOCOL|LatchReadParams~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|LatchReadParams~q\,
	combout => \SPI_PROTOCOL|LatchReadParamsA~feeder_combout\);

-- Location: FF_X14_Y24_N17
\SPI_PROTOCOL|LatchReadParamsA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \SPI_PROTOCOL|LatchReadParamsA~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|LatchReadParamsA~q\);

-- Location: LCCOMB_X14_Y24_N10
\SPI_PROTOCOL|LatchReadParamsB~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|LatchReadParamsB~feeder_combout\ = \SPI_PROTOCOL|LatchReadParamsA~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|LatchReadParamsA~q\,
	combout => \SPI_PROTOCOL|LatchReadParamsB~feeder_combout\);

-- Location: FF_X14_Y24_N11
\SPI_PROTOCOL|LatchReadParamsB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \SPI_PROTOCOL|LatchReadParamsB~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|LatchReadParamsB~q\);

-- Location: LCCOMB_X14_Y24_N24
\SPI_PROTOCOL|LatchReadParamsC~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|LatchReadParamsC~feeder_combout\ = \SPI_PROTOCOL|LatchReadParamsB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_PROTOCOL|LatchReadParamsB~q\,
	combout => \SPI_PROTOCOL|LatchReadParamsC~feeder_combout\);

-- Location: FF_X14_Y24_N25
\SPI_PROTOCOL|LatchReadParamsC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \SPI_PROTOCOL|LatchReadParamsC~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|LatchReadParamsC~q\);

-- Location: LCCOMB_X14_Y24_N12
\SPI_PROTOCOL|rd_params[0][0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|rd_params[0][0]~0_combout\ = (\SPI_PROTOCOL|rd_params[0][0]~q\) # ((!\SPI_PROTOCOL|LatchReadParamsC~q\ & \SPI_PROTOCOL|LatchReadParamsB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|LatchReadParamsC~q\,
	datac => \SPI_PROTOCOL|rd_params[0][0]~q\,
	datad => \SPI_PROTOCOL|LatchReadParamsB~q\,
	combout => \SPI_PROTOCOL|rd_params[0][0]~0_combout\);

-- Location: FF_X14_Y24_N13
\SPI_PROTOCOL|rd_params[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \SPI_PROTOCOL|rd_params[0][0]~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|rd_params[0][0]~q\);

-- Location: LCCOMB_X14_Y26_N12
\SPI_PROTOCOL|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|Mux7~0_combout\ = (\SPI_PROTOCOL|address\(3)) # ((\SPI_PROTOCOL|address\(2)) # ((\SPI_PROTOCOL|address\(1) & !\SPI_PROTOCOL|address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|address\(3),
	datab => \SPI_PROTOCOL|address\(1),
	datac => \SPI_PROTOCOL|address\(2),
	datad => \SPI_PROTOCOL|address\(0),
	combout => \SPI_PROTOCOL|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y26_N26
\SPI_PROTOCOL|outByte[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outByte[0]~0_combout\ = (!\SPI_PROTOCOL|address\(4) & (\SPI_PROTOCOL|rd_params[0][0]~q\ & !\SPI_PROTOCOL|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI_PROTOCOL|address\(4),
	datac => \SPI_PROTOCOL|rd_params[0][0]~q\,
	datad => \SPI_PROTOCOL|Mux7~0_combout\,
	combout => \SPI_PROTOCOL|outByte[0]~0_combout\);

-- Location: LCCOMB_X11_Y24_N24
\SPI_PROTOCOL|outByte[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \SPI_PROTOCOL|outByte[0]~1_combout\ = (\SPI_PROTOCOL|outShift~2_combout\ & ((\SPI_PROTOCOL|inShift\(0)) # ((\SPI_PROTOCOL|DumpDoRead~combout\)))) # (!\SPI_PROTOCOL|outShift~2_combout\ & (((\SPI_PROTOCOL|outByte[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI_PROTOCOL|inShift\(0),
	datab => \SPI_PROTOCOL|DumpDoRead~combout\,
	datac => \SPI_PROTOCOL|outByte[0]~0_combout\,
	datad => \SPI_PROTOCOL|outShift~2_combout\,
	combout => \SPI_PROTOCOL|outByte[0]~1_combout\);

-- Location: FF_X11_Y24_N25
\SPI_PROTOCOL|outShift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outByte[0]~1_combout\,
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sclr => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(0));

-- Location: FF_X15_Y25_N29
\SPI_PROTOCOL|outShift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outShift[1]~feeder_combout\,
	asdata => \SPI_PROTOCOL|outShift\(0),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(1));

-- Location: FF_X15_Y24_N3
\SPI_PROTOCOL|outShift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outShift[2]~feeder_combout\,
	asdata => \SPI_PROTOCOL|outShift\(1),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(2));

-- Location: FF_X15_Y24_N19
\SPI_PROTOCOL|outShift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outShift[3]~feeder_combout\,
	asdata => \SPI_PROTOCOL|outShift\(2),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(3));

-- Location: FF_X15_Y24_N31
\SPI_PROTOCOL|outShift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outShift[4]~feeder_combout\,
	asdata => \SPI_PROTOCOL|outShift\(3),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(4));

-- Location: FF_X15_Y24_N9
\SPI_PROTOCOL|outShift[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outShift[5]~feeder_combout\,
	asdata => \SPI_PROTOCOL|outShift\(4),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(5));

-- Location: FF_X15_Y24_N13
\SPI_PROTOCOL|outShift[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outShift[6]~feeder_combout\,
	asdata => \SPI_PROTOCOL|outShift\(5),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(6));

-- Location: FF_X15_Y24_N5
\SPI_PROTOCOL|outShift[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst71|ALT_INV_5~clkctrl_outclk\,
	d => \SPI_PROTOCOL|outShift[7]~feeder_combout\,
	asdata => \SPI_PROTOCOL|outShift\(6),
	clrn => \inst|inst60|ALT_INV_5~0_combout\,
	sload => \SPI_PROTOCOL|ALT_INV_byteStrobe~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI_PROTOCOL|outShift\(7));

-- Location: LCCOMB_X16_Y16_N30
\inst|inst59|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector5~0_combout\ = (!\inst|inst59|outp~q\ & ((\inst|inst59|state.Pre_start~q\) # ((\inst|inst59|state.Pre_start_Ack~q\) # (\inst|inst59|state.Pre_start_Ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|outp~q\,
	datab => \inst|inst59|state.Pre_start~q\,
	datac => \inst|inst59|state.Pre_start_Ack~q\,
	datad => \inst|inst59|state.Pre_start_Ack1~q\,
	combout => \inst|inst59|Selector5~0_combout\);

-- Location: LCCOMB_X15_Y24_N14
\inst|inst70|DataOut[6]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[6]~0_combout\ = (\inst|inst70|state.SPI_D6a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D6a~q\ & (\inst|inst70|DataOut\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D6a~q\,
	datac => \inst|inst70|DataOut\(6),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[6]~0_combout\);

-- Location: FF_X15_Y24_N15
\inst|inst70|DataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[6]~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(6));

-- Location: LCCOMB_X16_Y24_N12
\inst|inst70|DataOut[5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[5]~1_combout\ = (\inst|inst70|state.SPI_D5a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D5a~q\ & (\inst|inst70|DataOut\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SPI_D5a~q\,
	datac => \inst|inst70|DataOut\(5),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[5]~1_combout\);

-- Location: FF_X16_Y24_N13
\inst|inst70|DataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[5]~1_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(5));

-- Location: LCCOMB_X15_Y24_N16
\inst|inst70|DataOut[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[4]~6_combout\ = (\inst|inst70|state.SPI_D4a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D4a~q\ & (\inst|inst70|DataOut\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SPI_D4a~q\,
	datac => \inst|inst70|DataOut\(4),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[4]~6_combout\);

-- Location: FF_X15_Y24_N17
\inst|inst70|DataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[4]~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(4));

-- Location: LCCOMB_X16_Y24_N22
\inst|inst70|DataOut[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[7]~2_combout\ = (\inst|inst70|state.SPI_D7a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D7a~q\ & (\inst|inst70|DataOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SPI_D7a~q\,
	datac => \inst|inst70|DataOut\(7),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[7]~2_combout\);

-- Location: FF_X16_Y24_N23
\inst|inst70|DataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[7]~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(7));

-- Location: LCCOMB_X16_Y24_N4
\inst|inst70|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux14~0_combout\ = (\inst|inst70|DataOut\(6) & ((\inst|inst70|DataOut\(5)) # ((\inst|inst70|DataOut\(4)) # (!\inst|inst70|DataOut\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataOut\(6),
	datab => \inst|inst70|DataOut\(5),
	datac => \inst|inst70|DataOut\(4),
	datad => \inst|inst70|DataOut\(7),
	combout => \inst|inst70|Mux14~0_combout\);

-- Location: LCCOMB_X15_Y23_N2
\inst|inst70|txdata[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|txdata[2]~0_combout\ = (\inst|inst70|state.SendMSB~q\ & ((\inst|inst70|Mux14~0_combout\))) # (!\inst|inst70|state.SendMSB~q\ & (\inst|inst52|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(2),
	datab => \inst|inst70|state.SendMSB~q\,
	datad => \inst|inst70|Mux14~0_combout\,
	combout => \inst|inst70|txdata[2]~0_combout\);

-- Location: LCCOMB_X14_Y24_N22
\inst|inst70|DataOut[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[0]~7_combout\ = (\inst|inst70|state.SPI_D0a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D0a~q\ & (\inst|inst70|DataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SPI_D0a~q\,
	datac => \inst|inst70|DataOut\(0),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[0]~7_combout\);

-- Location: FF_X14_Y24_N23
\inst|inst70|DataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[0]~7_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(0));

-- Location: LCCOMB_X14_Y25_N18
\inst|inst70|DataOut[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[3]~5_combout\ = (\inst|inst70|state.SPI_D3a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D3a~q\ & (\inst|inst70|DataOut\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SPI_D3a~q\,
	datac => \inst|inst70|DataOut\(3),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[3]~5_combout\);

-- Location: FF_X14_Y25_N19
\inst|inst70|DataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[3]~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(3));

-- Location: LCCOMB_X14_Y24_N30
\inst|inst70|DataOut[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[2]~3_combout\ = (\inst|inst70|state.SPI_D2a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D2a~q\ & (\inst|inst70|DataOut\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|state.SPI_D2a~q\,
	datac => \inst|inst70|DataOut\(2),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[2]~3_combout\);

-- Location: FF_X14_Y24_N31
\inst|inst70|DataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[2]~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(2));

-- Location: LCCOMB_X14_Y25_N28
\inst|inst70|DataOut[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|DataOut[1]~4_combout\ = (\inst|inst70|state.SPI_D1a~q\ & ((\SPI_PROTOCOL|outShift\(7)))) # (!\inst|inst70|state.SPI_D1a~q\ & (\inst|inst70|DataOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|state.SPI_D1a~q\,
	datac => \inst|inst70|DataOut\(1),
	datad => \SPI_PROTOCOL|outShift\(7),
	combout => \inst|inst70|DataOut[1]~4_combout\);

-- Location: FF_X14_Y25_N29
\inst|inst70|DataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|DataOut[1]~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|DataOut\(1));

-- Location: LCCOMB_X14_Y25_N14
\inst|inst70|Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux20~0_combout\ = (\inst|inst70|DataOut\(2) & ((\inst|inst70|DataOut\(0)) # ((\inst|inst70|DataOut\(1)) # (!\inst|inst70|DataOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataOut\(0),
	datab => \inst|inst70|DataOut\(3),
	datac => \inst|inst70|DataOut\(2),
	datad => \inst|inst70|DataOut\(1),
	combout => \inst|inst70|Mux20~0_combout\);

-- Location: FF_X15_Y23_N3
\inst|inst70|txdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|txdata[2]~0_combout\,
	asdata => \inst|inst70|Mux20~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst70|state.SendLSB~q\,
	ena => \inst|inst70|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(2));

-- Location: LCCOMB_X17_Y17_N24
\inst|inst59|Data_Buff~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~369_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~369_combout\);

-- Location: LCCOMB_X16_Y19_N30
\inst|inst59|Data_Buff[0][7]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[0][7]~1_combout\ = (!\inst|inst59|DataCounter\(1) & (!\inst|inst59|DataCounter\(2) & \inst|inst70|txreq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|DataCounter\(1),
	datac => \inst|inst59|DataCounter\(2),
	datad => \inst|inst70|txreq~q\,
	combout => \inst|inst59|Data_Buff[0][7]~1_combout\);

-- Location: LCCOMB_X17_Y17_N16
\inst|inst59|Decoder0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~10_combout\ = (\inst|inst59|DataCounter\(3) & (!\inst|inst59|DataCounter\(4) & (!\inst|inst59|DataCounter\(0) & \inst|inst59|DataCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(3),
	datab => \inst|inst59|DataCounter\(4),
	datac => \inst|inst59|DataCounter\(0),
	datad => \inst|inst59|DataCounter\(5),
	combout => \inst|inst59|Decoder0~10_combout\);

-- Location: LCCOMB_X17_Y17_N30
\inst|inst59|Data_Buff[40][7]~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[40][7]~365_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datad => \inst|inst59|Decoder0~10_combout\,
	combout => \inst|inst59|Data_Buff[40][7]~365_combout\);

-- Location: FF_X17_Y17_N25
\inst|inst59|Data_Buff[40][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~369_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][2]~q\);

-- Location: LCCOMB_X17_Y17_N14
\inst|inst59|Data_Buff~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~360_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[40][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[40][2]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~360_combout\);

-- Location: LCCOMB_X17_Y19_N28
\inst|inst59|Data_Buff[6][7]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[6][7]~58_combout\ = (\inst|inst59|DataCounter\(2) & (\inst|inst70|txreq~q\ & \inst|inst59|DataCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|DataCounter\(2),
	datac => \inst|inst70|txreq~q\,
	datad => \inst|inst59|DataCounter\(1),
	combout => \inst|inst59|Data_Buff[6][7]~58_combout\);

-- Location: LCCOMB_X17_Y19_N2
\inst|inst59|Decoder0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~9_combout\ = (\inst|inst59|DataCounter\(0) & (!\inst|inst59|DataCounter\(4) & (\inst|inst59|DataCounter\(5) & !\inst|inst59|DataCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datab => \inst|inst59|DataCounter\(4),
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|DataCounter\(3),
	combout => \inst|inst59|Decoder0~9_combout\);

-- Location: LCCOMB_X18_Y19_N30
\inst|inst59|Data_Buff[39][7]~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[39][7]~356_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[6][7]~58_combout\ & \inst|inst59|Decoder0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|Data_Buff[6][7]~58_combout\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Decoder0~9_combout\,
	combout => \inst|inst59|Data_Buff[39][7]~356_combout\);

-- Location: FF_X17_Y17_N15
\inst|inst59|Data_Buff[39][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~360_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][2]~q\);

-- Location: LCCOMB_X14_Y17_N24
\inst|inst59|Data_Buff~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~351_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[39][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[39][2]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~351_combout\);

-- Location: LCCOMB_X17_Y19_N8
\inst|inst59|Decoder0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~8_combout\ = (!\inst|inst59|DataCounter\(0) & (!\inst|inst59|DataCounter\(3) & (\inst|inst59|DataCounter\(5) & !\inst|inst59|DataCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datab => \inst|inst59|DataCounter\(3),
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|DataCounter\(4),
	combout => \inst|inst59|Decoder0~8_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst|inst59|Data_Buff[38][7]~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[38][7]~347_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~8_combout\ & \inst|inst59|Data_Buff[6][7]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Decoder0~8_combout\,
	datad => \inst|inst59|Data_Buff[6][7]~58_combout\,
	combout => \inst|inst59|Data_Buff[38][7]~347_combout\);

-- Location: FF_X14_Y17_N25
\inst|inst59|Data_Buff[38][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~351_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][2]~q\);

-- Location: LCCOMB_X15_Y17_N26
\inst|inst59|Data_Buff~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~342_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[38][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|Data_Buff[38][2]~q\,
	combout => \inst|inst59|Data_Buff~342_combout\);

-- Location: LCCOMB_X17_Y19_N30
\inst|inst59|Data_Buff[4][7]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[4][7]~39_combout\ = (\inst|inst70|txreq~q\ & (\inst|inst59|DataCounter\(2) & !\inst|inst59|DataCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txreq~q\,
	datab => \inst|inst59|DataCounter\(2),
	datad => \inst|inst59|DataCounter\(1),
	combout => \inst|inst59|Data_Buff[4][7]~39_combout\);

-- Location: LCCOMB_X15_Y17_N2
\inst|inst59|Data_Buff[37][7]~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[37][7]~338_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~9_combout\ & \inst|inst59|Data_Buff[4][7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Decoder0~9_combout\,
	datad => \inst|inst59|Data_Buff[4][7]~39_combout\,
	combout => \inst|inst59|Data_Buff[37][7]~338_combout\);

-- Location: FF_X15_Y17_N27
\inst|inst59|Data_Buff[37][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~342_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][2]~q\);

-- Location: LCCOMB_X16_Y17_N12
\inst|inst59|Data_Buff~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~333_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[37][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[37][2]~q\,
	datab => \inst|inst70|txdata\(2),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~333_combout\);

-- Location: LCCOMB_X16_Y17_N26
\inst|inst59|Data_Buff[36][7]~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[36][7]~329_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[4][7]~39_combout\ & \inst|inst59|Decoder0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[4][7]~39_combout\,
	datad => \inst|inst59|Decoder0~8_combout\,
	combout => \inst|inst59|Data_Buff[36][7]~329_combout\);

-- Location: FF_X16_Y17_N13
\inst|inst59|Data_Buff[36][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~333_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][2]~q\);

-- Location: LCCOMB_X16_Y17_N10
\inst|inst59|Data_Buff~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~324_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[36][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[36][2]~q\,
	datab => \inst|inst70|txdata\(2),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~324_combout\);

-- Location: LCCOMB_X17_Y19_N4
\inst|inst59|Data_Buff[2][7]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[2][7]~20_combout\ = (!\inst|inst59|DataCounter\(2) & (\inst|inst70|txreq~q\ & \inst|inst59|DataCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|DataCounter\(2),
	datac => \inst|inst70|txreq~q\,
	datad => \inst|inst59|DataCounter\(1),
	combout => \inst|inst59|Data_Buff[2][7]~20_combout\);

-- Location: LCCOMB_X16_Y17_N18
\inst|inst59|Data_Buff[35][7]~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[35][7]~320_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~9_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Decoder0~9_combout\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[35][7]~320_combout\);

-- Location: FF_X16_Y17_N11
\inst|inst59|Data_Buff[35][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~324_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][2]~q\);

-- Location: LCCOMB_X19_Y19_N16
\inst|inst59|Data_Buff~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~315_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[35][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(2),
	datac => \inst|inst59|Data_Buff[35][2]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~315_combout\);

-- Location: LCCOMB_X19_Y19_N20
\inst|inst59|Data_Buff[34][7]~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[34][7]~311_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~8_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Decoder0~8_combout\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[34][7]~311_combout\);

-- Location: FF_X19_Y19_N17
\inst|inst59|Data_Buff[34][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~315_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][2]~q\);

-- Location: LCCOMB_X15_Y19_N18
\inst|inst59|Data_Buff~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~306_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[34][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[34][2]~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~306_combout\);

-- Location: LCCOMB_X15_Y19_N22
\inst|inst59|Data_Buff[33][7]~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[33][7]~302_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datad => \inst|inst59|Decoder0~9_combout\,
	combout => \inst|inst59|Data_Buff[33][7]~302_combout\);

-- Location: FF_X15_Y19_N19
\inst|inst59|Data_Buff[33][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~306_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][2]~q\);

-- Location: LCCOMB_X14_Y19_N22
\inst|inst59|Data_Buff~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~297_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[33][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(2),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[33][2]~q\,
	combout => \inst|inst59|Data_Buff~297_combout\);

-- Location: LCCOMB_X14_Y19_N30
\inst|inst59|Data_Buff[32][7]~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[32][7]~293_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~8_combout\ & \inst|inst59|Data_Buff[0][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|Decoder0~8_combout\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[0][7]~1_combout\,
	combout => \inst|inst59|Data_Buff[32][7]~293_combout\);

-- Location: FF_X14_Y19_N23
\inst|inst59|Data_Buff[32][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~297_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][2]~q\);

-- Location: LCCOMB_X14_Y19_N2
\inst|inst59|Data_Buff~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~288_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[32][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[32][2]~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~288_combout\);

-- Location: LCCOMB_X18_Y19_N22
\inst|inst59|Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~7_combout\ = (\inst|inst59|DataCounter\(0) & (\inst|inst59|DataCounter\(4) & (\inst|inst59|DataCounter\(3) & !\inst|inst59|DataCounter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datab => \inst|inst59|DataCounter\(4),
	datac => \inst|inst59|DataCounter\(3),
	datad => \inst|inst59|DataCounter\(5),
	combout => \inst|inst59|Decoder0~7_combout\);

-- Location: LCCOMB_X13_Y19_N18
\inst|inst59|Data_Buff[31][7]~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[31][7]~284_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[6][7]~58_combout\ & \inst|inst59|Decoder0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[6][7]~58_combout\,
	datad => \inst|inst59|Decoder0~7_combout\,
	combout => \inst|inst59|Data_Buff[31][7]~284_combout\);

-- Location: FF_X14_Y19_N3
\inst|inst59|Data_Buff[31][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~288_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][2]~q\);

-- Location: LCCOMB_X13_Y19_N26
\inst|inst59|Data_Buff~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~279_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[31][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(2),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[31][2]~q\,
	combout => \inst|inst59|Data_Buff~279_combout\);

-- Location: LCCOMB_X17_Y19_N22
\inst|inst59|Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~6_combout\ = (!\inst|inst59|DataCounter\(0) & (\inst|inst59|DataCounter\(4) & (!\inst|inst59|DataCounter\(5) & \inst|inst59|DataCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datab => \inst|inst59|DataCounter\(4),
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|DataCounter\(3),
	combout => \inst|inst59|Decoder0~6_combout\);

-- Location: LCCOMB_X13_Y19_N8
\inst|inst59|Data_Buff[30][7]~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[30][7]~275_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[6][7]~58_combout\ & \inst|inst59|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[6][7]~58_combout\,
	datad => \inst|inst59|Decoder0~6_combout\,
	combout => \inst|inst59|Data_Buff[30][7]~275_combout\);

-- Location: FF_X13_Y19_N27
\inst|inst59|Data_Buff[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~279_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][2]~q\);

-- Location: LCCOMB_X14_Y18_N24
\inst|inst59|Data_Buff~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~270_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[30][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[30][2]~q\,
	datac => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~270_combout\);

-- Location: LCCOMB_X14_Y18_N20
\inst|inst59|Data_Buff[29][7]~266\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[29][7]~266_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[4][7]~39_combout\ & \inst|inst59|Decoder0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[4][7]~39_combout\,
	datad => \inst|inst59|Decoder0~7_combout\,
	combout => \inst|inst59|Data_Buff[29][7]~266_combout\);

-- Location: FF_X14_Y18_N25
\inst|inst59|Data_Buff[29][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~270_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][2]~q\);

-- Location: LCCOMB_X16_Y18_N12
\inst|inst59|Data_Buff~261\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~261_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[29][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|Data_Buff[29][2]~q\,
	combout => \inst|inst59|Data_Buff~261_combout\);

-- Location: LCCOMB_X16_Y18_N16
\inst|inst59|Data_Buff[28][7]~257\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[28][7]~257_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[4][7]~39_combout\ & \inst|inst59|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[4][7]~39_combout\,
	datad => \inst|inst59|Decoder0~6_combout\,
	combout => \inst|inst59|Data_Buff[28][7]~257_combout\);

-- Location: FF_X16_Y18_N13
\inst|inst59|Data_Buff[28][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~261_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][2]~q\);

-- Location: LCCOMB_X17_Y18_N28
\inst|inst59|Data_Buff~252\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~252_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[28][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[28][2]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~252_combout\);

-- Location: LCCOMB_X17_Y18_N20
\inst|inst59|Data_Buff[27][7]~248\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[27][7]~248_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[2][7]~20_combout\ & \inst|inst59|Decoder0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[2][7]~20_combout\,
	datad => \inst|inst59|Decoder0~7_combout\,
	combout => \inst|inst59|Data_Buff[27][7]~248_combout\);

-- Location: FF_X17_Y18_N29
\inst|inst59|Data_Buff[27][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~252_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][2]~q\);

-- Location: LCCOMB_X18_Y18_N16
\inst|inst59|Data_Buff~243\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~243_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[27][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|Data_Buff[27][2]~q\,
	combout => \inst|inst59|Data_Buff~243_combout\);

-- Location: LCCOMB_X17_Y18_N8
\inst|inst59|Data_Buff[26][7]~239\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[26][7]~239_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~6_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Decoder0~6_combout\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[26][7]~239_combout\);

-- Location: FF_X18_Y18_N17
\inst|inst59|Data_Buff[26][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~243_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][2]~q\);

-- Location: LCCOMB_X18_Y18_N12
\inst|inst59|Data_Buff~234\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~234_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[26][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|Data_Buff[26][2]~q\,
	combout => \inst|inst59|Data_Buff~234_combout\);

-- Location: LCCOMB_X17_Y18_N4
\inst|inst59|Data_Buff[25][7]~230\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[25][7]~230_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datad => \inst|inst59|Decoder0~7_combout\,
	combout => \inst|inst59|Data_Buff[25][7]~230_combout\);

-- Location: FF_X18_Y18_N13
\inst|inst59|Data_Buff[25][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~234_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][2]~q\);

-- Location: LCCOMB_X19_Y18_N24
\inst|inst59|Data_Buff~225\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~225_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[25][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|Data_Buff[25][2]~q\,
	combout => \inst|inst59|Data_Buff~225_combout\);

-- Location: LCCOMB_X19_Y18_N8
\inst|inst59|Data_Buff[24][7]~221\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[24][7]~221_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~6_combout\ & \inst|inst59|Data_Buff[0][7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Decoder0~6_combout\,
	datad => \inst|inst59|Data_Buff[0][7]~1_combout\,
	combout => \inst|inst59|Data_Buff[24][7]~221_combout\);

-- Location: FF_X19_Y18_N25
\inst|inst59|Data_Buff[24][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~225_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][2]~q\);

-- Location: LCCOMB_X18_Y19_N12
\inst|inst59|Data_Buff~216\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~216_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[24][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[24][2]~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~216_combout\);

-- Location: LCCOMB_X17_Y19_N24
\inst|inst59|Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~5_combout\ = (\inst|inst59|DataCounter\(0) & (\inst|inst59|DataCounter\(4) & (!\inst|inst59|DataCounter\(5) & !\inst|inst59|DataCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datab => \inst|inst59|DataCounter\(4),
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|DataCounter\(3),
	combout => \inst|inst59|Decoder0~5_combout\);

-- Location: LCCOMB_X18_Y19_N4
\inst|inst59|Data_Buff[23][7]~212\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[23][7]~212_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~5_combout\ & \inst|inst59|Data_Buff[6][7]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Decoder0~5_combout\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[6][7]~58_combout\,
	combout => \inst|inst59|Data_Buff[23][7]~212_combout\);

-- Location: FF_X18_Y19_N13
\inst|inst59|Data_Buff[23][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~216_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][2]~q\);

-- Location: LCCOMB_X18_Y21_N14
\inst|inst59|Data_Buff~207\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~207_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[23][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[23][2]~q\,
	datab => \inst|inst70|txdata\(2),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~207_combout\);

-- Location: LCCOMB_X16_Y19_N28
\inst|inst59|Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~4_combout\ = (!\inst|inst59|DataCounter\(5) & (!\inst|inst59|DataCounter\(3) & (!\inst|inst59|DataCounter\(0) & \inst|inst59|DataCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(5),
	datab => \inst|inst59|DataCounter\(3),
	datac => \inst|inst59|DataCounter\(0),
	datad => \inst|inst59|DataCounter\(4),
	combout => \inst|inst59|Decoder0~4_combout\);

-- Location: LCCOMB_X18_Y21_N2
\inst|inst59|Data_Buff[22][7]~203\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[22][7]~203_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[6][7]~58_combout\ & \inst|inst59|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[6][7]~58_combout\,
	datad => \inst|inst59|Decoder0~4_combout\,
	combout => \inst|inst59|Data_Buff[22][7]~203_combout\);

-- Location: FF_X18_Y21_N15
\inst|inst59|Data_Buff[22][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~207_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][2]~q\);

-- Location: LCCOMB_X13_Y21_N8
\inst|inst59|Data_Buff~198\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~198_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[22][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[22][2]~q\,
	datac => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~198_combout\);

-- Location: LCCOMB_X13_Y21_N20
\inst|inst59|Data_Buff[21][7]~194\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[21][7]~194_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~5_combout\ & \inst|inst59|Data_Buff[4][7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|Decoder0~5_combout\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[4][7]~39_combout\,
	combout => \inst|inst59|Data_Buff[21][7]~194_combout\);

-- Location: FF_X13_Y21_N9
\inst|inst59|Data_Buff[21][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~198_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][2]~q\);

-- Location: LCCOMB_X17_Y21_N18
\inst|inst59|Data_Buff~189\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~189_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[21][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[21][2]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~189_combout\);

-- Location: LCCOMB_X17_Y21_N30
\inst|inst59|Data_Buff[20][7]~185\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[20][7]~185_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[4][7]~39_combout\ & \inst|inst59|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[4][7]~39_combout\,
	datad => \inst|inst59|Decoder0~4_combout\,
	combout => \inst|inst59|Data_Buff[20][7]~185_combout\);

-- Location: FF_X17_Y21_N19
\inst|inst59|Data_Buff[20][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~189_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][2]~q\);

-- Location: LCCOMB_X18_Y21_N10
\inst|inst59|Data_Buff~180\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~180_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[20][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[20][2]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~180_combout\);

-- Location: LCCOMB_X18_Y21_N20
\inst|inst59|Data_Buff[19][7]~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[19][7]~176_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~5_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Decoder0~5_combout\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[19][7]~176_combout\);

-- Location: FF_X18_Y21_N11
\inst|inst59|Data_Buff[19][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~180_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][2]~q\);

-- Location: LCCOMB_X16_Y21_N20
\inst|inst59|Data_Buff~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~171_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[19][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[19][2]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~171_combout\);

-- Location: LCCOMB_X16_Y19_N10
\inst|inst59|Data_Buff[18][7]~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[18][7]~167_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~4_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Decoder0~4_combout\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[18][7]~167_combout\);

-- Location: FF_X16_Y21_N21
\inst|inst59|Data_Buff[18][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~171_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][2]~q\);

-- Location: LCCOMB_X16_Y21_N0
\inst|inst59|Data_Buff~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~162_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[18][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[18][2]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~162_combout\);

-- Location: LCCOMB_X16_Y21_N2
\inst|inst59|Data_Buff[17][7]~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[17][7]~158_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datac => \inst|inst59|Decoder0~5_combout\,
	datad => \inst|inst59|DataFetch_state.Idle~q\,
	combout => \inst|inst59|Data_Buff[17][7]~158_combout\);

-- Location: FF_X16_Y21_N1
\inst|inst59|Data_Buff[17][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~162_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][2]~q\);

-- Location: LCCOMB_X15_Y21_N20
\inst|inst59|Data_Buff~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~153_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[17][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[17][2]~q\,
	datac => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~153_combout\);

-- Location: LCCOMB_X15_Y19_N12
\inst|inst59|Data_Buff[16][7]~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[16][7]~149_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datad => \inst|inst59|Decoder0~4_combout\,
	combout => \inst|inst59|Data_Buff[16][7]~149_combout\);

-- Location: FF_X15_Y21_N21
\inst|inst59|Data_Buff[16][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~153_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][2]~q\);

-- Location: LCCOMB_X15_Y21_N28
\inst|inst59|Data_Buff~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~144_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[16][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|Data_Buff[16][2]~q\,
	combout => \inst|inst59|Data_Buff~144_combout\);

-- Location: LCCOMB_X17_Y19_N6
\inst|inst59|Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~3_combout\ = (\inst|inst59|DataCounter\(0) & (!\inst|inst59|DataCounter\(4) & (!\inst|inst59|DataCounter\(5) & \inst|inst59|DataCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(0),
	datab => \inst|inst59|DataCounter\(4),
	datac => \inst|inst59|DataCounter\(5),
	datad => \inst|inst59|DataCounter\(3),
	combout => \inst|inst59|Decoder0~3_combout\);

-- Location: LCCOMB_X15_Y21_N8
\inst|inst59|Data_Buff[15][7]~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[15][7]~140_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~3_combout\ & \inst|inst59|Data_Buff[6][7]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Decoder0~3_combout\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[6][7]~58_combout\,
	combout => \inst|inst59|Data_Buff[15][7]~140_combout\);

-- Location: FF_X15_Y21_N29
\inst|inst59|Data_Buff[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~144_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][2]~q\);

-- Location: LCCOMB_X12_Y19_N30
\inst|inst59|Data_Buff~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~135_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[15][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[15][2]~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~135_combout\);

-- Location: LCCOMB_X16_Y19_N14
\inst|inst59|Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~2_combout\ = (!\inst|inst59|DataCounter\(5) & (\inst|inst59|DataCounter\(3) & (!\inst|inst59|DataCounter\(0) & !\inst|inst59|DataCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(5),
	datab => \inst|inst59|DataCounter\(3),
	datac => \inst|inst59|DataCounter\(0),
	datad => \inst|inst59|DataCounter\(4),
	combout => \inst|inst59|Decoder0~2_combout\);

-- Location: LCCOMB_X12_Y19_N2
\inst|inst59|Data_Buff[14][7]~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[14][7]~131_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~2_combout\ & \inst|inst59|Data_Buff[6][7]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Decoder0~2_combout\,
	datad => \inst|inst59|Data_Buff[6][7]~58_combout\,
	combout => \inst|inst59|Data_Buff[14][7]~131_combout\);

-- Location: FF_X12_Y19_N31
\inst|inst59|Data_Buff[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~135_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][2]~q\);

-- Location: LCCOMB_X12_Y19_N26
\inst|inst59|Data_Buff~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~126_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[14][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[14][2]~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~126_combout\);

-- Location: LCCOMB_X13_Y19_N16
\inst|inst59|Data_Buff[13][7]~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[13][7]~122_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~3_combout\ & \inst|inst59|Data_Buff[4][7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Decoder0~3_combout\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|Data_Buff[4][7]~39_combout\,
	combout => \inst|inst59|Data_Buff[13][7]~122_combout\);

-- Location: FF_X12_Y19_N27
\inst|inst59|Data_Buff[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~126_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][2]~q\);

-- Location: LCCOMB_X11_Y19_N22
\inst|inst59|Data_Buff~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~117_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[13][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[13][2]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~117_combout\);

-- Location: LCCOMB_X11_Y19_N2
\inst|inst59|Data_Buff[12][7]~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[12][7]~113_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~2_combout\ & \inst|inst59|Data_Buff[4][7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Decoder0~2_combout\,
	datad => \inst|inst59|Data_Buff[4][7]~39_combout\,
	combout => \inst|inst59|Data_Buff[12][7]~113_combout\);

-- Location: FF_X11_Y19_N23
\inst|inst59|Data_Buff[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~117_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][2]~q\);

-- Location: LCCOMB_X11_Y19_N0
\inst|inst59|Data_Buff~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~108_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[12][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[12][2]~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~108_combout\);

-- Location: LCCOMB_X12_Y19_N8
\inst|inst59|Data_Buff[11][7]~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[11][7]~104_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~3_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Decoder0~3_combout\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[11][7]~104_combout\);

-- Location: FF_X11_Y19_N1
\inst|inst59|Data_Buff[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~108_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][2]~q\);

-- Location: LCCOMB_X15_Y20_N16
\inst|inst59|Data_Buff~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~99_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[11][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(2),
	datac => \inst|inst59|Data_Buff[11][2]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~99_combout\);

-- Location: LCCOMB_X16_Y20_N22
\inst|inst59|Data_Buff[10][7]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[10][7]~95_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~2_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Decoder0~2_combout\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[10][7]~95_combout\);

-- Location: FF_X15_Y20_N17
\inst|inst59|Data_Buff[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~99_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][2]~q\);

-- Location: LCCOMB_X15_Y20_N4
\inst|inst59|Data_Buff~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~90_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[10][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[10][2]~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~90_combout\);

-- Location: LCCOMB_X16_Y20_N20
\inst|inst59|Data_Buff[9][7]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[9][7]~86_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datad => \inst|inst59|Decoder0~3_combout\,
	combout => \inst|inst59|Data_Buff[9][7]~86_combout\);

-- Location: FF_X15_Y20_N5
\inst|inst59|Data_Buff[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~90_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][2]~q\);

-- Location: LCCOMB_X15_Y18_N8
\inst|inst59|Data_Buff~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~81_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[9][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(2),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[9][2]~q\,
	combout => \inst|inst59|Data_Buff~81_combout\);

-- Location: LCCOMB_X16_Y18_N10
\inst|inst59|Data_Buff[8][7]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[8][7]~77_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datad => \inst|inst59|Decoder0~2_combout\,
	combout => \inst|inst59|Data_Buff[8][7]~77_combout\);

-- Location: FF_X15_Y18_N9
\inst|inst59|Data_Buff[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~81_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][2]~q\);

-- Location: LCCOMB_X15_Y18_N24
\inst|inst59|Data_Buff~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~72_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[8][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(2),
	datac => \inst|inst59|Data_Buff[8][2]~q\,
	combout => \inst|inst59|Data_Buff~72_combout\);

-- Location: LCCOMB_X16_Y19_N2
\inst|inst59|Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~1_combout\ = (!\inst|inst59|DataCounter\(5) & (!\inst|inst59|DataCounter\(4) & (\inst|inst59|DataCounter\(0) & !\inst|inst59|DataCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(5),
	datab => \inst|inst59|DataCounter\(4),
	datac => \inst|inst59|DataCounter\(0),
	datad => \inst|inst59|DataCounter\(3),
	combout => \inst|inst59|Decoder0~1_combout\);

-- Location: LCCOMB_X15_Y18_N10
\inst|inst59|Data_Buff[7][7]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[7][7]~68_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~1_combout\ & \inst|inst59|Data_Buff[6][7]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Decoder0~1_combout\,
	datad => \inst|inst59|Data_Buff[6][7]~58_combout\,
	combout => \inst|inst59|Data_Buff[7][7]~68_combout\);

-- Location: FF_X15_Y18_N25
\inst|inst59|Data_Buff[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~72_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][2]~q\);

-- Location: LCCOMB_X15_Y22_N24
\inst|inst59|Data_Buff~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~63_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[7][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(2),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[7][2]~q\,
	combout => \inst|inst59|Data_Buff~63_combout\);

-- Location: LCCOMB_X16_Y19_N16
\inst|inst59|Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Decoder0~0_combout\ = (!\inst|inst59|DataCounter\(5) & (!\inst|inst59|DataCounter\(3) & (!\inst|inst59|DataCounter\(0) & !\inst|inst59|DataCounter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataCounter\(5),
	datab => \inst|inst59|DataCounter\(3),
	datac => \inst|inst59|DataCounter\(0),
	datad => \inst|inst59|DataCounter\(4),
	combout => \inst|inst59|Decoder0~0_combout\);

-- Location: LCCOMB_X15_Y22_N2
\inst|inst59|Data_Buff[6][7]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[6][7]~59_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[6][7]~58_combout\ & \inst|inst59|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[6][7]~58_combout\,
	datad => \inst|inst59|Decoder0~0_combout\,
	combout => \inst|inst59|Data_Buff[6][7]~59_combout\);

-- Location: FF_X15_Y22_N25
\inst|inst59|Data_Buff[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~63_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][2]~q\);

-- Location: LCCOMB_X16_Y22_N8
\inst|inst59|Data_Buff~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~53_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[6][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[6][2]~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~53_combout\);

-- Location: LCCOMB_X16_Y22_N28
\inst|inst59|Data_Buff[5][7]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[5][7]~49_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~1_combout\ & \inst|inst59|Data_Buff[4][7]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|Decoder0~1_combout\,
	datac => \inst|inst59|Data_Buff[4][7]~39_combout\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff[5][7]~49_combout\);

-- Location: FF_X16_Y22_N9
\inst|inst59|Data_Buff[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~53_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][2]~q\);

-- Location: LCCOMB_X16_Y22_N26
\inst|inst59|Data_Buff~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~44_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[5][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[5][2]~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~44_combout\);

-- Location: LCCOMB_X17_Y22_N30
\inst|inst59|Data_Buff[4][7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[4][7]~40_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[4][7]~39_combout\ & \inst|inst59|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|DataFetch_state.Idle~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[4][7]~39_combout\,
	datad => \inst|inst59|Decoder0~0_combout\,
	combout => \inst|inst59|Data_Buff[4][7]~40_combout\);

-- Location: FF_X17_Y22_N9
\inst|inst59|Data_Buff[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff~44_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][2]~q\);

-- Location: LCCOMB_X16_Y20_N6
\inst|inst59|Data_Buff~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~34_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[4][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[4][2]~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~34_combout\);

-- Location: LCCOMB_X16_Y20_N10
\inst|inst59|Data_Buff[3][7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[3][7]~30_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[2][7]~20_combout\ & \inst|inst59|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[2][7]~20_combout\,
	datad => \inst|inst59|Decoder0~1_combout\,
	combout => \inst|inst59|Data_Buff[3][7]~30_combout\);

-- Location: FF_X16_Y20_N7
\inst|inst59|Data_Buff[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~34_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][2]~q\);

-- Location: LCCOMB_X16_Y19_N18
\inst|inst59|Data_Buff~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~25_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[3][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(2),
	datad => \inst|inst59|Data_Buff[3][2]~q\,
	combout => \inst|inst59|Data_Buff~25_combout\);

-- Location: LCCOMB_X16_Y19_N0
\inst|inst59|Data_Buff[2][7]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[2][7]~21_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Decoder0~0_combout\ & \inst|inst59|Data_Buff[2][7]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Decoder0~0_combout\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|Data_Buff[2][7]~20_combout\,
	combout => \inst|inst59|Data_Buff[2][7]~21_combout\);

-- Location: FF_X16_Y19_N19
\inst|inst59|Data_Buff[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~25_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][2]~q\);

-- Location: LCCOMB_X17_Y20_N12
\inst|inst59|Data_Buff~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~15_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[2][2]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(2),
	datac => \inst|inst59|Data_Buff[2][2]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~15_combout\);

-- Location: LCCOMB_X16_Y19_N24
\inst|inst59|Data_Buff[1][7]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[1][7]~11_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|DataFetch_state.Idle~q\,
	datad => \inst|inst59|Decoder0~1_combout\,
	combout => \inst|inst59|Data_Buff[1][7]~11_combout\);

-- Location: FF_X17_Y20_N13
\inst|inst59|Data_Buff[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~15_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][2]~q\);

-- Location: LCCOMB_X17_Y20_N24
\inst|inst59|Data_Buff~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~6_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[1][2]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[1][2]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(2),
	combout => \inst|inst59|Data_Buff~6_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst|inst59|Data_Buff[0][7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[0][7]~2_combout\ = (!\inst|inst59|DataFetch_state.Idle~q\ & ((\inst|inst59|POP_req~q\) # ((\inst|inst59|Data_Buff[0][7]~1_combout\ & \inst|inst59|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|DataFetch_state.Idle~q\,
	datac => \inst|inst59|Data_Buff[0][7]~1_combout\,
	datad => \inst|inst59|Decoder0~0_combout\,
	combout => \inst|inst59|Data_Buff[0][7]~2_combout\);

-- Location: FF_X17_Y20_N25
\inst|inst59|Data_Buff[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~6_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][2]~q\);

-- Location: LCCOMB_X17_Y16_N12
\inst|inst59|SendData[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|SendData[2]~feeder_combout\ = \inst|inst59|Data_Buff[0][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|Data_Buff[0][2]~q\,
	combout => \inst|inst59|SendData[2]~feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\inst|inst59|SendData[7]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|SendData[7]~0_combout\ = (\nRST~input_o\ & \inst|inst59|state.Pre_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nRST~input_o\,
	datad => \inst|inst59|state.Pre_start~q\,
	combout => \inst|inst59|SendData[7]~0_combout\);

-- Location: FF_X17_Y16_N13
\inst|inst59|SendData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|SendData[2]~feeder_combout\,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(2));

-- Location: LCCOMB_X15_Y24_N22
\inst|inst70|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux13~0_combout\ = (!\inst|inst70|DataOut\(5) & (!\inst|inst70|DataOut\(6) & \inst|inst70|DataOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|DataOut\(5),
	datac => \inst|inst70|DataOut\(6),
	datad => \inst|inst70|DataOut\(7),
	combout => \inst|inst70|Mux13~0_combout\);

-- Location: LCCOMB_X15_Y23_N28
\inst|inst70|txdata[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|txdata[3]~3_combout\ = (\inst|inst70|state.SendMSB~q\ & ((\inst|inst70|Mux13~0_combout\))) # (!\inst|inst70|state.SendMSB~q\ & (\inst|inst52|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(3),
	datab => \inst|inst70|state.SendMSB~q\,
	datad => \inst|inst70|Mux13~0_combout\,
	combout => \inst|inst70|txdata[3]~3_combout\);

-- Location: LCCOMB_X14_Y25_N4
\inst|inst70|Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux19~0_combout\ = (\inst|inst70|DataOut\(3) & (!\inst|inst70|DataOut\(2) & !\inst|inst70|DataOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|DataOut\(3),
	datac => \inst|inst70|DataOut\(2),
	datad => \inst|inst70|DataOut\(1),
	combout => \inst|inst70|Mux19~0_combout\);

-- Location: FF_X15_Y23_N29
\inst|inst70|txdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|txdata[3]~3_combout\,
	asdata => \inst|inst70|Mux19~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst70|state.SendLSB~q\,
	ena => \inst|inst70|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(3));

-- Location: LCCOMB_X17_Y17_N22
\inst|inst59|Data_Buff~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~372_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~372_combout\);

-- Location: FF_X17_Y17_N23
\inst|inst59|Data_Buff[40][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~372_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][3]~q\);

-- Location: LCCOMB_X17_Y17_N18
\inst|inst59|Data_Buff~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~363_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[40][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[40][3]~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~363_combout\);

-- Location: FF_X17_Y17_N19
\inst|inst59|Data_Buff[39][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~363_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][3]~q\);

-- Location: LCCOMB_X14_Y17_N14
\inst|inst59|Data_Buff~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~354_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[39][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[39][3]~q\,
	datab => \inst|inst70|txdata\(3),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~354_combout\);

-- Location: FF_X14_Y17_N15
\inst|inst59|Data_Buff[38][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~354_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][3]~q\);

-- Location: LCCOMB_X15_Y17_N12
\inst|inst59|Data_Buff~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~345_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[38][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|Data_Buff[38][3]~q\,
	combout => \inst|inst59|Data_Buff~345_combout\);

-- Location: FF_X15_Y17_N13
\inst|inst59|Data_Buff[37][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~345_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][3]~q\);

-- Location: LCCOMB_X16_Y17_N0
\inst|inst59|Data_Buff~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~336_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[37][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[37][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~336_combout\);

-- Location: FF_X16_Y17_N1
\inst|inst59|Data_Buff[36][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~336_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][3]~q\);

-- Location: LCCOMB_X16_Y17_N20
\inst|inst59|Data_Buff~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~327_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[36][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[36][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~327_combout\);

-- Location: FF_X16_Y17_N21
\inst|inst59|Data_Buff[35][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~327_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][3]~q\);

-- Location: LCCOMB_X19_Y19_N22
\inst|inst59|Data_Buff~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~318_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[35][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(3),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[35][3]~q\,
	combout => \inst|inst59|Data_Buff~318_combout\);

-- Location: FF_X19_Y19_N23
\inst|inst59|Data_Buff[34][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~318_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][3]~q\);

-- Location: LCCOMB_X15_Y19_N16
\inst|inst59|Data_Buff~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~309_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[34][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[34][3]~q\,
	datab => \inst|inst70|txdata\(3),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~309_combout\);

-- Location: FF_X15_Y19_N17
\inst|inst59|Data_Buff[33][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~309_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][3]~q\);

-- Location: LCCOMB_X14_Y19_N8
\inst|inst59|Data_Buff~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~300_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[33][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(3),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[33][3]~q\,
	combout => \inst|inst59|Data_Buff~300_combout\);

-- Location: FF_X14_Y19_N9
\inst|inst59|Data_Buff[32][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~300_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][3]~q\);

-- Location: LCCOMB_X14_Y19_N28
\inst|inst59|Data_Buff~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~291_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[32][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(3),
	datab => \inst|inst59|Data_Buff[32][3]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~291_combout\);

-- Location: FF_X14_Y19_N29
\inst|inst59|Data_Buff[31][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~291_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][3]~q\);

-- Location: LCCOMB_X13_Y19_N0
\inst|inst59|Data_Buff~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~282_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[31][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[31][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~282_combout\);

-- Location: FF_X13_Y19_N1
\inst|inst59|Data_Buff[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~282_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][3]~q\);

-- Location: LCCOMB_X14_Y18_N10
\inst|inst59|Data_Buff~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~273_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[30][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(3),
	datac => \inst|inst59|Data_Buff[30][3]~q\,
	combout => \inst|inst59|Data_Buff~273_combout\);

-- Location: FF_X14_Y18_N11
\inst|inst59|Data_Buff[29][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~273_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][3]~q\);

-- Location: LCCOMB_X16_Y18_N22
\inst|inst59|Data_Buff~264\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~264_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[29][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[29][3]~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~264_combout\);

-- Location: FF_X16_Y18_N23
\inst|inst59|Data_Buff[28][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~264_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][3]~q\);

-- Location: LCCOMB_X17_Y18_N10
\inst|inst59|Data_Buff~255\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~255_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[28][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(3),
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[28][3]~q\,
	combout => \inst|inst59|Data_Buff~255_combout\);

-- Location: FF_X17_Y18_N11
\inst|inst59|Data_Buff[27][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~255_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][3]~q\);

-- Location: LCCOMB_X18_Y18_N22
\inst|inst59|Data_Buff~246\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~246_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[27][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[27][3]~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~246_combout\);

-- Location: FF_X18_Y18_N23
\inst|inst59|Data_Buff[26][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~246_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][3]~q\);

-- Location: LCCOMB_X18_Y18_N26
\inst|inst59|Data_Buff~237\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~237_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[26][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[26][3]~q\,
	datab => \inst|inst70|txdata\(3),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~237_combout\);

-- Location: FF_X18_Y18_N27
\inst|inst59|Data_Buff[25][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~237_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][3]~q\);

-- Location: LCCOMB_X19_Y18_N18
\inst|inst59|Data_Buff~228\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~228_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[25][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[25][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~228_combout\);

-- Location: FF_X19_Y18_N19
\inst|inst59|Data_Buff[24][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~228_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][3]~q\);

-- Location: LCCOMB_X18_Y19_N6
\inst|inst59|Data_Buff~219\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~219_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[24][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[24][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~219_combout\);

-- Location: FF_X18_Y19_N7
\inst|inst59|Data_Buff[23][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~219_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][3]~q\);

-- Location: LCCOMB_X18_Y21_N16
\inst|inst59|Data_Buff~210\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~210_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[23][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(3),
	datab => \inst|inst59|Data_Buff[23][3]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~210_combout\);

-- Location: FF_X18_Y21_N17
\inst|inst59|Data_Buff[22][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~210_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][3]~q\);

-- Location: LCCOMB_X13_Y21_N26
\inst|inst59|Data_Buff~201\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~201_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[22][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[22][3]~q\,
	datac => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~201_combout\);

-- Location: FF_X13_Y21_N27
\inst|inst59|Data_Buff[21][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~201_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][3]~q\);

-- Location: LCCOMB_X17_Y21_N12
\inst|inst59|Data_Buff~192\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~192_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[21][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[21][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~192_combout\);

-- Location: FF_X17_Y21_N13
\inst|inst59|Data_Buff[20][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~192_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][3]~q\);

-- Location: LCCOMB_X17_Y21_N24
\inst|inst59|Data_Buff~183\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~183_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[20][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[20][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~183_combout\);

-- Location: FF_X17_Y21_N25
\inst|inst59|Data_Buff[19][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~183_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][3]~q\);

-- Location: LCCOMB_X16_Y21_N12
\inst|inst59|Data_Buff~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~174_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[19][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[19][3]~q\,
	datac => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~174_combout\);

-- Location: FF_X16_Y21_N13
\inst|inst59|Data_Buff[18][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~174_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][3]~q\);

-- Location: LCCOMB_X16_Y21_N22
\inst|inst59|Data_Buff~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~165_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[18][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|Data_Buff[18][3]~q\,
	combout => \inst|inst59|Data_Buff~165_combout\);

-- Location: FF_X16_Y21_N23
\inst|inst59|Data_Buff[17][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~165_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][3]~q\);

-- Location: LCCOMB_X15_Y19_N2
\inst|inst59|Data_Buff~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~156_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[17][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[17][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~156_combout\);

-- Location: FF_X15_Y19_N3
\inst|inst59|Data_Buff[16][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~156_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][3]~q\);

-- Location: LCCOMB_X15_Y21_N22
\inst|inst59|Data_Buff~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~147_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[16][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(3),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[16][3]~q\,
	combout => \inst|inst59|Data_Buff~147_combout\);

-- Location: FF_X15_Y21_N23
\inst|inst59|Data_Buff[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~147_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][3]~q\);

-- Location: LCCOMB_X12_Y19_N24
\inst|inst59|Data_Buff~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~138_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[15][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(3),
	datac => \inst|inst59|Data_Buff[15][3]~q\,
	combout => \inst|inst59|Data_Buff~138_combout\);

-- Location: FF_X12_Y19_N25
\inst|inst59|Data_Buff[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~138_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][3]~q\);

-- Location: LCCOMB_X12_Y19_N4
\inst|inst59|Data_Buff~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~129_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[14][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[14][3]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~129_combout\);

-- Location: FF_X12_Y19_N5
\inst|inst59|Data_Buff[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~129_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][3]~q\);

-- Location: LCCOMB_X11_Y19_N4
\inst|inst59|Data_Buff~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~120_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[13][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[13][3]~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~120_combout\);

-- Location: FF_X11_Y19_N5
\inst|inst59|Data_Buff[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~120_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][3]~q\);

-- Location: LCCOMB_X11_Y19_N12
\inst|inst59|Data_Buff~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~111_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[12][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(3),
	datac => \inst|inst59|Data_Buff[12][3]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~111_combout\);

-- Location: FF_X11_Y19_N13
\inst|inst59|Data_Buff[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~111_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][3]~q\);

-- Location: LCCOMB_X15_Y20_N10
\inst|inst59|Data_Buff~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~102_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[11][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|Data_Buff[11][3]~q\,
	combout => \inst|inst59|Data_Buff~102_combout\);

-- Location: FF_X15_Y20_N11
\inst|inst59|Data_Buff[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~102_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][3]~q\);

-- Location: LCCOMB_X15_Y20_N14
\inst|inst59|Data_Buff~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~93_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[10][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|Data_Buff[10][3]~q\,
	combout => \inst|inst59|Data_Buff~93_combout\);

-- Location: FF_X15_Y20_N15
\inst|inst59|Data_Buff[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~93_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][3]~q\);

-- Location: LCCOMB_X15_Y18_N30
\inst|inst59|Data_Buff~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~84_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[9][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|Data_Buff[9][3]~q\,
	combout => \inst|inst59|Data_Buff~84_combout\);

-- Location: FF_X15_Y18_N31
\inst|inst59|Data_Buff[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~84_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][3]~q\);

-- Location: LCCOMB_X15_Y18_N14
\inst|inst59|Data_Buff~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~75_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[8][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(3),
	datac => \inst|inst59|Data_Buff[8][3]~q\,
	combout => \inst|inst59|Data_Buff~75_combout\);

-- Location: FF_X15_Y18_N15
\inst|inst59|Data_Buff[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~75_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][3]~q\);

-- Location: LCCOMB_X15_Y22_N20
\inst|inst59|Data_Buff~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~66_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[7][3]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|Data_Buff[7][3]~q\,
	combout => \inst|inst59|Data_Buff~66_combout\);

-- Location: FF_X15_Y22_N21
\inst|inst59|Data_Buff[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~66_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][3]~q\);

-- Location: LCCOMB_X16_Y22_N14
\inst|inst59|Data_Buff~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~56_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[6][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[6][3]~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~56_combout\);

-- Location: FF_X16_Y22_N15
\inst|inst59|Data_Buff[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~56_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][3]~q\);

-- Location: LCCOMB_X17_Y22_N16
\inst|inst59|Data_Buff~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~47_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[5][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[5][3]~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~47_combout\);

-- Location: FF_X17_Y22_N17
\inst|inst59|Data_Buff[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~47_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][3]~q\);

-- Location: LCCOMB_X16_Y20_N24
\inst|inst59|Data_Buff~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~37_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[4][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[4][3]~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~37_combout\);

-- Location: FF_X16_Y20_N25
\inst|inst59|Data_Buff[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~37_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][3]~q\);

-- Location: LCCOMB_X16_Y19_N6
\inst|inst59|Data_Buff~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~28_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[3][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[3][3]~q\,
	datac => \inst|inst70|txdata\(3),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~28_combout\);

-- Location: FF_X16_Y19_N7
\inst|inst59|Data_Buff[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~28_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][3]~q\);

-- Location: LCCOMB_X17_Y20_N10
\inst|inst59|Data_Buff~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~18_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[2][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[2][3]~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~18_combout\);

-- Location: FF_X17_Y20_N11
\inst|inst59|Data_Buff[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~18_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][3]~q\);

-- Location: LCCOMB_X17_Y20_N14
\inst|inst59|Data_Buff~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~9_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[1][3]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[1][3]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(3),
	combout => \inst|inst59|Data_Buff~9_combout\);

-- Location: FF_X17_Y20_N15
\inst|inst59|Data_Buff[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~9_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][3]~q\);

-- Location: FF_X17_Y16_N23
\inst|inst59|SendData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff[0][3]~q\,
	sload => VCC,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(3));

-- Location: LCCOMB_X15_Y24_N26
\inst|inst70|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux15~0_combout\ = (\inst|inst70|DataOut\(4) & (\inst|inst70|DataOut\(5))) # (!\inst|inst70|DataOut\(4) & ((\inst|inst70|DataOut\(5) & ((!\inst|inst70|DataOut\(7)))) # (!\inst|inst70|DataOut\(5) & (\inst|inst70|DataOut\(6) & 
-- \inst|inst70|DataOut\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataOut\(4),
	datab => \inst|inst70|DataOut\(5),
	datac => \inst|inst70|DataOut\(6),
	datad => \inst|inst70|DataOut\(7),
	combout => \inst|inst70|Mux15~0_combout\);

-- Location: LCCOMB_X15_Y23_N12
\inst|inst70|txdata[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|txdata[1]~1_combout\ = (\inst|inst70|state.SendMSB~q\ & ((\inst|inst70|Mux15~0_combout\))) # (!\inst|inst70|state.SendMSB~q\ & (\inst|inst52|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(1),
	datab => \inst|inst70|state.SendMSB~q\,
	datad => \inst|inst70|Mux15~0_combout\,
	combout => \inst|inst70|txdata[1]~1_combout\);

-- Location: LCCOMB_X14_Y25_N16
\inst|inst70|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux21~0_combout\ = (\inst|inst70|DataOut\(0) & (((\inst|inst70|DataOut\(1))))) # (!\inst|inst70|DataOut\(0) & ((\inst|inst70|DataOut\(3) & (\inst|inst70|DataOut\(2) & !\inst|inst70|DataOut\(1))) # (!\inst|inst70|DataOut\(3) & 
-- ((\inst|inst70|DataOut\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataOut\(0),
	datab => \inst|inst70|DataOut\(3),
	datac => \inst|inst70|DataOut\(2),
	datad => \inst|inst70|DataOut\(1),
	combout => \inst|inst70|Mux21~0_combout\);

-- Location: FF_X15_Y23_N13
\inst|inst70|txdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|txdata[1]~1_combout\,
	asdata => \inst|inst70|Mux21~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst70|state.SendLSB~q\,
	ena => \inst|inst70|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(1));

-- Location: LCCOMB_X17_Y17_N2
\inst|inst59|Data_Buff~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~370_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~370_combout\);

-- Location: FF_X17_Y17_N3
\inst|inst59|Data_Buff[40][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~370_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][1]~q\);

-- Location: LCCOMB_X18_Y19_N8
\inst|inst59|Data_Buff~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~361_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[40][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[40][1]~q\,
	combout => \inst|inst59|Data_Buff~361_combout\);

-- Location: FF_X18_Y19_N9
\inst|inst59|Data_Buff[39][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~361_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][1]~q\);

-- Location: LCCOMB_X14_Y17_N10
\inst|inst59|Data_Buff~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~352_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[39][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[39][1]~q\,
	combout => \inst|inst59|Data_Buff~352_combout\);

-- Location: FF_X14_Y17_N11
\inst|inst59|Data_Buff[38][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~352_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][1]~q\);

-- Location: LCCOMB_X15_Y17_N8
\inst|inst59|Data_Buff~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~343_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[38][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[38][1]~q\,
	datac => \inst|inst70|txdata\(1),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~343_combout\);

-- Location: FF_X15_Y17_N9
\inst|inst59|Data_Buff[37][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~343_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][1]~q\);

-- Location: LCCOMB_X16_Y17_N30
\inst|inst59|Data_Buff~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~334_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[37][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[37][1]~q\,
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~334_combout\);

-- Location: FF_X16_Y17_N31
\inst|inst59|Data_Buff[36][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~334_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][1]~q\);

-- Location: LCCOMB_X16_Y17_N4
\inst|inst59|Data_Buff~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~325_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[36][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[36][1]~q\,
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~325_combout\);

-- Location: FF_X16_Y17_N5
\inst|inst59|Data_Buff[35][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~325_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][1]~q\);

-- Location: LCCOMB_X19_Y19_N10
\inst|inst59|Data_Buff~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~316_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[35][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(1),
	datac => \inst|inst59|Data_Buff[35][1]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~316_combout\);

-- Location: FF_X19_Y19_N11
\inst|inst59|Data_Buff[34][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~316_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][1]~q\);

-- Location: LCCOMB_X15_Y19_N24
\inst|inst59|Data_Buff~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~307_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[34][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|Data_Buff[34][1]~q\,
	combout => \inst|inst59|Data_Buff~307_combout\);

-- Location: FF_X15_Y19_N25
\inst|inst59|Data_Buff[33][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~307_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][1]~q\);

-- Location: LCCOMB_X14_Y19_N20
\inst|inst59|Data_Buff~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~298_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[33][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|Data_Buff[33][1]~q\,
	combout => \inst|inst59|Data_Buff~298_combout\);

-- Location: FF_X14_Y19_N21
\inst|inst59|Data_Buff[32][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~298_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][1]~q\);

-- Location: LCCOMB_X13_Y19_N6
\inst|inst59|Data_Buff~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~289_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[32][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[32][1]~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~289_combout\);

-- Location: FF_X13_Y19_N7
\inst|inst59|Data_Buff[31][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~289_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][1]~q\);

-- Location: LCCOMB_X13_Y19_N24
\inst|inst59|Data_Buff~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~280_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[31][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[31][1]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~280_combout\);

-- Location: FF_X13_Y19_N25
\inst|inst59|Data_Buff[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~280_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][1]~q\);

-- Location: LCCOMB_X14_Y18_N18
\inst|inst59|Data_Buff~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~271_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[30][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[30][1]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~271_combout\);

-- Location: FF_X14_Y18_N19
\inst|inst59|Data_Buff[29][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~271_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][1]~q\);

-- Location: LCCOMB_X16_Y18_N6
\inst|inst59|Data_Buff~262\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~262_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[29][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[29][1]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~262_combout\);

-- Location: FF_X16_Y18_N7
\inst|inst59|Data_Buff[28][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~262_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][1]~q\);

-- Location: LCCOMB_X17_Y18_N18
\inst|inst59|Data_Buff~253\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~253_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[28][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[28][1]~q\,
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~253_combout\);

-- Location: FF_X17_Y18_N19
\inst|inst59|Data_Buff[27][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~253_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][1]~q\);

-- Location: LCCOMB_X18_Y18_N2
\inst|inst59|Data_Buff~244\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~244_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[27][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(1),
	datad => \inst|inst59|Data_Buff[27][1]~q\,
	combout => \inst|inst59|Data_Buff~244_combout\);

-- Location: FF_X18_Y18_N3
\inst|inst59|Data_Buff[26][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~244_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][1]~q\);

-- Location: LCCOMB_X18_Y18_N30
\inst|inst59|Data_Buff~235\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~235_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[26][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(1),
	datad => \inst|inst59|Data_Buff[26][1]~q\,
	combout => \inst|inst59|Data_Buff~235_combout\);

-- Location: FF_X18_Y18_N31
\inst|inst59|Data_Buff[25][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~235_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][1]~q\);

-- Location: LCCOMB_X19_Y18_N22
\inst|inst59|Data_Buff~226\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~226_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[25][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[25][1]~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~226_combout\);

-- Location: FF_X19_Y18_N23
\inst|inst59|Data_Buff[24][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~226_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][1]~q\);

-- Location: LCCOMB_X18_Y19_N18
\inst|inst59|Data_Buff~217\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~217_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[24][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[24][1]~q\,
	datac => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~217_combout\);

-- Location: FF_X18_Y19_N19
\inst|inst59|Data_Buff[23][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~217_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][1]~q\);

-- Location: LCCOMB_X18_Y21_N28
\inst|inst59|Data_Buff~208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~208_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[23][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(1),
	datab => \inst|inst59|Data_Buff[23][1]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~208_combout\);

-- Location: FF_X18_Y21_N29
\inst|inst59|Data_Buff[22][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~208_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][1]~q\);

-- Location: LCCOMB_X13_Y21_N10
\inst|inst59|Data_Buff~199\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~199_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[22][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[22][1]~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~199_combout\);

-- Location: FF_X13_Y21_N11
\inst|inst59|Data_Buff[21][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~199_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][1]~q\);

-- Location: LCCOMB_X17_Y21_N28
\inst|inst59|Data_Buff~190\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~190_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[21][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[21][1]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~190_combout\);

-- Location: FF_X17_Y21_N29
\inst|inst59|Data_Buff[20][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~190_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][1]~q\);

-- Location: LCCOMB_X18_Y21_N0
\inst|inst59|Data_Buff~181\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~181_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[20][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(1),
	datab => \inst|inst59|Data_Buff[20][1]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~181_combout\);

-- Location: FF_X18_Y21_N1
\inst|inst59|Data_Buff[19][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~181_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][1]~q\);

-- Location: LCCOMB_X17_Y21_N22
\inst|inst59|Data_Buff~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~172_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[19][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[19][1]~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~172_combout\);

-- Location: LCCOMB_X16_Y19_N4
\inst|inst59|Data_Buff[18][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[18][1]~feeder_combout\ = \inst|inst59|Data_Buff~172_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst59|Data_Buff~172_combout\,
	combout => \inst|inst59|Data_Buff[18][1]~feeder_combout\);

-- Location: FF_X16_Y19_N5
\inst|inst59|Data_Buff[18][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff[18][1]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][1]~q\);

-- Location: LCCOMB_X16_Y21_N30
\inst|inst59|Data_Buff~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~163_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[18][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[18][1]~q\,
	datac => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~163_combout\);

-- Location: FF_X16_Y21_N31
\inst|inst59|Data_Buff[17][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~163_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][1]~q\);

-- Location: LCCOMB_X15_Y19_N0
\inst|inst59|Data_Buff~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~154_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[17][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|Data_Buff[17][1]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~154_combout\);

-- Location: FF_X15_Y19_N1
\inst|inst59|Data_Buff[16][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~154_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][1]~q\);

-- Location: LCCOMB_X15_Y21_N30
\inst|inst59|Data_Buff~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~145_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[16][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[16][1]~q\,
	combout => \inst|inst59|Data_Buff~145_combout\);

-- Location: FF_X15_Y21_N31
\inst|inst59|Data_Buff[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~145_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][1]~q\);

-- Location: LCCOMB_X12_Y19_N20
\inst|inst59|Data_Buff~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~136_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[15][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(1),
	datab => \inst|inst59|Data_Buff[15][1]~q\,
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~136_combout\);

-- Location: FF_X12_Y19_N21
\inst|inst59|Data_Buff[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~136_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][1]~q\);

-- Location: LCCOMB_X12_Y19_N0
\inst|inst59|Data_Buff~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~127_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[14][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(1),
	datab => \inst|inst59|Data_Buff[14][1]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~127_combout\);

-- Location: FF_X12_Y19_N1
\inst|inst59|Data_Buff[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~127_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][1]~q\);

-- Location: LCCOMB_X11_Y19_N20
\inst|inst59|Data_Buff~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~118_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[13][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[13][1]~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~118_combout\);

-- Location: FF_X11_Y19_N21
\inst|inst59|Data_Buff[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~118_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][1]~q\);

-- Location: LCCOMB_X12_Y18_N24
\inst|inst59|Data_Buff~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~109_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[12][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(1),
	datad => \inst|inst59|Data_Buff[12][1]~q\,
	combout => \inst|inst59|Data_Buff~109_combout\);

-- Location: FF_X12_Y18_N25
\inst|inst59|Data_Buff[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~109_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][1]~q\);

-- Location: LCCOMB_X15_Y20_N2
\inst|inst59|Data_Buff~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~100_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[11][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(1),
	datac => \inst|inst59|Data_Buff[11][1]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~100_combout\);

-- Location: FF_X15_Y20_N3
\inst|inst59|Data_Buff[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~100_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][1]~q\);

-- Location: LCCOMB_X15_Y20_N26
\inst|inst59|Data_Buff~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~91_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[10][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[10][1]~q\,
	datac => \inst|inst70|txdata\(1),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~91_combout\);

-- Location: FF_X15_Y20_N27
\inst|inst59|Data_Buff[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~91_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][1]~q\);

-- Location: LCCOMB_X15_Y18_N18
\inst|inst59|Data_Buff~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~82_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[9][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(1),
	datad => \inst|inst59|Data_Buff[9][1]~q\,
	combout => \inst|inst59|Data_Buff~82_combout\);

-- Location: FF_X15_Y18_N19
\inst|inst59|Data_Buff[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~82_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][1]~q\);

-- Location: LCCOMB_X15_Y18_N6
\inst|inst59|Data_Buff~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~73_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[8][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(1),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[8][1]~q\,
	combout => \inst|inst59|Data_Buff~73_combout\);

-- Location: FF_X15_Y18_N7
\inst|inst59|Data_Buff[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~73_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][1]~q\);

-- Location: LCCOMB_X15_Y22_N30
\inst|inst59|Data_Buff~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~64_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[7][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[7][1]~q\,
	datac => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~64_combout\);

-- Location: FF_X15_Y22_N31
\inst|inst59|Data_Buff[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~64_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][1]~q\);

-- Location: LCCOMB_X16_Y22_N24
\inst|inst59|Data_Buff~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~54_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[6][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[6][1]~q\,
	datac => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~54_combout\);

-- Location: FF_X16_Y22_N25
\inst|inst59|Data_Buff[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~54_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][1]~q\);

-- Location: LCCOMB_X17_Y22_N14
\inst|inst59|Data_Buff~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~45_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[5][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[5][1]~q\,
	datac => \inst|inst70|txdata\(1),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~45_combout\);

-- Location: FF_X17_Y22_N15
\inst|inst59|Data_Buff[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~45_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][1]~q\);

-- Location: LCCOMB_X16_Y20_N28
\inst|inst59|Data_Buff~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~35_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[4][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[4][1]~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~35_combout\);

-- Location: FF_X16_Y20_N29
\inst|inst59|Data_Buff[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~35_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][1]~q\);

-- Location: LCCOMB_X16_Y20_N16
\inst|inst59|Data_Buff~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~26_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[3][1]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(1),
	datab => \inst|inst59|Data_Buff[3][1]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~26_combout\);

-- Location: FF_X16_Y20_N17
\inst|inst59|Data_Buff[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~26_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][1]~q\);

-- Location: LCCOMB_X17_Y20_N6
\inst|inst59|Data_Buff~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~16_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[2][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[2][1]~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~16_combout\);

-- Location: FF_X17_Y20_N7
\inst|inst59|Data_Buff[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~16_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][1]~q\);

-- Location: LCCOMB_X17_Y20_N18
\inst|inst59|Data_Buff~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~7_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[1][1]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[1][1]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(1),
	combout => \inst|inst59|Data_Buff~7_combout\);

-- Location: FF_X17_Y20_N19
\inst|inst59|Data_Buff[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~7_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][1]~q\);

-- Location: LCCOMB_X17_Y16_N30
\inst|inst59|SendData[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|SendData[1]~feeder_combout\ = \inst|inst59|Data_Buff[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst59|Data_Buff[0][1]~q\,
	combout => \inst|inst59|SendData[1]~feeder_combout\);

-- Location: FF_X17_Y16_N31
\inst|inst59|SendData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|SendData[1]~feeder_combout\,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(1));

-- Location: LCCOMB_X16_Y24_N14
\inst|inst70|Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux16~0_combout\ = \inst|inst70|DataOut\(4) $ (((\inst|inst70|DataOut\(7) & ((\inst|inst70|DataOut\(6)) # (\inst|inst70|DataOut\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataOut\(6),
	datab => \inst|inst70|DataOut\(5),
	datac => \inst|inst70|DataOut\(4),
	datad => \inst|inst70|DataOut\(7),
	combout => \inst|inst70|Mux16~0_combout\);

-- Location: LCCOMB_X15_Y23_N10
\inst|inst70|txdata[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|txdata[0]~2_combout\ = (\inst|inst70|state.SendMSB~q\ & ((\inst|inst70|Mux16~0_combout\))) # (!\inst|inst70|state.SendMSB~q\ & (\inst|inst52|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst52|data\(0),
	datab => \inst|inst70|state.SendMSB~q\,
	datad => \inst|inst70|Mux16~0_combout\,
	combout => \inst|inst70|txdata[0]~2_combout\);

-- Location: LCCOMB_X14_Y25_N6
\inst|inst70|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux22~0_combout\ = \inst|inst70|DataOut\(0) $ (((\inst|inst70|DataOut\(3) & ((\inst|inst70|DataOut\(2)) # (\inst|inst70|DataOut\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataOut\(0),
	datab => \inst|inst70|DataOut\(3),
	datac => \inst|inst70|DataOut\(2),
	datad => \inst|inst70|DataOut\(1),
	combout => \inst|inst70|Mux22~0_combout\);

-- Location: FF_X15_Y23_N11
\inst|inst70|txdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|txdata[0]~2_combout\,
	asdata => \inst|inst70|Mux22~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst70|state.SendLSB~q\,
	ena => \inst|inst70|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(0));

-- Location: LCCOMB_X17_Y17_N8
\inst|inst59|Data_Buff~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~371_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~371_combout\);

-- Location: FF_X17_Y17_N9
\inst|inst59|Data_Buff[40][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~371_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][0]~q\);

-- Location: LCCOMB_X17_Y17_N4
\inst|inst59|Data_Buff~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~362_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[40][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[40][0]~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~362_combout\);

-- Location: FF_X17_Y17_N5
\inst|inst59|Data_Buff[39][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~362_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][0]~q\);

-- Location: LCCOMB_X14_Y17_N20
\inst|inst59|Data_Buff~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~353_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[39][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(0),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[39][0]~q\,
	combout => \inst|inst59|Data_Buff~353_combout\);

-- Location: FF_X14_Y17_N21
\inst|inst59|Data_Buff[38][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~353_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][0]~q\);

-- Location: LCCOMB_X15_Y17_N18
\inst|inst59|Data_Buff~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~344_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[38][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[38][0]~q\,
	combout => \inst|inst59|Data_Buff~344_combout\);

-- Location: FF_X15_Y17_N19
\inst|inst59|Data_Buff[37][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~344_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][0]~q\);

-- Location: LCCOMB_X15_Y17_N6
\inst|inst59|Data_Buff~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~335_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[37][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[37][0]~q\,
	combout => \inst|inst59|Data_Buff~335_combout\);

-- Location: FF_X15_Y17_N7
\inst|inst59|Data_Buff[36][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~335_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][0]~q\);

-- Location: LCCOMB_X16_Y17_N22
\inst|inst59|Data_Buff~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~326_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[36][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[36][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~326_combout\);

-- Location: FF_X16_Y17_N23
\inst|inst59|Data_Buff[35][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~326_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][0]~q\);

-- Location: LCCOMB_X19_Y19_N12
\inst|inst59|Data_Buff~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~317_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[35][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(0),
	datac => \inst|inst59|Data_Buff[35][0]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~317_combout\);

-- Location: FF_X19_Y19_N13
\inst|inst59|Data_Buff[34][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~317_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][0]~q\);

-- Location: LCCOMB_X15_Y19_N30
\inst|inst59|Data_Buff~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~308_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[34][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(0),
	datab => \inst|inst59|Data_Buff[34][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~308_combout\);

-- Location: FF_X15_Y19_N31
\inst|inst59|Data_Buff[33][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~308_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][0]~q\);

-- Location: LCCOMB_X14_Y19_N6
\inst|inst59|Data_Buff~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~299_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[33][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(0),
	datac => \inst|inst59|Data_Buff[33][0]~q\,
	combout => \inst|inst59|Data_Buff~299_combout\);

-- Location: FF_X14_Y19_N7
\inst|inst59|Data_Buff[32][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~299_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][0]~q\);

-- Location: LCCOMB_X13_Y19_N12
\inst|inst59|Data_Buff~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~290_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[32][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[32][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~290_combout\);

-- Location: FF_X13_Y19_N13
\inst|inst59|Data_Buff[31][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~290_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][0]~q\);

-- Location: LCCOMB_X13_Y19_N2
\inst|inst59|Data_Buff~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~281_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[31][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[31][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~281_combout\);

-- Location: FF_X13_Y19_N3
\inst|inst59|Data_Buff[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~281_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][0]~q\);

-- Location: LCCOMB_X14_Y18_N12
\inst|inst59|Data_Buff~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~272_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[30][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[30][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~272_combout\);

-- Location: FF_X14_Y18_N13
\inst|inst59|Data_Buff[29][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~272_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][0]~q\);

-- Location: LCCOMB_X16_Y18_N20
\inst|inst59|Data_Buff~263\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~263_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[29][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[29][0]~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~263_combout\);

-- Location: FF_X16_Y18_N21
\inst|inst59|Data_Buff[28][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~263_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][0]~q\);

-- Location: LCCOMB_X17_Y18_N12
\inst|inst59|Data_Buff~254\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~254_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[28][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[28][0]~q\,
	combout => \inst|inst59|Data_Buff~254_combout\);

-- Location: FF_X17_Y18_N13
\inst|inst59|Data_Buff[27][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~254_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][0]~q\);

-- Location: LCCOMB_X18_Y18_N8
\inst|inst59|Data_Buff~245\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~245_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[27][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[27][0]~q\,
	datab => \inst|inst70|txdata\(0),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~245_combout\);

-- Location: FF_X18_Y18_N9
\inst|inst59|Data_Buff[26][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~245_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][0]~q\);

-- Location: LCCOMB_X18_Y18_N4
\inst|inst59|Data_Buff~236\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~236_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[26][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[26][0]~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~236_combout\);

-- Location: FF_X18_Y18_N5
\inst|inst59|Data_Buff[25][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~236_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][0]~q\);

-- Location: LCCOMB_X19_Y18_N4
\inst|inst59|Data_Buff~227\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~227_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[25][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[25][0]~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~227_combout\);

-- Location: FF_X19_Y18_N5
\inst|inst59|Data_Buff[24][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~227_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][0]~q\);

-- Location: LCCOMB_X18_Y19_N20
\inst|inst59|Data_Buff~218\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~218_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[24][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[24][0]~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~218_combout\);

-- Location: FF_X18_Y19_N21
\inst|inst59|Data_Buff[23][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~218_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][0]~q\);

-- Location: LCCOMB_X18_Y21_N18
\inst|inst59|Data_Buff~209\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~209_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[23][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[23][0]~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~209_combout\);

-- Location: FF_X18_Y21_N19
\inst|inst59|Data_Buff[22][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~209_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][0]~q\);

-- Location: LCCOMB_X13_Y21_N16
\inst|inst59|Data_Buff~200\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~200_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[22][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[22][0]~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~200_combout\);

-- Location: FF_X13_Y21_N17
\inst|inst59|Data_Buff[21][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~200_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][0]~q\);

-- Location: LCCOMB_X17_Y21_N10
\inst|inst59|Data_Buff~191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~191_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[21][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[21][0]~q\,
	combout => \inst|inst59|Data_Buff~191_combout\);

-- Location: FF_X17_Y21_N11
\inst|inst59|Data_Buff[20][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~191_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][0]~q\);

-- Location: LCCOMB_X18_Y21_N22
\inst|inst59|Data_Buff~182\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~182_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[20][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(0),
	datac => \inst|inst59|Data_Buff[20][0]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~182_combout\);

-- Location: FF_X18_Y21_N23
\inst|inst59|Data_Buff[19][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~182_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][0]~q\);

-- Location: LCCOMB_X16_Y21_N14
\inst|inst59|Data_Buff~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~173_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[19][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[19][0]~q\,
	combout => \inst|inst59|Data_Buff~173_combout\);

-- Location: FF_X16_Y21_N15
\inst|inst59|Data_Buff[18][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~173_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][0]~q\);

-- Location: LCCOMB_X16_Y21_N16
\inst|inst59|Data_Buff~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~164_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[18][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[18][0]~q\,
	datac => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~164_combout\);

-- Location: FF_X16_Y21_N17
\inst|inst59|Data_Buff[17][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~164_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][0]~q\);

-- Location: LCCOMB_X15_Y21_N26
\inst|inst59|Data_Buff~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~155_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[17][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(0),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[17][0]~q\,
	combout => \inst|inst59|Data_Buff~155_combout\);

-- Location: FF_X15_Y21_N27
\inst|inst59|Data_Buff[16][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~155_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][0]~q\);

-- Location: LCCOMB_X15_Y21_N24
\inst|inst59|Data_Buff~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~146_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[16][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[16][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~146_combout\);

-- Location: FF_X15_Y21_N25
\inst|inst59|Data_Buff[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~146_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][0]~q\);

-- Location: LCCOMB_X12_Y19_N22
\inst|inst59|Data_Buff~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~137_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[15][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[15][0]~q\,
	combout => \inst|inst59|Data_Buff~137_combout\);

-- Location: FF_X12_Y19_N23
\inst|inst59|Data_Buff[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~137_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][0]~q\);

-- Location: LCCOMB_X12_Y19_N6
\inst|inst59|Data_Buff~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~128_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[14][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[14][0]~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~128_combout\);

-- Location: FF_X12_Y19_N7
\inst|inst59|Data_Buff[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~128_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][0]~q\);

-- Location: LCCOMB_X11_Y19_N18
\inst|inst59|Data_Buff~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~119_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[13][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[13][0]~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~119_combout\);

-- Location: FF_X11_Y19_N19
\inst|inst59|Data_Buff[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~119_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][0]~q\);

-- Location: LCCOMB_X11_Y19_N26
\inst|inst59|Data_Buff~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~110_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[12][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[12][0]~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~110_combout\);

-- Location: FF_X11_Y19_N27
\inst|inst59|Data_Buff[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~110_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][0]~q\);

-- Location: LCCOMB_X15_Y20_N12
\inst|inst59|Data_Buff~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~101_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[11][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[11][0]~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~101_combout\);

-- Location: FF_X15_Y20_N13
\inst|inst59|Data_Buff[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~101_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][0]~q\);

-- Location: LCCOMB_X15_Y20_N28
\inst|inst59|Data_Buff~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~92_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[10][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[10][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~92_combout\);

-- Location: FF_X15_Y20_N29
\inst|inst59|Data_Buff[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~92_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][0]~q\);

-- Location: LCCOMB_X15_Y18_N12
\inst|inst59|Data_Buff~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~83_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[9][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[9][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~83_combout\);

-- Location: FF_X15_Y18_N13
\inst|inst59|Data_Buff[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~83_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][0]~q\);

-- Location: LCCOMB_X15_Y18_N0
\inst|inst59|Data_Buff~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~74_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[8][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[8][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~74_combout\);

-- Location: FF_X15_Y18_N1
\inst|inst59|Data_Buff[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~74_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][0]~q\);

-- Location: LCCOMB_X15_Y22_N16
\inst|inst59|Data_Buff~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~65_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[7][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(0),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[7][0]~q\,
	combout => \inst|inst59|Data_Buff~65_combout\);

-- Location: FF_X15_Y22_N17
\inst|inst59|Data_Buff[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~65_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][0]~q\);

-- Location: LCCOMB_X15_Y22_N22
\inst|inst59|Data_Buff~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~55_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[6][0]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[6][0]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(0),
	combout => \inst|inst59|Data_Buff~55_combout\);

-- Location: LCCOMB_X16_Y22_N10
\inst|inst59|Data_Buff[5][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[5][0]~feeder_combout\ = \inst|inst59|Data_Buff~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|Data_Buff~55_combout\,
	combout => \inst|inst59|Data_Buff[5][0]~feeder_combout\);

-- Location: FF_X16_Y22_N11
\inst|inst59|Data_Buff[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff[5][0]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][0]~q\);

-- Location: LCCOMB_X16_Y22_N16
\inst|inst59|Data_Buff~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~46_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[5][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[5][0]~q\,
	combout => \inst|inst59|Data_Buff~46_combout\);

-- Location: FF_X17_Y22_N21
\inst|inst59|Data_Buff[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff~46_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][0]~q\);

-- Location: LCCOMB_X16_Y20_N18
\inst|inst59|Data_Buff~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~36_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[4][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(0),
	datac => \inst|inst59|Data_Buff[4][0]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~36_combout\);

-- Location: FF_X16_Y20_N19
\inst|inst59|Data_Buff[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~36_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][0]~q\);

-- Location: LCCOMB_X16_Y19_N8
\inst|inst59|Data_Buff~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~27_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[3][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(0),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[3][0]~q\,
	combout => \inst|inst59|Data_Buff~27_combout\);

-- Location: FF_X16_Y19_N9
\inst|inst59|Data_Buff[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~27_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][0]~q\);

-- Location: LCCOMB_X17_Y20_N16
\inst|inst59|Data_Buff~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~17_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[2][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[2][0]~q\,
	combout => \inst|inst59|Data_Buff~17_combout\);

-- Location: FF_X17_Y20_N17
\inst|inst59|Data_Buff[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~17_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][0]~q\);

-- Location: LCCOMB_X17_Y20_N4
\inst|inst59|Data_Buff~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~8_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[1][0]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(0),
	datad => \inst|inst59|Data_Buff[1][0]~q\,
	combout => \inst|inst59|Data_Buff~8_combout\);

-- Location: FF_X17_Y20_N5
\inst|inst59|Data_Buff[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~8_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][0]~q\);

-- Location: FF_X17_Y16_N21
\inst|inst59|SendData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff[0][0]~q\,
	sload => VCC,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(0));

-- Location: LCCOMB_X17_Y16_N20
\inst|inst59|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Mux0~2_combout\ = (\inst|inst59|bitCounter\(1) & (((\inst|inst59|bitCounter\(0))))) # (!\inst|inst59|bitCounter\(1) & ((\inst|inst59|bitCounter\(0) & (\inst|inst59|SendData\(1))) # (!\inst|inst59|bitCounter\(0) & 
-- ((\inst|inst59|SendData\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|SendData\(1),
	datab => \inst|inst59|bitCounter\(1),
	datac => \inst|inst59|SendData\(0),
	datad => \inst|inst59|bitCounter\(0),
	combout => \inst|inst59|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y16_N22
\inst|inst59|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Mux0~3_combout\ = (\inst|inst59|bitCounter\(1) & ((\inst|inst59|Mux0~2_combout\ & ((\inst|inst59|SendData\(3)))) # (!\inst|inst59|Mux0~2_combout\ & (\inst|inst59|SendData\(2))))) # (!\inst|inst59|bitCounter\(1) & 
-- (((\inst|inst59|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|SendData\(2),
	datab => \inst|inst59|bitCounter\(1),
	datac => \inst|inst59|SendData\(3),
	datad => \inst|inst59|Mux0~2_combout\,
	combout => \inst|inst59|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y24_N26
\inst|inst70|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux11~0_combout\ = ((!\inst|inst70|DataOut\(6) & !\inst|inst70|DataOut\(5))) # (!\inst|inst70|DataOut\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|DataOut\(6),
	datab => \inst|inst70|DataOut\(5),
	datad => \inst|inst70|DataOut\(7),
	combout => \inst|inst70|Mux11~0_combout\);

-- Location: LCCOMB_X15_Y23_N0
\inst|inst70|txdata[5]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|txdata[5]~4_combout\ = (\inst|inst70|state.SendMSB~q\ & (\inst|inst70|Mux11~0_combout\)) # (!\inst|inst70|state.SendMSB~q\ & ((\inst|inst52|data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Mux11~0_combout\,
	datab => \inst|inst70|state.SendMSB~q\,
	datad => \inst|inst52|data\(5),
	combout => \inst|inst70|txdata[5]~4_combout\);

-- Location: LCCOMB_X14_Y25_N20
\inst|inst70|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux17~0_combout\ = ((!\inst|inst70|DataOut\(2) & !\inst|inst70|DataOut\(1))) # (!\inst|inst70|DataOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|DataOut\(3),
	datac => \inst|inst70|DataOut\(2),
	datad => \inst|inst70|DataOut\(1),
	combout => \inst|inst70|Mux17~0_combout\);

-- Location: FF_X15_Y23_N1
\inst|inst70|txdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|txdata[5]~4_combout\,
	asdata => \inst|inst70|Mux17~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst70|state.SendLSB~q\,
	ena => \inst|inst70|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(5));

-- Location: LCCOMB_X17_Y17_N0
\inst|inst59|Data_Buff~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~364_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~364_combout\);

-- Location: FF_X17_Y17_N1
\inst|inst59|Data_Buff[40][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~364_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][5]~q\);

-- Location: LCCOMB_X17_Y17_N28
\inst|inst59|Data_Buff~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~355_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[40][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[40][5]~q\,
	combout => \inst|inst59|Data_Buff~355_combout\);

-- Location: FF_X17_Y17_N29
\inst|inst59|Data_Buff[39][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~355_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][5]~q\);

-- Location: LCCOMB_X14_Y17_N12
\inst|inst59|Data_Buff~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~346_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[39][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[39][5]~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~346_combout\);

-- Location: FF_X14_Y17_N13
\inst|inst59|Data_Buff[38][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~346_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][5]~q\);

-- Location: LCCOMB_X15_Y17_N28
\inst|inst59|Data_Buff~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~337_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[38][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[38][5]~q\,
	combout => \inst|inst59|Data_Buff~337_combout\);

-- Location: FF_X15_Y17_N29
\inst|inst59|Data_Buff[37][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~337_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][5]~q\);

-- Location: LCCOMB_X15_Y17_N4
\inst|inst59|Data_Buff~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~328_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[37][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[37][5]~q\,
	combout => \inst|inst59|Data_Buff~328_combout\);

-- Location: FF_X15_Y17_N5
\inst|inst59|Data_Buff[36][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~328_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][5]~q\);

-- Location: LCCOMB_X16_Y17_N8
\inst|inst59|Data_Buff~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~319_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[36][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[36][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~319_combout\);

-- Location: FF_X16_Y17_N9
\inst|inst59|Data_Buff[35][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~319_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][5]~q\);

-- Location: LCCOMB_X16_Y17_N14
\inst|inst59|Data_Buff~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~310_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[35][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[35][5]~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~310_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst|inst59|Data_Buff[34][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[34][5]~feeder_combout\ = \inst|inst59|Data_Buff~310_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|Data_Buff~310_combout\,
	combout => \inst|inst59|Data_Buff[34][5]~feeder_combout\);

-- Location: FF_X19_Y19_N1
\inst|inst59|Data_Buff[34][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff[34][5]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][5]~q\);

-- Location: LCCOMB_X15_Y19_N10
\inst|inst59|Data_Buff~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~301_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[34][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[34][5]~q\,
	datac => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~301_combout\);

-- Location: FF_X15_Y19_N11
\inst|inst59|Data_Buff[33][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~301_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][5]~q\);

-- Location: LCCOMB_X14_Y19_N10
\inst|inst59|Data_Buff~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~292_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[33][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[33][5]~q\,
	combout => \inst|inst59|Data_Buff~292_combout\);

-- Location: FF_X14_Y19_N11
\inst|inst59|Data_Buff[32][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~292_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][5]~q\);

-- Location: LCCOMB_X13_Y19_N22
\inst|inst59|Data_Buff~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~283_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[32][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[32][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~283_combout\);

-- Location: FF_X13_Y19_N23
\inst|inst59|Data_Buff[31][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~283_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][5]~q\);

-- Location: LCCOMB_X13_Y19_N30
\inst|inst59|Data_Buff~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~274_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[31][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[31][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~274_combout\);

-- Location: FF_X13_Y19_N31
\inst|inst59|Data_Buff[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~274_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][5]~q\);

-- Location: LCCOMB_X14_Y18_N16
\inst|inst59|Data_Buff~265\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~265_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[30][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[30][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~265_combout\);

-- Location: FF_X14_Y18_N17
\inst|inst59|Data_Buff[29][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~265_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][5]~q\);

-- Location: LCCOMB_X16_Y18_N24
\inst|inst59|Data_Buff~256\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~256_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[29][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[29][5]~q\,
	combout => \inst|inst59|Data_Buff~256_combout\);

-- Location: FF_X16_Y18_N25
\inst|inst59|Data_Buff[28][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~256_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][5]~q\);

-- Location: LCCOMB_X17_Y18_N22
\inst|inst59|Data_Buff~247\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~247_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[28][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[28][5]~q\,
	combout => \inst|inst59|Data_Buff~247_combout\);

-- Location: FF_X17_Y18_N23
\inst|inst59|Data_Buff[27][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~247_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][5]~q\);

-- Location: LCCOMB_X18_Y18_N28
\inst|inst59|Data_Buff~238\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~238_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[27][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[27][5]~q\,
	combout => \inst|inst59|Data_Buff~238_combout\);

-- Location: FF_X18_Y18_N29
\inst|inst59|Data_Buff[26][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~238_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][5]~q\);

-- Location: LCCOMB_X18_Y18_N20
\inst|inst59|Data_Buff~229\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~229_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[26][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[26][5]~q\,
	combout => \inst|inst59|Data_Buff~229_combout\);

-- Location: FF_X18_Y18_N21
\inst|inst59|Data_Buff[25][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~229_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][5]~q\);

-- Location: LCCOMB_X19_Y18_N16
\inst|inst59|Data_Buff~220\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~220_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[25][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[25][5]~q\,
	combout => \inst|inst59|Data_Buff~220_combout\);

-- Location: FF_X19_Y18_N17
\inst|inst59|Data_Buff[24][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~220_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][5]~q\);

-- Location: LCCOMB_X18_Y19_N24
\inst|inst59|Data_Buff~211\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~211_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[24][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(5),
	datac => \inst|inst59|Data_Buff[24][5]~q\,
	combout => \inst|inst59|Data_Buff~211_combout\);

-- Location: FF_X18_Y19_N25
\inst|inst59|Data_Buff[23][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~211_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][5]~q\);

-- Location: LCCOMB_X18_Y21_N26
\inst|inst59|Data_Buff~202\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~202_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[23][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(5),
	datac => \inst|inst59|Data_Buff[23][5]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~202_combout\);

-- Location: FF_X18_Y21_N27
\inst|inst59|Data_Buff[22][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~202_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][5]~q\);

-- Location: LCCOMB_X13_Y21_N12
\inst|inst59|Data_Buff~193\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~193_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[22][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[22][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~193_combout\);

-- Location: FF_X13_Y21_N13
\inst|inst59|Data_Buff[21][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~193_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][5]~q\);

-- Location: LCCOMB_X17_Y21_N6
\inst|inst59|Data_Buff~184\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~184_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[21][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[21][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~184_combout\);

-- Location: FF_X17_Y21_N7
\inst|inst59|Data_Buff[20][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~184_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][5]~q\);

-- Location: LCCOMB_X18_Y21_N12
\inst|inst59|Data_Buff~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~175_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[20][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(5),
	datac => \inst|inst59|Data_Buff[20][5]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~175_combout\);

-- Location: FF_X18_Y21_N13
\inst|inst59|Data_Buff[19][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~175_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][5]~q\);

-- Location: LCCOMB_X16_Y21_N28
\inst|inst59|Data_Buff~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~166_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[19][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(5),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[19][5]~q\,
	combout => \inst|inst59|Data_Buff~166_combout\);

-- Location: FF_X16_Y21_N29
\inst|inst59|Data_Buff[18][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~166_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][5]~q\);

-- Location: LCCOMB_X16_Y21_N4
\inst|inst59|Data_Buff~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~157_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[18][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[18][5]~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~157_combout\);

-- Location: FF_X16_Y21_N5
\inst|inst59|Data_Buff[17][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~157_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][5]~q\);

-- Location: LCCOMB_X15_Y21_N0
\inst|inst59|Data_Buff~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~148_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[17][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(5),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[17][5]~q\,
	combout => \inst|inst59|Data_Buff~148_combout\);

-- Location: LCCOMB_X15_Y19_N26
\inst|inst59|Data_Buff[16][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[16][5]~feeder_combout\ = \inst|inst59|Data_Buff~148_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|Data_Buff~148_combout\,
	combout => \inst|inst59|Data_Buff[16][5]~feeder_combout\);

-- Location: FF_X15_Y19_N27
\inst|inst59|Data_Buff[16][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff[16][5]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][5]~q\);

-- Location: LCCOMB_X15_Y21_N12
\inst|inst59|Data_Buff~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~139_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[16][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(5),
	datad => \inst|inst59|Data_Buff[16][5]~q\,
	combout => \inst|inst59|Data_Buff~139_combout\);

-- Location: FF_X15_Y21_N13
\inst|inst59|Data_Buff[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~139_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][5]~q\);

-- Location: LCCOMB_X13_Y21_N28
\inst|inst59|Data_Buff~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~130_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[15][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[15][5]~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~130_combout\);

-- Location: FF_X13_Y21_N29
\inst|inst59|Data_Buff[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~130_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][5]~q\);

-- Location: LCCOMB_X12_Y19_N14
\inst|inst59|Data_Buff~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~121_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[14][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[14][5]~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~121_combout\);

-- Location: FF_X12_Y19_N15
\inst|inst59|Data_Buff[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~121_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][5]~q\);

-- Location: LCCOMB_X11_Y19_N6
\inst|inst59|Data_Buff~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~112_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[13][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[13][5]~q\,
	datac => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~112_combout\);

-- Location: FF_X11_Y19_N7
\inst|inst59|Data_Buff[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~112_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][5]~q\);

-- Location: LCCOMB_X11_Y19_N28
\inst|inst59|Data_Buff~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~103_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[12][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[12][5]~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~103_combout\);

-- Location: FF_X11_Y19_N29
\inst|inst59|Data_Buff[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~103_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][5]~q\);

-- Location: LCCOMB_X15_Y20_N24
\inst|inst59|Data_Buff~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~94_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[11][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(5),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[11][5]~q\,
	combout => \inst|inst59|Data_Buff~94_combout\);

-- Location: FF_X15_Y20_N25
\inst|inst59|Data_Buff[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~94_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][5]~q\);

-- Location: LCCOMB_X15_Y20_N20
\inst|inst59|Data_Buff~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~85_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[10][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[10][5]~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~85_combout\);

-- Location: FF_X15_Y20_N21
\inst|inst59|Data_Buff[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~85_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][5]~q\);

-- Location: LCCOMB_X15_Y18_N28
\inst|inst59|Data_Buff~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~76_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[9][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(5),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[9][5]~q\,
	combout => \inst|inst59|Data_Buff~76_combout\);

-- Location: FF_X15_Y18_N29
\inst|inst59|Data_Buff[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~76_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][5]~q\);

-- Location: LCCOMB_X15_Y18_N16
\inst|inst59|Data_Buff~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~67_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[8][5]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(5),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[8][5]~q\,
	combout => \inst|inst59|Data_Buff~67_combout\);

-- Location: FF_X15_Y18_N17
\inst|inst59|Data_Buff[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~67_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][5]~q\);

-- Location: LCCOMB_X15_Y22_N0
\inst|inst59|Data_Buff~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~57_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[7][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[7][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~57_combout\);

-- Location: FF_X15_Y22_N1
\inst|inst59|Data_Buff[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~57_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][5]~q\);

-- Location: LCCOMB_X15_Y22_N12
\inst|inst59|Data_Buff~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~48_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[6][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[6][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~48_combout\);

-- Location: FF_X15_Y22_N13
\inst|inst59|Data_Buff[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~48_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][5]~q\);

-- Location: LCCOMB_X17_Y22_N28
\inst|inst59|Data_Buff~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~38_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[5][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[5][5]~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~38_combout\);

-- Location: FF_X17_Y22_N29
\inst|inst59|Data_Buff[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~38_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][5]~q\);

-- Location: LCCOMB_X16_Y20_N30
\inst|inst59|Data_Buff~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~29_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[4][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[4][5]~q\,
	datac => \inst|inst70|txdata\(5),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~29_combout\);

-- Location: FF_X16_Y20_N31
\inst|inst59|Data_Buff[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~29_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][5]~q\);

-- Location: LCCOMB_X16_Y19_N12
\inst|inst59|Data_Buff~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~19_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[3][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[3][5]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~19_combout\);

-- Location: FF_X16_Y19_N13
\inst|inst59|Data_Buff[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~19_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][5]~q\);

-- Location: LCCOMB_X17_Y20_N8
\inst|inst59|Data_Buff~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~10_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[2][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[2][5]~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~10_combout\);

-- Location: FF_X17_Y20_N9
\inst|inst59|Data_Buff[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~10_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][5]~q\);

-- Location: LCCOMB_X17_Y20_N20
\inst|inst59|Data_Buff~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~0_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[1][5]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[1][5]~q\,
	datad => \inst|inst70|txdata\(5),
	combout => \inst|inst59|Data_Buff~0_combout\);

-- Location: FF_X17_Y20_N21
\inst|inst59|Data_Buff[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][5]~q\);

-- Location: LCCOMB_X17_Y16_N28
\inst|inst59|SendData[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|SendData[5]~feeder_combout\ = \inst|inst59|Data_Buff[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|Data_Buff[0][5]~q\,
	combout => \inst|inst59|SendData[5]~feeder_combout\);

-- Location: FF_X17_Y16_N29
\inst|inst59|SendData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|SendData[5]~feeder_combout\,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(5));

-- Location: LCCOMB_X14_Y22_N20
\inst|inst70|Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Selector29~0_combout\ = (\inst|inst70|WideOr6~0_combout\ & (\inst|inst52|data\(7) & ((\inst|inst70|state.DecodeMSB~q\)))) # (!\inst|inst70|WideOr6~0_combout\ & ((\inst|inst70|txdata\(7)) # ((\inst|inst52|data\(7) & 
-- \inst|inst70|state.DecodeMSB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|WideOr6~0_combout\,
	datab => \inst|inst52|data\(7),
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst70|state.DecodeMSB~q\,
	combout => \inst|inst70|Selector29~0_combout\);

-- Location: FF_X14_Y22_N21
\inst|inst70|txdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|Selector29~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(7));

-- Location: LCCOMB_X17_Y17_N10
\inst|inst59|Data_Buff~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~368_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~368_combout\);

-- Location: FF_X17_Y17_N11
\inst|inst59|Data_Buff[40][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~368_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][7]~q\);

-- Location: LCCOMB_X17_Y18_N30
\inst|inst59|Data_Buff~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~359_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[40][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|Data_Buff[40][7]~q\,
	combout => \inst|inst59|Data_Buff~359_combout\);

-- Location: FF_X17_Y18_N31
\inst|inst59|Data_Buff[39][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~359_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][7]~q\);

-- Location: LCCOMB_X14_Y17_N22
\inst|inst59|Data_Buff~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~350_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[39][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[39][7]~q\,
	combout => \inst|inst59|Data_Buff~350_combout\);

-- Location: FF_X14_Y17_N23
\inst|inst59|Data_Buff[38][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~350_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][7]~q\);

-- Location: LCCOMB_X15_Y17_N30
\inst|inst59|Data_Buff~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~341_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[38][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[38][7]~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~341_combout\);

-- Location: FF_X15_Y17_N31
\inst|inst59|Data_Buff[37][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~341_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][7]~q\);

-- Location: LCCOMB_X15_Y17_N16
\inst|inst59|Data_Buff~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~332_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[37][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[37][7]~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~332_combout\);

-- Location: FF_X16_Y17_N15
\inst|inst59|Data_Buff[36][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff~332_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][7]~q\);

-- Location: LCCOMB_X16_Y17_N16
\inst|inst59|Data_Buff~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~323_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[36][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[36][7]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~323_combout\);

-- Location: FF_X16_Y17_N17
\inst|inst59|Data_Buff[35][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~323_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][7]~q\);

-- Location: LCCOMB_X19_Y19_N18
\inst|inst59|Data_Buff~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~314_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[35][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|Data_Buff[35][7]~q\,
	combout => \inst|inst59|Data_Buff~314_combout\);

-- Location: FF_X19_Y19_N19
\inst|inst59|Data_Buff[34][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~314_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][7]~q\);

-- Location: LCCOMB_X15_Y19_N8
\inst|inst59|Data_Buff~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~305_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[34][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[34][7]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~305_combout\);

-- Location: FF_X15_Y19_N9
\inst|inst59|Data_Buff[33][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~305_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][7]~q\);

-- Location: LCCOMB_X14_Y19_N12
\inst|inst59|Data_Buff~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~296_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[33][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(7),
	datac => \inst|inst59|Data_Buff[33][7]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~296_combout\);

-- Location: FF_X14_Y19_N13
\inst|inst59|Data_Buff[32][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~296_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][7]~q\);

-- Location: LCCOMB_X13_Y19_N20
\inst|inst59|Data_Buff~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~287_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[32][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[32][7]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~287_combout\);

-- Location: FF_X13_Y19_N21
\inst|inst59|Data_Buff[31][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~287_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][7]~q\);

-- Location: LCCOMB_X13_Y19_N4
\inst|inst59|Data_Buff~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~278_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[31][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[31][7]~q\,
	combout => \inst|inst59|Data_Buff~278_combout\);

-- Location: FF_X13_Y19_N5
\inst|inst59|Data_Buff[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~278_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][7]~q\);

-- Location: LCCOMB_X14_Y18_N22
\inst|inst59|Data_Buff~269\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~269_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[30][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[30][7]~q\,
	combout => \inst|inst59|Data_Buff~269_combout\);

-- Location: FF_X14_Y18_N23
\inst|inst59|Data_Buff[29][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~269_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][7]~q\);

-- Location: LCCOMB_X16_Y18_N18
\inst|inst59|Data_Buff~260\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~260_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[29][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|Data_Buff[29][7]~q\,
	combout => \inst|inst59|Data_Buff~260_combout\);

-- Location: FF_X16_Y18_N19
\inst|inst59|Data_Buff[28][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~260_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][7]~q\);

-- Location: LCCOMB_X17_Y18_N26
\inst|inst59|Data_Buff~251\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~251_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[28][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|Data_Buff[28][7]~q\,
	combout => \inst|inst59|Data_Buff~251_combout\);

-- Location: FF_X17_Y18_N27
\inst|inst59|Data_Buff[27][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~251_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][7]~q\);

-- Location: LCCOMB_X18_Y18_N6
\inst|inst59|Data_Buff~242\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~242_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[27][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[27][7]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~242_combout\);

-- Location: FF_X18_Y18_N7
\inst|inst59|Data_Buff[26][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~242_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][7]~q\);

-- Location: LCCOMB_X18_Y18_N10
\inst|inst59|Data_Buff~233\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~233_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[26][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[26][7]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~233_combout\);

-- Location: FF_X18_Y18_N11
\inst|inst59|Data_Buff[25][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~233_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][7]~q\);

-- Location: LCCOMB_X19_Y18_N2
\inst|inst59|Data_Buff~224\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~224_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[25][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[25][7]~q\,
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~224_combout\);

-- Location: FF_X19_Y18_N3
\inst|inst59|Data_Buff[24][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~224_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][7]~q\);

-- Location: LCCOMB_X18_Y19_N10
\inst|inst59|Data_Buff~215\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~215_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[24][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[24][7]~q\,
	datac => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~215_combout\);

-- Location: FF_X18_Y19_N11
\inst|inst59|Data_Buff[23][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~215_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][7]~q\);

-- Location: LCCOMB_X18_Y21_N24
\inst|inst59|Data_Buff~206\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~206_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[23][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[23][7]~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~206_combout\);

-- Location: FF_X18_Y21_N25
\inst|inst59|Data_Buff[22][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~206_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][7]~q\);

-- Location: LCCOMB_X13_Y21_N14
\inst|inst59|Data_Buff~197\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~197_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[22][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[22][7]~q\,
	combout => \inst|inst59|Data_Buff~197_combout\);

-- Location: FF_X13_Y21_N15
\inst|inst59|Data_Buff[21][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~197_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][7]~q\);

-- Location: LCCOMB_X17_Y21_N16
\inst|inst59|Data_Buff~188\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~188_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[21][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[21][7]~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~188_combout\);

-- Location: FF_X17_Y21_N17
\inst|inst59|Data_Buff[20][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~188_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][7]~q\);

-- Location: LCCOMB_X17_Y21_N8
\inst|inst59|Data_Buff~179\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~179_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[20][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[20][7]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~179_combout\);

-- Location: FF_X17_Y21_N9
\inst|inst59|Data_Buff[19][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~179_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][7]~q\);

-- Location: LCCOMB_X16_Y19_N26
\inst|inst59|Data_Buff~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~170_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[19][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[19][7]~q\,
	combout => \inst|inst59|Data_Buff~170_combout\);

-- Location: FF_X16_Y19_N27
\inst|inst59|Data_Buff[18][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~170_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][7]~q\);

-- Location: LCCOMB_X16_Y21_N6
\inst|inst59|Data_Buff~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~161_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[18][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[18][7]~q\,
	combout => \inst|inst59|Data_Buff~161_combout\);

-- Location: FF_X16_Y21_N7
\inst|inst59|Data_Buff[17][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~161_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][7]~q\);

-- Location: LCCOMB_X15_Y21_N18
\inst|inst59|Data_Buff~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~152_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[17][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[17][7]~q\,
	combout => \inst|inst59|Data_Buff~152_combout\);

-- Location: LCCOMB_X15_Y19_N14
\inst|inst59|Data_Buff[16][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff[16][7]~feeder_combout\ = \inst|inst59|Data_Buff~152_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|Data_Buff~152_combout\,
	combout => \inst|inst59|Data_Buff[16][7]~feeder_combout\);

-- Location: FF_X15_Y19_N15
\inst|inst59|Data_Buff[16][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff[16][7]~feeder_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][7]~q\);

-- Location: LCCOMB_X15_Y21_N6
\inst|inst59|Data_Buff~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~143_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[16][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[16][7]~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~143_combout\);

-- Location: FF_X15_Y21_N7
\inst|inst59|Data_Buff[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~143_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][7]~q\);

-- Location: LCCOMB_X12_Y19_N12
\inst|inst59|Data_Buff~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~134_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[15][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|Data_Buff[15][7]~q\,
	combout => \inst|inst59|Data_Buff~134_combout\);

-- Location: FF_X12_Y19_N13
\inst|inst59|Data_Buff[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~134_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][7]~q\);

-- Location: LCCOMB_X12_Y19_N28
\inst|inst59|Data_Buff~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~125_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[14][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[14][7]~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~125_combout\);

-- Location: FF_X12_Y19_N29
\inst|inst59|Data_Buff[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~125_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][7]~q\);

-- Location: LCCOMB_X11_Y19_N16
\inst|inst59|Data_Buff~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~116_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[13][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[13][7]~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~116_combout\);

-- Location: FF_X11_Y19_N17
\inst|inst59|Data_Buff[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~116_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][7]~q\);

-- Location: LCCOMB_X11_Y19_N10
\inst|inst59|Data_Buff~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~107_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[12][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[12][7]~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~107_combout\);

-- Location: FF_X11_Y19_N11
\inst|inst59|Data_Buff[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~107_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][7]~q\);

-- Location: LCCOMB_X15_Y20_N6
\inst|inst59|Data_Buff~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~98_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[11][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[11][7]~q\,
	combout => \inst|inst59|Data_Buff~98_combout\);

-- Location: FF_X15_Y20_N7
\inst|inst59|Data_Buff[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~98_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][7]~q\);

-- Location: LCCOMB_X15_Y20_N18
\inst|inst59|Data_Buff~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~89_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[10][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[10][7]~q\,
	combout => \inst|inst59|Data_Buff~89_combout\);

-- Location: FF_X15_Y20_N19
\inst|inst59|Data_Buff[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~89_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][7]~q\);

-- Location: LCCOMB_X15_Y18_N26
\inst|inst59|Data_Buff~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~80_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[9][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|Data_Buff[9][7]~q\,
	combout => \inst|inst59|Data_Buff~80_combout\);

-- Location: FF_X15_Y18_N27
\inst|inst59|Data_Buff[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~80_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][7]~q\);

-- Location: LCCOMB_X15_Y18_N22
\inst|inst59|Data_Buff~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~71_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[8][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[8][7]~q\,
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~71_combout\);

-- Location: FF_X15_Y18_N23
\inst|inst59|Data_Buff[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~71_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][7]~q\);

-- Location: LCCOMB_X15_Y22_N26
\inst|inst59|Data_Buff~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~62_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[7][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(7),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[7][7]~q\,
	combout => \inst|inst59|Data_Buff~62_combout\);

-- Location: FF_X15_Y22_N27
\inst|inst59|Data_Buff[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~62_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][7]~q\);

-- Location: LCCOMB_X15_Y22_N14
\inst|inst59|Data_Buff~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~52_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[6][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[6][7]~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~52_combout\);

-- Location: FF_X15_Y22_N15
\inst|inst59|Data_Buff[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~52_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][7]~q\);

-- Location: LCCOMB_X16_Y22_N6
\inst|inst59|Data_Buff~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~43_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[5][7]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|Data_Buff[5][7]~q\,
	combout => \inst|inst59|Data_Buff~43_combout\);

-- Location: FF_X17_Y22_N27
\inst|inst59|Data_Buff[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff~43_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][7]~q\);

-- Location: LCCOMB_X16_Y20_N8
\inst|inst59|Data_Buff~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~33_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[4][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[4][7]~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~33_combout\);

-- Location: FF_X16_Y20_N9
\inst|inst59|Data_Buff[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~33_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][7]~q\);

-- Location: LCCOMB_X16_Y20_N26
\inst|inst59|Data_Buff~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~24_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[3][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[3][7]~q\,
	datac => \inst|inst70|txdata\(7),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~24_combout\);

-- Location: FF_X16_Y20_N27
\inst|inst59|Data_Buff[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~24_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][7]~q\);

-- Location: LCCOMB_X17_Y20_N22
\inst|inst59|Data_Buff~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~14_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[2][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[2][7]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~14_combout\);

-- Location: FF_X17_Y20_N23
\inst|inst59|Data_Buff[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~14_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][7]~q\);

-- Location: LCCOMB_X17_Y20_N26
\inst|inst59|Data_Buff~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~5_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[1][7]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[1][7]~q\,
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(7),
	combout => \inst|inst59|Data_Buff~5_combout\);

-- Location: FF_X17_Y20_N27
\inst|inst59|Data_Buff[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~5_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][7]~q\);

-- Location: FF_X17_Y16_N3
\inst|inst59|SendData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff[0][7]~q\,
	sload => VCC,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(7));

-- Location: LCCOMB_X15_Y23_N6
\inst|inst70|txdata[6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|txdata[6]~5_combout\ = (\inst|inst70|state.SendMSB~q\ & (!\inst|inst70|Mux11~0_combout\)) # (!\inst|inst70|state.SendMSB~q\ & ((\inst|inst52|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Mux11~0_combout\,
	datab => \inst|inst70|state.SendMSB~q\,
	datad => \inst|inst52|data\(6),
	combout => \inst|inst70|txdata[6]~5_combout\);

-- Location: LCCOMB_X15_Y23_N4
\inst|inst70|Mux17~0_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|Mux17~0_wirecell_combout\ = !\inst|inst70|Mux17~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst70|Mux17~0_combout\,
	combout => \inst|inst70|Mux17~0_wirecell_combout\);

-- Location: FF_X15_Y23_N7
\inst|inst70|txdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|txdata[6]~5_combout\,
	asdata => \inst|inst70|Mux17~0_wirecell_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst70|state.SendLSB~q\,
	ena => \inst|inst70|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(6));

-- Location: LCCOMB_X17_Y17_N26
\inst|inst59|Data_Buff~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~366_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~366_combout\);

-- Location: FF_X17_Y17_N27
\inst|inst59|Data_Buff[40][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~366_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][6]~q\);

-- Location: LCCOMB_X17_Y17_N6
\inst|inst59|Data_Buff~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~357_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[40][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[40][6]~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~357_combout\);

-- Location: FF_X17_Y17_N7
\inst|inst59|Data_Buff[39][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~357_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][6]~q\);

-- Location: LCCOMB_X14_Y17_N18
\inst|inst59|Data_Buff~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~348_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[39][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[39][6]~q\,
	combout => \inst|inst59|Data_Buff~348_combout\);

-- Location: FF_X14_Y17_N19
\inst|inst59|Data_Buff[38][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~348_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][6]~q\);

-- Location: LCCOMB_X15_Y17_N22
\inst|inst59|Data_Buff~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~339_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[38][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|Data_Buff[38][6]~q\,
	combout => \inst|inst59|Data_Buff~339_combout\);

-- Location: FF_X15_Y17_N23
\inst|inst59|Data_Buff[37][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~339_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][6]~q\);

-- Location: LCCOMB_X16_Y17_N28
\inst|inst59|Data_Buff~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~330_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[37][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[37][6]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~330_combout\);

-- Location: FF_X16_Y17_N29
\inst|inst59|Data_Buff[36][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~330_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][6]~q\);

-- Location: LCCOMB_X16_Y17_N24
\inst|inst59|Data_Buff~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~321_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[36][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[36][6]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~321_combout\);

-- Location: FF_X16_Y17_N25
\inst|inst59|Data_Buff[35][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~321_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][6]~q\);

-- Location: LCCOMB_X19_Y19_N26
\inst|inst59|Data_Buff~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~312_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[35][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|Data_Buff[35][6]~q\,
	combout => \inst|inst59|Data_Buff~312_combout\);

-- Location: FF_X19_Y19_N27
\inst|inst59|Data_Buff[34][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~312_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][6]~q\);

-- Location: LCCOMB_X15_Y19_N4
\inst|inst59|Data_Buff~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~303_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[34][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(6),
	datab => \inst|inst59|Data_Buff[34][6]~q\,
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~303_combout\);

-- Location: FF_X15_Y19_N5
\inst|inst59|Data_Buff[33][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~303_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][6]~q\);

-- Location: LCCOMB_X14_Y19_N4
\inst|inst59|Data_Buff~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~294_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[33][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[33][6]~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~294_combout\);

-- Location: FF_X14_Y19_N5
\inst|inst59|Data_Buff[32][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~294_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][6]~q\);

-- Location: LCCOMB_X13_Y19_N10
\inst|inst59|Data_Buff~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~285_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[32][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[32][6]~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~285_combout\);

-- Location: FF_X13_Y19_N11
\inst|inst59|Data_Buff[31][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~285_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][6]~q\);

-- Location: LCCOMB_X13_Y19_N28
\inst|inst59|Data_Buff~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~276_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[31][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|Data_Buff[31][6]~q\,
	combout => \inst|inst59|Data_Buff~276_combout\);

-- Location: FF_X13_Y19_N29
\inst|inst59|Data_Buff[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~276_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][6]~q\);

-- Location: LCCOMB_X14_Y18_N26
\inst|inst59|Data_Buff~267\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~267_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[30][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[30][6]~q\,
	combout => \inst|inst59|Data_Buff~267_combout\);

-- Location: FF_X14_Y18_N27
\inst|inst59|Data_Buff[29][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~267_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][6]~q\);

-- Location: LCCOMB_X16_Y18_N14
\inst|inst59|Data_Buff~258\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~258_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[29][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|Data_Buff[29][6]~q\,
	combout => \inst|inst59|Data_Buff~258_combout\);

-- Location: FF_X16_Y18_N15
\inst|inst59|Data_Buff[28][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~258_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][6]~q\);

-- Location: LCCOMB_X17_Y18_N14
\inst|inst59|Data_Buff~249\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~249_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[28][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|Data_Buff[28][6]~q\,
	combout => \inst|inst59|Data_Buff~249_combout\);

-- Location: FF_X17_Y18_N15
\inst|inst59|Data_Buff[27][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~249_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][6]~q\);

-- Location: LCCOMB_X18_Y18_N18
\inst|inst59|Data_Buff~240\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~240_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[27][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[27][6]~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~240_combout\);

-- Location: FF_X18_Y18_N19
\inst|inst59|Data_Buff[26][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~240_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][6]~q\);

-- Location: LCCOMB_X18_Y18_N14
\inst|inst59|Data_Buff~231\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~231_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[26][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[26][6]~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~231_combout\);

-- Location: FF_X18_Y18_N15
\inst|inst59|Data_Buff[25][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~231_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][6]~q\);

-- Location: LCCOMB_X19_Y18_N10
\inst|inst59|Data_Buff~222\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~222_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[25][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[25][6]~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~222_combout\);

-- Location: FF_X19_Y18_N11
\inst|inst59|Data_Buff[24][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~222_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][6]~q\);

-- Location: LCCOMB_X18_Y19_N14
\inst|inst59|Data_Buff~213\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~213_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[24][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[24][6]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~213_combout\);

-- Location: FF_X18_Y19_N15
\inst|inst59|Data_Buff[23][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~213_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][6]~q\);

-- Location: LCCOMB_X18_Y21_N4
\inst|inst59|Data_Buff~204\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~204_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[23][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[23][6]~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~204_combout\);

-- Location: FF_X18_Y21_N5
\inst|inst59|Data_Buff[22][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~204_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][6]~q\);

-- Location: LCCOMB_X13_Y21_N22
\inst|inst59|Data_Buff~195\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~195_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[22][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[22][6]~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~195_combout\);

-- Location: FF_X13_Y21_N23
\inst|inst59|Data_Buff[21][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~195_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][6]~q\);

-- Location: LCCOMB_X17_Y21_N4
\inst|inst59|Data_Buff~186\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~186_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[21][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[21][6]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~186_combout\);

-- Location: FF_X17_Y21_N5
\inst|inst59|Data_Buff[20][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~186_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][6]~q\);

-- Location: LCCOMB_X18_Y21_N30
\inst|inst59|Data_Buff~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~177_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[20][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[20][6]~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~177_combout\);

-- Location: FF_X18_Y21_N31
\inst|inst59|Data_Buff[19][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~177_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][6]~q\);

-- Location: LCCOMB_X16_Y21_N8
\inst|inst59|Data_Buff~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~168_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[19][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[19][6]~q\,
	combout => \inst|inst59|Data_Buff~168_combout\);

-- Location: FF_X16_Y21_N9
\inst|inst59|Data_Buff[18][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~168_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][6]~q\);

-- Location: LCCOMB_X16_Y21_N26
\inst|inst59|Data_Buff~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~159_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[18][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|Data_Buff[18][6]~q\,
	combout => \inst|inst59|Data_Buff~159_combout\);

-- Location: FF_X16_Y21_N27
\inst|inst59|Data_Buff[17][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~159_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][6]~q\);

-- Location: LCCOMB_X15_Y19_N28
\inst|inst59|Data_Buff~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~150_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[17][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(6),
	datab => \inst|inst59|Data_Buff[17][6]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~150_combout\);

-- Location: FF_X15_Y19_N29
\inst|inst59|Data_Buff[16][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~150_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][6]~q\);

-- Location: LCCOMB_X15_Y21_N10
\inst|inst59|Data_Buff~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~141_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[16][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[16][6]~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~141_combout\);

-- Location: FF_X15_Y21_N11
\inst|inst59|Data_Buff[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~141_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][6]~q\);

-- Location: LCCOMB_X13_Y21_N18
\inst|inst59|Data_Buff~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~132_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[15][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|Data_Buff[15][6]~q\,
	combout => \inst|inst59|Data_Buff~132_combout\);

-- Location: FF_X13_Y21_N19
\inst|inst59|Data_Buff[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~132_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][6]~q\);

-- Location: LCCOMB_X12_Y19_N16
\inst|inst59|Data_Buff~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~123_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[14][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[14][6]~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~123_combout\);

-- Location: FF_X12_Y19_N17
\inst|inst59|Data_Buff[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~123_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][6]~q\);

-- Location: LCCOMB_X11_Y19_N8
\inst|inst59|Data_Buff~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~114_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[13][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(6),
	datab => \inst|inst59|Data_Buff[13][6]~q\,
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~114_combout\);

-- Location: FF_X11_Y19_N9
\inst|inst59|Data_Buff[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~114_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][6]~q\);

-- Location: LCCOMB_X11_Y19_N30
\inst|inst59|Data_Buff~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~105_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[12][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(6),
	datac => \inst|inst59|Data_Buff[12][6]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~105_combout\);

-- Location: FF_X11_Y19_N31
\inst|inst59|Data_Buff[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~105_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][6]~q\);

-- Location: LCCOMB_X15_Y20_N22
\inst|inst59|Data_Buff~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~96_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[11][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[11][6]~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~96_combout\);

-- Location: FF_X15_Y20_N23
\inst|inst59|Data_Buff[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~96_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][6]~q\);

-- Location: LCCOMB_X15_Y20_N30
\inst|inst59|Data_Buff~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~87_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[10][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[10][6]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~87_combout\);

-- Location: FF_X15_Y20_N31
\inst|inst59|Data_Buff[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~87_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][6]~q\);

-- Location: LCCOMB_X15_Y19_N20
\inst|inst59|Data_Buff~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~78_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[9][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[9][6]~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~78_combout\);

-- Location: FF_X17_Y19_N31
\inst|inst59|Data_Buff[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff~78_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][6]~q\);

-- Location: LCCOMB_X15_Y18_N2
\inst|inst59|Data_Buff~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~69_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[8][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[8][6]~q\,
	datad => \inst|inst70|txdata\(6),
	combout => \inst|inst59|Data_Buff~69_combout\);

-- Location: FF_X15_Y18_N3
\inst|inst59|Data_Buff[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~69_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][6]~q\);

-- Location: LCCOMB_X15_Y22_N18
\inst|inst59|Data_Buff~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~60_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[7][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|Data_Buff[7][6]~q\,
	combout => \inst|inst59|Data_Buff~60_combout\);

-- Location: FF_X15_Y22_N19
\inst|inst59|Data_Buff[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~60_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][6]~q\);

-- Location: LCCOMB_X15_Y22_N10
\inst|inst59|Data_Buff~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~50_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[6][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|Data_Buff[6][6]~q\,
	combout => \inst|inst59|Data_Buff~50_combout\);

-- Location: FF_X15_Y22_N11
\inst|inst59|Data_Buff[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~50_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][6]~q\);

-- Location: LCCOMB_X17_Y22_N22
\inst|inst59|Data_Buff~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~41_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[5][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[5][6]~q\,
	datac => \inst|inst70|txdata\(6),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~41_combout\);

-- Location: FF_X17_Y22_N23
\inst|inst59|Data_Buff[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~41_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][6]~q\);

-- Location: LCCOMB_X16_Y20_N4
\inst|inst59|Data_Buff~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~31_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[4][6]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[4][6]~q\,
	datab => \inst|inst70|txdata\(6),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~31_combout\);

-- Location: FF_X16_Y20_N5
\inst|inst59|Data_Buff[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~31_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][6]~q\);

-- Location: LCCOMB_X16_Y20_N14
\inst|inst59|Data_Buff~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~22_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[3][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(6),
	datac => \inst|inst59|Data_Buff[3][6]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~22_combout\);

-- Location: FF_X16_Y20_N15
\inst|inst59|Data_Buff[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~22_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][6]~q\);

-- Location: LCCOMB_X17_Y20_N2
\inst|inst59|Data_Buff~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~12_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[2][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(6),
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[2][6]~q\,
	combout => \inst|inst59|Data_Buff~12_combout\);

-- Location: FF_X17_Y20_N3
\inst|inst59|Data_Buff[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~12_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][6]~q\);

-- Location: LCCOMB_X17_Y20_N30
\inst|inst59|Data_Buff~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~3_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[1][6]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(6),
	datab => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[1][6]~q\,
	combout => \inst|inst59|Data_Buff~3_combout\);

-- Location: FF_X17_Y20_N31
\inst|inst59|Data_Buff[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~3_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][6]~q\);

-- Location: LCCOMB_X17_Y16_N24
\inst|inst59|SendData[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|SendData[6]~feeder_combout\ = \inst|inst59|Data_Buff[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|inst59|Data_Buff[0][6]~q\,
	combout => \inst|inst59|SendData[6]~feeder_combout\);

-- Location: FF_X17_Y16_N25
\inst|inst59|SendData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|SendData[6]~feeder_combout\,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(6));

-- Location: LCCOMB_X15_Y23_N16
\inst|inst70|txdata[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst70|txdata[4]~6_combout\ = (\inst|inst70|state.SendMSB~q\ & (\inst|inst70|Mux11~0_combout\)) # (!\inst|inst70|state.SendMSB~q\ & ((\inst|inst52|data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|Mux11~0_combout\,
	datab => \inst|inst70|state.SendMSB~q\,
	datad => \inst|inst52|data\(4),
	combout => \inst|inst70|txdata[4]~6_combout\);

-- Location: FF_X15_Y23_N17
\inst|inst70|txdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst70|txdata[4]~6_combout\,
	asdata => \inst|inst70|Mux17~0_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	sload => \inst|inst70|state.SendLSB~q\,
	ena => \inst|inst70|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst70|txdata\(4));

-- Location: LCCOMB_X17_Y17_N20
\inst|inst59|Data_Buff~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~367_combout\ = (!\inst|inst59|POP_req~q\ & \inst|inst70|txdata\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~367_combout\);

-- Location: FF_X17_Y17_N21
\inst|inst59|Data_Buff[40][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~367_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[40][7]~365_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[40][4]~q\);

-- Location: LCCOMB_X17_Y17_N12
\inst|inst59|Data_Buff~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~358_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[40][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[40][4]~q\,
	combout => \inst|inst59|Data_Buff~358_combout\);

-- Location: FF_X17_Y17_N13
\inst|inst59|Data_Buff[39][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~358_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[39][7]~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[39][4]~q\);

-- Location: LCCOMB_X14_Y17_N28
\inst|inst59|Data_Buff~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~349_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[39][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(4),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[39][4]~q\,
	combout => \inst|inst59|Data_Buff~349_combout\);

-- Location: FF_X14_Y17_N29
\inst|inst59|Data_Buff[38][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~349_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[38][7]~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[38][4]~q\);

-- Location: LCCOMB_X15_Y17_N24
\inst|inst59|Data_Buff~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~340_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[38][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[38][4]~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~340_combout\);

-- Location: FF_X15_Y17_N25
\inst|inst59|Data_Buff[37][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~340_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[37][7]~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[37][4]~q\);

-- Location: LCCOMB_X16_Y17_N2
\inst|inst59|Data_Buff~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~331_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[37][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[37][4]~q\,
	combout => \inst|inst59|Data_Buff~331_combout\);

-- Location: FF_X16_Y17_N3
\inst|inst59|Data_Buff[36][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~331_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[36][7]~329_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[36][4]~q\);

-- Location: LCCOMB_X16_Y17_N6
\inst|inst59|Data_Buff~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~322_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[36][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[36][4]~q\,
	combout => \inst|inst59|Data_Buff~322_combout\);

-- Location: FF_X16_Y17_N7
\inst|inst59|Data_Buff[35][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~322_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[35][7]~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[35][4]~q\);

-- Location: LCCOMB_X19_Y19_N8
\inst|inst59|Data_Buff~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~313_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[35][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[35][4]~q\,
	combout => \inst|inst59|Data_Buff~313_combout\);

-- Location: FF_X19_Y19_N9
\inst|inst59|Data_Buff[34][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~313_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[34][7]~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[34][4]~q\);

-- Location: LCCOMB_X15_Y19_N6
\inst|inst59|Data_Buff~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~304_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[34][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|Data_Buff[34][4]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~304_combout\);

-- Location: FF_X15_Y19_N7
\inst|inst59|Data_Buff[33][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~304_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[33][7]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[33][4]~q\);

-- Location: LCCOMB_X14_Y19_N18
\inst|inst59|Data_Buff~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~295_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[33][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[33][4]~q\,
	combout => \inst|inst59|Data_Buff~295_combout\);

-- Location: FF_X14_Y19_N19
\inst|inst59|Data_Buff[32][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~295_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[32][7]~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[32][4]~q\);

-- Location: LCCOMB_X14_Y19_N24
\inst|inst59|Data_Buff~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~286_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[32][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[32][4]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~286_combout\);

-- Location: FF_X14_Y19_N25
\inst|inst59|Data_Buff[31][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~286_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[31][7]~284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[31][4]~q\);

-- Location: LCCOMB_X13_Y19_N14
\inst|inst59|Data_Buff~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~277_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[31][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[31][4]~q\,
	datac => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~277_combout\);

-- Location: FF_X13_Y19_N15
\inst|inst59|Data_Buff[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~277_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[30][7]~275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[30][4]~q\);

-- Location: LCCOMB_X14_Y18_N4
\inst|inst59|Data_Buff~268\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~268_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[30][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(4),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[30][4]~q\,
	combout => \inst|inst59|Data_Buff~268_combout\);

-- Location: FF_X14_Y18_N5
\inst|inst59|Data_Buff[29][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~268_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[29][7]~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[29][4]~q\);

-- Location: LCCOMB_X16_Y18_N8
\inst|inst59|Data_Buff~259\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~259_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[29][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[29][4]~q\,
	datac => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~259_combout\);

-- Location: FF_X16_Y18_N9
\inst|inst59|Data_Buff[28][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~259_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[28][7]~257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[28][4]~q\);

-- Location: LCCOMB_X17_Y18_N24
\inst|inst59|Data_Buff~250\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~250_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[28][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[28][4]~q\,
	combout => \inst|inst59|Data_Buff~250_combout\);

-- Location: FF_X17_Y18_N25
\inst|inst59|Data_Buff[27][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~250_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[27][7]~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[27][4]~q\);

-- Location: LCCOMB_X18_Y18_N24
\inst|inst59|Data_Buff~241\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~241_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[27][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[27][4]~q\,
	combout => \inst|inst59|Data_Buff~241_combout\);

-- Location: FF_X18_Y18_N25
\inst|inst59|Data_Buff[26][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~241_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[26][7]~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[26][4]~q\);

-- Location: LCCOMB_X18_Y18_N0
\inst|inst59|Data_Buff~232\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~232_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[26][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[26][4]~q\,
	combout => \inst|inst59|Data_Buff~232_combout\);

-- Location: FF_X18_Y18_N1
\inst|inst59|Data_Buff[25][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~232_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[25][7]~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[25][4]~q\);

-- Location: LCCOMB_X19_Y18_N0
\inst|inst59|Data_Buff~223\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~223_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[25][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[25][4]~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~223_combout\);

-- Location: FF_X19_Y18_N1
\inst|inst59|Data_Buff[24][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~223_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[24][7]~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[24][4]~q\);

-- Location: LCCOMB_X18_Y19_N16
\inst|inst59|Data_Buff~214\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~214_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[24][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(4),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[24][4]~q\,
	combout => \inst|inst59|Data_Buff~214_combout\);

-- Location: FF_X18_Y19_N17
\inst|inst59|Data_Buff[23][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~214_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[23][7]~212_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[23][4]~q\);

-- Location: LCCOMB_X18_Y21_N6
\inst|inst59|Data_Buff~205\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~205_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[23][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(4),
	datac => \inst|inst59|Data_Buff[23][4]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~205_combout\);

-- Location: FF_X18_Y21_N7
\inst|inst59|Data_Buff[22][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~205_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[22][7]~203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[22][4]~q\);

-- Location: LCCOMB_X13_Y21_N4
\inst|inst59|Data_Buff~196\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~196_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[22][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst59|Data_Buff[22][4]~q\,
	datac => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~196_combout\);

-- Location: FF_X13_Y21_N5
\inst|inst59|Data_Buff[21][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~196_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[21][7]~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[21][4]~q\);

-- Location: LCCOMB_X17_Y21_N14
\inst|inst59|Data_Buff~187\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~187_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[21][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|Data_Buff[21][4]~q\,
	combout => \inst|inst59|Data_Buff~187_combout\);

-- Location: FF_X17_Y21_N15
\inst|inst59|Data_Buff[20][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~187_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[20][7]~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[20][4]~q\);

-- Location: LCCOMB_X18_Y21_N8
\inst|inst59|Data_Buff~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~178_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[20][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[20][4]~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~178_combout\);

-- Location: FF_X18_Y21_N9
\inst|inst59|Data_Buff[19][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~178_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[19][7]~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[19][4]~q\);

-- Location: LCCOMB_X16_Y21_N18
\inst|inst59|Data_Buff~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~169_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[19][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[19][4]~q\,
	combout => \inst|inst59|Data_Buff~169_combout\);

-- Location: FF_X16_Y21_N19
\inst|inst59|Data_Buff[18][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~169_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[18][7]~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[18][4]~q\);

-- Location: LCCOMB_X16_Y21_N24
\inst|inst59|Data_Buff~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~160_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[18][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[18][4]~q\,
	combout => \inst|inst59|Data_Buff~160_combout\);

-- Location: FF_X16_Y21_N25
\inst|inst59|Data_Buff[17][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~160_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[17][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[17][4]~q\);

-- Location: LCCOMB_X15_Y21_N2
\inst|inst59|Data_Buff~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~151_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[17][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[17][4]~q\,
	combout => \inst|inst59|Data_Buff~151_combout\);

-- Location: FF_X15_Y21_N3
\inst|inst59|Data_Buff[16][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~151_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[16][7]~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[16][4]~q\);

-- Location: LCCOMB_X15_Y21_N4
\inst|inst59|Data_Buff~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~142_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[16][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[16][4]~q\,
	combout => \inst|inst59|Data_Buff~142_combout\);

-- Location: FF_X15_Y21_N5
\inst|inst59|Data_Buff[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~142_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[15][7]~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[15][4]~q\);

-- Location: LCCOMB_X12_Y19_N18
\inst|inst59|Data_Buff~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~133_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[15][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|Data_Buff[15][4]~q\,
	combout => \inst|inst59|Data_Buff~133_combout\);

-- Location: FF_X12_Y19_N19
\inst|inst59|Data_Buff[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~133_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[14][7]~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[14][4]~q\);

-- Location: LCCOMB_X12_Y19_N10
\inst|inst59|Data_Buff~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~124_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[14][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[14][4]~q\,
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~124_combout\);

-- Location: FF_X12_Y19_N11
\inst|inst59|Data_Buff[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~124_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[13][7]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[13][4]~q\);

-- Location: LCCOMB_X11_Y19_N14
\inst|inst59|Data_Buff~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~115_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[13][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[13][4]~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~115_combout\);

-- Location: FF_X11_Y19_N15
\inst|inst59|Data_Buff[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~115_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[12][7]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[12][4]~q\);

-- Location: LCCOMB_X11_Y19_N24
\inst|inst59|Data_Buff~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~106_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[12][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[12][4]~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~106_combout\);

-- Location: FF_X11_Y19_N25
\inst|inst59|Data_Buff[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~106_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[11][7]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[11][4]~q\);

-- Location: LCCOMB_X15_Y20_N8
\inst|inst59|Data_Buff~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~97_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[11][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[11][4]~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~97_combout\);

-- Location: FF_X15_Y20_N9
\inst|inst59|Data_Buff[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~97_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[10][7]~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[10][4]~q\);

-- Location: LCCOMB_X15_Y20_N0
\inst|inst59|Data_Buff~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~88_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[10][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|Data_Buff[10][4]~q\,
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~88_combout\);

-- Location: FF_X15_Y20_N1
\inst|inst59|Data_Buff[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~88_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[9][7]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[9][4]~q\);

-- Location: LCCOMB_X15_Y18_N4
\inst|inst59|Data_Buff~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~79_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[9][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datac => \inst|inst59|Data_Buff[9][4]~q\,
	datad => \inst|inst70|txdata\(4),
	combout => \inst|inst59|Data_Buff~79_combout\);

-- Location: FF_X15_Y18_N5
\inst|inst59|Data_Buff[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~79_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[8][7]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[8][4]~q\);

-- Location: LCCOMB_X15_Y18_N20
\inst|inst59|Data_Buff~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~70_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[8][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|txdata\(4),
	datab => \inst|inst59|Data_Buff[8][4]~q\,
	datac => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~70_combout\);

-- Location: FF_X15_Y18_N21
\inst|inst59|Data_Buff[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~70_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[7][7]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[7][4]~q\);

-- Location: LCCOMB_X15_Y22_N8
\inst|inst59|Data_Buff~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~61_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[7][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|POP_req~q\,
	datad => \inst|inst59|Data_Buff[7][4]~q\,
	combout => \inst|inst59|Data_Buff~61_combout\);

-- Location: FF_X15_Y22_N9
\inst|inst59|Data_Buff[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~61_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[6][7]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[6][4]~q\);

-- Location: LCCOMB_X15_Y22_N28
\inst|inst59|Data_Buff~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~51_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[6][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|POP_req~q\,
	datab => \inst|inst70|txdata\(4),
	datac => \inst|inst59|Data_Buff[6][4]~q\,
	combout => \inst|inst59|Data_Buff~51_combout\);

-- Location: FF_X15_Y22_N29
\inst|inst59|Data_Buff[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~51_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[5][7]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[5][4]~q\);

-- Location: LCCOMB_X17_Y22_N24
\inst|inst59|Data_Buff~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~42_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[5][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|Data_Buff[5][4]~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~42_combout\);

-- Location: FF_X17_Y22_N25
\inst|inst59|Data_Buff[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~42_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[4][7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[4][4]~q\);

-- Location: LCCOMB_X16_Y20_N2
\inst|inst59|Data_Buff~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~32_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[4][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[4][4]~q\,
	combout => \inst|inst59|Data_Buff~32_combout\);

-- Location: FF_X16_Y20_N3
\inst|inst59|Data_Buff[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~32_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[3][7]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[3][4]~q\);

-- Location: LCCOMB_X16_Y20_N12
\inst|inst59|Data_Buff~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~23_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[3][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[3][4]~q\,
	combout => \inst|inst59|Data_Buff~23_combout\);

-- Location: FF_X16_Y20_N13
\inst|inst59|Data_Buff[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~23_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[2][7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[2][4]~q\);

-- Location: LCCOMB_X17_Y20_N0
\inst|inst59|Data_Buff~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~13_combout\ = (\inst|inst59|POP_req~q\ & (\inst|inst59|Data_Buff[2][4]~q\)) # (!\inst|inst59|POP_req~q\ & ((\inst|inst70|txdata\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Data_Buff[2][4]~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|POP_req~q\,
	combout => \inst|inst59|Data_Buff~13_combout\);

-- Location: FF_X17_Y20_N1
\inst|inst59|Data_Buff[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~13_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[1][7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[1][4]~q\);

-- Location: LCCOMB_X17_Y20_N28
\inst|inst59|Data_Buff~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Data_Buff~4_combout\ = (\inst|inst59|POP_req~q\ & ((\inst|inst59|Data_Buff[1][4]~q\))) # (!\inst|inst59|POP_req~q\ & (\inst|inst70|txdata\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst59|POP_req~q\,
	datac => \inst|inst70|txdata\(4),
	datad => \inst|inst59|Data_Buff[1][4]~q\,
	combout => \inst|inst59|Data_Buff~4_combout\);

-- Location: FF_X17_Y20_N29
\inst|inst59|Data_Buff[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Data_Buff~4_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	ena => \inst|inst59|Data_Buff[0][7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|Data_Buff[0][4]~q\);

-- Location: FF_X17_Y16_N1
\inst|inst59|SendData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	asdata => \inst|inst59|Data_Buff[0][4]~q\,
	sload => VCC,
	ena => \inst|inst59|SendData[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|SendData\(4));

-- Location: LCCOMB_X17_Y16_N0
\inst|inst59|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Mux0~0_combout\ = (\inst|inst59|bitCounter\(1) & ((\inst|inst59|SendData\(6)) # ((\inst|inst59|bitCounter\(0))))) # (!\inst|inst59|bitCounter\(1) & (((\inst|inst59|SendData\(4) & !\inst|inst59|bitCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|SendData\(6),
	datab => \inst|inst59|bitCounter\(1),
	datac => \inst|inst59|SendData\(4),
	datad => \inst|inst59|bitCounter\(0),
	combout => \inst|inst59|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y16_N2
\inst|inst59|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Mux0~1_combout\ = (\inst|inst59|bitCounter\(0) & ((\inst|inst59|Mux0~0_combout\ & ((\inst|inst59|SendData\(7)))) # (!\inst|inst59|Mux0~0_combout\ & (\inst|inst59|SendData\(5))))) # (!\inst|inst59|bitCounter\(0) & 
-- (((\inst|inst59|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|SendData\(5),
	datab => \inst|inst59|bitCounter\(0),
	datac => \inst|inst59|SendData\(7),
	datad => \inst|inst59|Mux0~0_combout\,
	combout => \inst|inst59|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y16_N26
\inst|inst59|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector5~1_combout\ = (\inst|inst59|state.DataBits~q\ & ((\inst|inst59|bitCounter\(2) & ((\inst|inst59|Mux0~1_combout\))) # (!\inst|inst59|bitCounter\(2) & (\inst|inst59|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Mux0~3_combout\,
	datab => \inst|inst59|state.DataBits~q\,
	datac => \inst|inst59|bitCounter\(2),
	datad => \inst|inst59|Mux0~1_combout\,
	combout => \inst|inst59|Selector5~1_combout\);

-- Location: LCCOMB_X16_Y16_N0
\inst|inst59|Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst59|Selector5~2_combout\ = (!\inst|inst59|Selector5~0_combout\ & (\inst|inst59|state.Idle~q\ & (!\inst|inst59|state.Stop~q\ & !\inst|inst59|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst59|Selector5~0_combout\,
	datab => \inst|inst59|state.Idle~q\,
	datac => \inst|inst59|state.Stop~q\,
	datad => \inst|inst59|Selector5~1_combout\,
	combout => \inst|inst59|Selector5~2_combout\);

-- Location: FF_X16_Y16_N1
\inst|inst59|outp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKs~inputclkctrl_outclk\,
	d => \inst|inst59|Selector5~2_combout\,
	clrn => \nRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst59|outp~q\);

-- Location: LCCOMB_X14_Y25_N0
\inst|inst61|5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|inst61|5~combout\ = (!\inst|inst59|outp~q\) # (!\inst|inst70|ListenOnly~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst70|ListenOnly~q\,
	datad => \inst|inst59|outp~q\,
	combout => \inst|inst61|5~combout\);

ww_SPI0_MISO <= \SPI0_MISO~output_o\;

ww_SPI_nSS <= \SPI_nSS~output_o\;

ww_TxD <= \TxD~output_o\;
END structure;


