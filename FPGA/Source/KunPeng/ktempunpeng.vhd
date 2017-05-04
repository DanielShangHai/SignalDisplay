
























	-- version CRC
	--TEST <= rd_params(addr_REVCHECK);
	process (spi_sclk, spi_nss)
	begin
		if falling_edge(spi_sclk) then
			if crcReset='1' then
				REVCHECK <= (others=>'1');
			elsif crcStrobe='1' then
				REVCHECK(7) <= REVCHECK(6);
				REVCHECK(6) <= REVCHECK(5);
				REVCHECK(5) <= REVCHECK(4) xor REVCHECK(7) xor outShift(7);
				REVCHECK(4) <= REVCHECK(3) xor REVCHECK(7) xor outShift(7);
				REVCHECK(3) <= REVCHECK(2);
				REVCHECK(2) <= REVCHECK(1);
				REVCHECK(1) <= REVCHECK(0);
			   REVCHECK(0) <= REVCHECK(7) xor outShift(7);
			end if;
		end if;
	end process;		

	DoRead <= '1' when ((state=RdPad) or ((state=RdData) and (length > 0))) else '0';
--t	ScDoRead <= '1' when ((state=ScRdPad) or (state=ScRdData)) else '0';
--t	ScDoIncCode <= '1' when ((state=ScIncPad) or (state=ScWrPad)) else '0';
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
--t  //////////////////operate on smartchip read and inc/////////////////////////////////////////////////////////////////////////////////			
--t		elsif ScDoRead='1' then
--t			if ScRdAddress=ScRdChange then
--t				outByte <= sig_SMARTCHANGE;
--t			elsif ScRdAddress=ScRdWrStat then
--t				outByte <= sig_SMARTWRSTAT;
--t			elsif ScRdAddress=ScRdRdStat then
--t				outByte <= sig_SMARTRDSTAT;
--t			else
--t				case ScWhich is
--t					when ScInk =>
--t						outByte <= SmartDataInk;
--t					when ScMku =>
--t						outByte <= SmartDataMku;
--t					when ScSys =>
--t						outByte <= SmartDataSys;
--t					when ScCSB =>
--t						outByte <= SmartDataCSB;
--t				end case;
--t			end if;
--t		elsif ScDoIncCode='1' then
--t			outByte <= "000000" & SmartWrReason;
--t  //////////////////operate on smartchip read and inc/////////////////////////////////////////////////////////////////////////////////

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
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			DoReadPhDacq <= '0';
		elsif falling_edge(spi_sclk) then
			if (DoRead='1') and (address=addr_PHDACQ) then
				DoReadPhDacq <= '1';
			else
				DoReadPhDacq <= '0';
			end if;
		end if;
	end process;

	-- generate a signal that means a read has occurred from the RBSEDIR register
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			DoReadRBSEDIR <= '0';
		elsif falling_edge(spi_sclk) then
			if (DoRead='1') and (address=addr_RBSEDIR) then
				DoReadRBSEDIR <= '1';
			else
				DoReadRBSEDIR <= '0';
			end if;
		end if;
	end process;

	-- synchronise DoReadPhDacq to clk
	process (clk, reset)
	begin
		if reset='1' then
			DoReadPhDacqA <= '0';
			DoReadPhDacqB <= '0';
			DoReadPhDacqC <= '0';
		elsif rising_edge(clk) then
			DoReadPhDacqA <= DoReadPhDacq;
			DoReadPhDacqB <= DoReadPhDacqA;
			DoReadPhDacqC <= DoReadPhDacqB;
		end if;
	end process;

	-- synchronise DoReadRBSEDIR to clk
	process (clk, reset)
	begin
		if reset='1' then
			DoReadRBSEDIRA <= '0';
			DoReadRBSEDIRB <= '0';
			DoReadRBSEDIRC <= '0';
		elsif rising_edge(clk) then
			DoReadRBSEDIRA <= DoReadRBSEDIR;
			DoReadRBSEDIRB <= DoReadRBSEDIRA;
			DoReadRBSEDIRC <= DoReadRBSEDIRB;
		end if;
	end process;
	
	-- clock tick when read from RBSEDIR
	RBSEDIR_READ <= DoReadRBSEDIRC;	
	
	
	
	
	
	
	
	
	
	
		-- generate a signal that means a read has occurred from the H1PECINWIDTH register
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			DoReadH1PECINWIDTH <= '0';
		elsif falling_edge(spi_sclk) then
			if (DoRead='1') and (address=addr_H1PECINWIDTH) then
				DoReadH1PECINWIDTH <= '1';
			else
				DoReadH1PECINWIDTH <= '0';
			end if;
		end if;
	end process;

	-- synchronise DoReadH1PECINWIDTH to clk
	process (clk, reset)
	begin
		if reset='1' then
			DoReadH1PECINWIDTHA <= '0';
			DoReadH1PECINWIDTHB <= '0';
			DoReadH1PECINWIDTHC <= '0';
		elsif rising_edge(clk) then
			DoReadH1PECINWIDTHA <= DoReadH1PECINWIDTH;
			DoReadH1PECINWIDTHB <= DoReadH1PECINWIDTHA;
			DoReadH1PECINWIDTHC <= DoReadH1PECINWIDTHB;
		end if;
	end process;

	
		-- generate a signal that means a read has occurred from the VELDACQ register
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			DoReadVelDacq <= '0';
		elsif falling_edge(spi_sclk) then
			if (DoRead='1') and (address=addr_VELDACQ) then
				DoReadVelDacq <= '1';
			else
				DoReadVelDacq <= '0';
			end if;
		end if;
	end process;

	
	-- synchronise DoReadVelDacq to clk
	process (clk, reset)
	begin
		if reset='1' then
			DoReadVelDacqA <= '0';
			DoReadVelDacqB <= '0';
			DoReadVelDacqC <= '0';
		elsif rising_edge(clk) then
			DoReadVelDacqA <= DoReadVelDacq;
			DoReadVelDacqB <= DoReadVelDacqA;
			DoReadVelDacqC <= DoReadVelDacqB;
		end if;
	end process;	
	
	
	-- generate a signal that means a read has occurred from the TOFERROR register
	process (spi_sclk, spi_nss)
	begin
		if spi_nss='1' then
			DoReadTOFERROR <= '0';
		elsif falling_edge(spi_sclk) then
			if (DoRead='1') and (address=addr_TOFERROR) then
				DoReadTOFERROR <= '1';
			else
				DoReadTOFERROR <= '0';
			end if;
		end if;
	end process;

	process (clk, reset)
	begin
		if reset='1' then
			H1HEIGHTB <= (others=>'0'); 
			H1HEIGHT <= (others=>'0');
		elsif rising_edge(clk) then
			H1HEIGHTB <= H1HEIGHTA;
			H1HEIGHT <= H1HEIGHTB;
		end if;
	end process;
	
	
	
	
	
	
	
	
	
	
	
	