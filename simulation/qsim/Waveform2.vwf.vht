-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/31/2017 18:55:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FA_vhd_vec_tst IS
END FA_vhd_vec_tst;
ARCHITECTURE FA_arch OF FA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Af : STD_LOGIC;
SIGNAL Bf : STD_LOGIC;
SIGNAL Cinf : STD_LOGIC;
SIGNAL Coutf : STD_LOGIC;
SIGNAL Sf : STD_LOGIC;
COMPONENT FA
	PORT (
	Af : IN STD_LOGIC;
	Bf : IN STD_LOGIC;
	Cinf : IN STD_LOGIC;
	Coutf : BUFFER STD_LOGIC;
	Sf : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FA
	PORT MAP (
-- list connections between master ports and signals
	Af => Af,
	Bf => Bf,
	Cinf => Cinf,
	Coutf => Coutf,
	Sf => Sf
	);

-- Af
t_prcs_Af: PROCESS
BEGIN
LOOP
	Af <= '0';
	WAIT FOR 500000 ps;
	Af <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Af;

-- Bf
t_prcs_Bf: PROCESS
BEGIN
LOOP
	Bf <= '0';
	WAIT FOR 250000 ps;
	Bf <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Bf;

-- Cinf
t_prcs_Cinf: PROCESS
BEGIN
LOOP
	Cinf <= '0';
	WAIT FOR 125000 ps;
	Cinf <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Cinf;
END FA_arch;
