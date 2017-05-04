-------------------------------------------------------------------------------
-- Serial to SPI Interface
--
-------------------------------------------------------------------------------
-- $Id: Serial2SPI.vhd,v 1.1 2008/09/23 14:55:43 Yu_Ray Exp $
-------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Serial2SPI is										
	port (
		clk			:	in	std_logic;				
		reset		:	in	std_logic;				-- reset input (high)

		-- ser2par interface
		rxdata		: 	in	std_logic_vector(7 downto 0);
		rxreq		: 	in	std_logic;
		rxack		: 	out	std_logic;
		
		-- par2ser interface
		txdata		: 	out	std_logic_vector(7 downto 0);
		txreq		: 	out	std_logic;
		txack		: 	in	std_logic;

		-- SPI
		nss			:	out	std_logic;
		sclk		:	out	std_logic;
		mosi		: 	out	std_logic;
		miso 		: 	in 	std_logic;
		
		ListenOnly	:	out	std_logic
	);
end Serial2SPI;

architecture rtl of Serial2SPI is

	constant AssertSS : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('('), 8);
	constant DeassertSS : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos(')'), 8);	
	constant CharX : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('X'), 8);	
	constant Data0 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('0'), 8);	
	constant Data1 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('1'), 8);	
	constant Data2 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('2'), 8);	
	constant Data3 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('3'), 8);	
	constant Data4 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('4'), 8);	
	constant Data5 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('5'), 8);	
	constant Data6 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('6'), 8);	
	constant Data7 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('7'), 8);	
	constant Data8 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('8'), 8);	
	constant Data9 : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('9'), 8);	
	constant DataA : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('A'), 8);	
	constant DataB : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('B'), 8);	
	constant DataC : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('C'), 8);	
	constant DataD : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('D'), 8);	
	constant DataE : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('E'), 8);	
	constant DataF : std_logic_vector(7 downto 0) := CONV_STD_LOGIC_VECTOR(character'pos('F'), 8);	

	signal DataIn : std_logic_vector(7 downto 0);
	signal DataOut : std_logic_vector(7 downto 0);

	constant divider : integer := 10;
	signal slowerer : integer range 0 to (divider-1);

	type states is (WaitMSB, DecodeMSB, AckSymbol, SendSymbol, SendSymbolWaitAck,
					AckDataMSB, WaitLSB, DecodeLSB, AckDataLSB, 
					SPI_D7a, SPI_D7b, SPI_D6a, SPI_D6b, SPI_D5a, SPI_D5b, SPI_D4a, SPI_D4b, 
					SPI_D3a, SPI_D3b, SPI_D2a, SPI_D2b, SPI_D1a, SPI_D1b, SPI_D0a, SPI_D0b, 
					SendMSB, SendMSBWaitAck, SendLSB, SendLSBWaitAck);
	signal state : states;
	
	type TakeControlStates is (TakeControlIdle, GotOpenBracket, GotX, GotCloseBracket);
	signal takeControlState : TakeControlStates;
	
begin

	-- de-assert listen only when "X" is received
	process (clk, reset)
	begin
		if reset='1' then
			ListenOnly <= '1';
		elsif rising_edge(clk) then
			if (rxdata=CharX) and (rxreq='1') then
				ListenOnly <= '0';
			end if;
		end if;
	end process;

	process (clk, reset) 
	begin
		if reset='1' then
			state <= WaitMSB; 
			rxack <= '0';
			txdata <= (others=>'0');
			txreq <= '0';
			nss <= '1';
			sclk <= '0';
			mosi <= '0';
			DataIn <= (others=>'0');
			DataOut <= (others=>'0');
			slowerer <= 0;
		elsif rising_edge(clk) then
			case state is
				when WaitMSB =>			
					-- wait for the MSB of a byte down the serial port
					if rxreq='1' then
						state <= DecodeMSB;
					end if;
				
				when DecodeMSB =>
					txdata <= rxdata;
					case rxdata is
						when AssertSS =>		nss <= '0'; state <= AckSymbol;	
						when DeassertSS =>		nss <= '1'; state <= AckSymbol;	
						when Data0 =>			DataIn(7 downto 4) <= "0000"; state <= AckDataMSB;
						when Data1 =>			DataIn(7 downto 4) <= "0001"; state <= AckDataMSB;
						when Data2 =>			DataIn(7 downto 4) <= "0010"; state <= AckDataMSB;
						when Data3 =>			DataIn(7 downto 4) <= "0011"; state <= AckDataMSB;
						when Data4 =>			DataIn(7 downto 4) <= "0100"; state <= AckDataMSB;
						when Data5 =>			DataIn(7 downto 4) <= "0101"; state <= AckDataMSB;
						when Data6 =>			DataIn(7 downto 4) <= "0110"; state <= AckDataMSB;
						when Data7 =>			DataIn(7 downto 4) <= "0111"; state <= AckDataMSB;
						when Data8 =>			DataIn(7 downto 4) <= "1000"; state <= AckDataMSB;
						when Data9 =>			DataIn(7 downto 4) <= "1001"; state <= AckDataMSB;
						when DataA =>			DataIn(7 downto 4) <= "1010"; state <= AckDataMSB;
						when DataB =>			DataIn(7 downto 4) <= "1011"; state <= AckDataMSB;
						when DataC =>			DataIn(7 downto 4) <= "1100"; state <= AckDataMSB;
						when DataD =>			DataIn(7 downto 4) <= "1101"; state <= AckDataMSB;
						when DataE =>			DataIn(7 downto 4) <= "1110"; state <= AckDataMSB;
						when DataF =>			DataIn(7 downto 4) <= "1111"; state <= AckDataMSB;
						when others => 			state <= AckSymbol;
					end case;
					rxack <= '1';
					
				when AckSymbol =>
					if rxreq='0' then	
						rxack <= '0';
						state <= SendSymbol;
					end if;

				when SendSymbol =>
					txreq <= '1';
					state <= SendSymbolWaitAck;
					
				when SendSymbolWaitAck =>
					if txack='1' then
						txreq <= '0';
						state <= WaitMSB;
					end if;
										
				when AckDataMSB =>
					if rxreq='0' then
						rxack <= '0';
						state <= WaitLSB;
					end if;
					
				when WaitLSB =>
					if rxreq='1' then
						state <= DecodeLSB;
					end if;
						
				when DecodeLSB =>
					case rxdata is
						when AssertSS =>		nss <= '0'; state <= AckSymbol;	
						when DeassertSS =>		nss <= '1'; state <= AckSymbol;	
						when Data0 =>			DataIn(3 downto 0) <= "0000"; state <= AckDataLSB;
						when Data1 =>			DataIn(3 downto 0) <= "0001"; state <= AckDataLSB;
						when Data2 =>			DataIn(3 downto 0) <= "0010"; state <= AckDataLSB;
						when Data3 =>			DataIn(3 downto 0) <= "0011"; state <= AckDataLSB;
						when Data4 =>			DataIn(3 downto 0) <= "0100"; state <= AckDataLSB;
						when Data5 =>			DataIn(3 downto 0) <= "0101"; state <= AckDataLSB;
						when Data6 =>			DataIn(3 downto 0) <= "0110"; state <= AckDataLSB;
						when Data7 =>			DataIn(3 downto 0) <= "0111"; state <= AckDataLSB;
						when Data8 =>			DataIn(3 downto 0) <= "1000"; state <= AckDataLSB;
						when Data9 =>			DataIn(3 downto 0) <= "1001"; state <= AckDataLSB;
						when DataA =>			DataIn(3 downto 0) <= "1010"; state <= AckDataLSB;
						when DataB =>			DataIn(3 downto 0) <= "1011"; state <= AckDataLSB;
						when DataC =>			DataIn(3 downto 0) <= "1100"; state <= AckDataLSB;
						when DataD =>			DataIn(3 downto 0) <= "1101"; state <= AckDataLSB;
						when DataE =>			DataIn(3 downto 0) <= "1110"; state <= AckDataLSB;
						when DataF =>			DataIn(3 downto 0) <= "1111"; state <= AckDataLSB;
						when others => 			state <= AckSymbol;
					end case;
					rxack <= '1';
					
				when AckDataLSB =>
					mosi <= DataIn(7);
					if rxreq='0' then	
						rxack <= '0';
						slowerer <= Divider-1;
						state <= SPI_D7a;
					end if;
					
				when SPI_D7a =>
					sclk <= '1';
					DataOut(7) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D7b;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D7b =>
					mosi <= DataIn(6);
					sclk <= '0';
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D6a;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D6a =>
					sclk <= '1';
					DataOut(6) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D6b;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D6b =>
					mosi <= DataIn(5);
					sclk <= '0';
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D5a;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D5a =>
					sclk <= '1';
					DataOut(5) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D5b;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D5b =>
					mosi <= DataIn(4);
					sclk <= '0';
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D4a;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D4a =>
					sclk <= '1';
					DataOut(4) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D4b;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D4b =>
					mosi <= DataIn(3);
					sclk <= '0';
					if slowerer=0 then
					slowerer <= Divider-1;
						state <= SPI_D3a;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D3a =>
					sclk <= '1';
					DataOut(3) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D3b;
					else
						slowerer <= slowerer-1;
					end if;
						
				when SPI_D3b =>
					mosi <= DataIn(2);
					sclk <= '0';
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D2a;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D2a =>
					sclk <= '1';
					DataOut(2) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D2b;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D2b =>
					mosi <= DataIn(1);
					sclk <= '0';
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D1a;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D1a =>
					sclk <= '1';
					DataOut(1) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D1b;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D1b =>
					mosi <= DataIn(0);
					sclk <= '0';
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D0a;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D0a =>
					sclk <= '1';
					DataOut(0) <= miso;
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SPI_D0b;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SPI_D0b =>
					mosi <= '1';
					sclk <= '0';
					if slowerer=0 then
						slowerer <= Divider-1;
						state <= SendMSB;
					else
						slowerer <= slowerer-1;
					end if;
					
				when SendMSB =>
					case DataOut(7 downto 4) is
						when "0000" =>		txdata <= Data0;	
						when "0001" =>		txdata <= Data1;	
						when "0010" =>		txdata <= Data2;	
						when "0011" =>		txdata <= Data3;	
						when "0100" =>		txdata <= Data4;	
						when "0101" =>		txdata <= Data5;	
						when "0110" =>		txdata <= Data6;	
						when "0111" =>		txdata <= Data7;	
						when "1000" =>		txdata <= Data8;	
						when "1001" =>		txdata <= Data9;	
						when "1010" =>		txdata <= DataA;	
						when "1011" =>		txdata <= DataB;	
						when "1100" =>		txdata <= DataC;	
						when "1101" =>		txdata <= DataD;	
						when "1110" =>		txdata <= DataE;	
						when "1111" =>		txdata <= DataF;	
					end case;
					txreq <= '1';
					state <= SendMSBWaitAck;
					
				when SendMSBWaitAck =>
					if txack='1' then
						txreq <= '0';
						state <= SendLSB;
					end if;
						
				when SendLSB =>
					case DataOut(3 downto 0) is
						when "0000" =>		txdata <= Data0;	
						when "0001" =>		txdata <= Data1;	
						when "0010" =>		txdata <= Data2;	
						when "0011" =>		txdata <= Data3;	
						when "0100" =>		txdata <= Data4;	
						when "0101" =>		txdata <= Data5;	
						when "0110" =>		txdata <= Data6;	
						when "0111" =>		txdata <= Data7;	
						when "1000" =>		txdata <= Data8;	
						when "1001" =>		txdata <= Data9;	
						when "1010" =>		txdata <= DataA;	
						when "1011" =>		txdata <= DataB;	
						when "1100" =>		txdata <= DataC;	
						when "1101" =>		txdata <= DataD;	
						when "1110" =>		txdata <= DataE;	
						when "1111" =>		txdata <= DataF;	
					end case;
					txreq <= '1';
					state <= SendLSBWaitAck;
					
				when SendLSBWaitAck =>
					if txack='1' then
						txreq <= '0';
						state <= WaitMSB;
					end if;
					
				when others =>
					state <= WaitMSB; 
					rxack <= '0';
					txdata <= (others=>'0');
					txreq <= '0';
					nss <= '1';
					sclk <= '0';
					mosi <= '0';
					DataIn <= (others=>'0');
					DataOut <= (others=>'0');
					slowerer <= 0;
					
			end case;
		end if;
	end process;

end rtl;
