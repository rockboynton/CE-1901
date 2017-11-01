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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/31/2017 23:24:13"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RCA8 IS
    PORT (
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Sel : IN std_logic;
	S : OUT std_logic_vector(7 DOWNTO 0);
	Cout : OUT std_logic
	);
END RCA8;

ARCHITECTURE structure OF RCA8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sel : std_logic;
SIGNAL ww_S : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:0:LOWERBITS:FA1|Sf~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Sel~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:1:UPPERBITS:FAN|Sf~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:2:UPPERBITS:FAN|Sf~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:3:UPPERBITS:FAN|Sf~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:4:UPPERBITS:FAN|Sf~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:5:UPPERBITS:FAN|Sf~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:6:UPPERBITS:FAN|Sf~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:7:UPPERBITS:FAN|Sf~0_combout\ : std_logic;
SIGNAL \GEN_ADD_SUB:7:UPPERBITS:FAN|Coutf~0_combout\ : std_logic;
SIGNAL Bee : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Sel <= Sel;
S <= ww_S;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:0:LOWERBITS:FA1|Sf~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:1:UPPERBITS:FAN|Sf~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

\S[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:2:UPPERBITS:FAN|Sf~0_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

\S[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:3:UPPERBITS:FAN|Sf~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

\S[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:4:UPPERBITS:FAN|Sf~0_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

\S[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:5:UPPERBITS:FAN|Sf~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

\S[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:6:UPPERBITS:FAN|Sf~0_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

\S[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:7:UPPERBITS:FAN|Sf~0_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

\Cout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_ADD_SUB:7:UPPERBITS:FAN|Coutf~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\GEN_ADD_SUB:0:LOWERBITS:FA1|Sf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:0:LOWERBITS:FA1|Sf~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \GEN_ADD_SUB:0:LOWERBITS:FA1|Sf~0_combout\);

\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\Sel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel,
	o => \Sel~input_o\);

\Bee[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- Bee(1) = \B[1]~input_o\ $ (\Sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \Sel~input_o\,
	combout => Bee(1));

\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\ = (\Sel~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datad => \B[0]~input_o\,
	combout => \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\);

\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Sel~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \Sel~input_o\,
	combout => \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\);

\GEN_ADD_SUB:1:UPPERBITS:FAN|Sf\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:1:UPPERBITS:FAN|Sf~combout\ = \A[1]~input_o\ $ (Bee(1) $ (((\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\) # (\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => Bee(1),
	datac => \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\,
	datad => \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\,
	combout => \GEN_ADD_SUB:1:UPPERBITS:FAN|Sf~combout\);

\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\ = (Bee(1) & ((\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\) # ((\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\) # (\A[1]~input_o\)))) # (!Bee(1) & (\A[1]~input_o\ & 
-- ((\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\) # (\GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~1_combout\,
	datab => \GEN_ADD_SUB:0:LOWERBITS:FA1|Coutf~0_combout\,
	datac => Bee(1),
	datad => \A[1]~input_o\,
	combout => \GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\);

\GEN_ADD_SUB:2:UPPERBITS:FAN|Sf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:2:UPPERBITS:FAN|Sf~0_combout\ = \Sel~input_o\ $ (\A[2]~input_o\ $ (\B[2]~input_o\ $ (\GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\,
	combout => \GEN_ADD_SUB:2:UPPERBITS:FAN|Sf~0_combout\);

\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\ = (\GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\ & ((\A[2]~input_o\) # (\Sel~input_o\ $ (\B[2]~input_o\)))) # (!\GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\ & (\A[2]~input_o\ & (\Sel~input_o\ $ 
-- (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \B[2]~input_o\,
	datac => \GEN_ADD_SUB:1:UPPERBITS:FAN|Coutf~0_combout\,
	datad => \A[2]~input_o\,
	combout => \GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\);

\GEN_ADD_SUB:3:UPPERBITS:FAN|Sf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:3:UPPERBITS:FAN|Sf~0_combout\ = \Sel~input_o\ $ (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\,
	combout => \GEN_ADD_SUB:3:UPPERBITS:FAN|Sf~0_combout\);

\A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\ = (\GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\ & ((\A[3]~input_o\) # (\Sel~input_o\ $ (\B[3]~input_o\)))) # (!\GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\ & (\A[3]~input_o\ & (\Sel~input_o\ $ 
-- (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \B[3]~input_o\,
	datac => \GEN_ADD_SUB:2:UPPERBITS:FAN|Coutf~0_combout\,
	datad => \A[3]~input_o\,
	combout => \GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\);

\GEN_ADD_SUB:4:UPPERBITS:FAN|Sf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:4:UPPERBITS:FAN|Sf~0_combout\ = \Sel~input_o\ $ (\A[4]~input_o\ $ (\B[4]~input_o\ $ (\GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	datad => \GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\,
	combout => \GEN_ADD_SUB:4:UPPERBITS:FAN|Sf~0_combout\);

\A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\ = (\GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\ & ((\A[4]~input_o\) # (\Sel~input_o\ $ (\B[4]~input_o\)))) # (!\GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\ & (\A[4]~input_o\ & (\Sel~input_o\ $ 
-- (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \B[4]~input_o\,
	datac => \GEN_ADD_SUB:3:UPPERBITS:FAN|Coutf~0_combout\,
	datad => \A[4]~input_o\,
	combout => \GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\);

\GEN_ADD_SUB:5:UPPERBITS:FAN|Sf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:5:UPPERBITS:FAN|Sf~0_combout\ = \Sel~input_o\ $ (\A[5]~input_o\ $ (\B[5]~input_o\ $ (\GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\,
	combout => \GEN_ADD_SUB:5:UPPERBITS:FAN|Sf~0_combout\);

\A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\ = (\GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\ & ((\A[5]~input_o\) # (\Sel~input_o\ $ (\B[5]~input_o\)))) # (!\GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\ & (\A[5]~input_o\ & (\Sel~input_o\ $ 
-- (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \B[5]~input_o\,
	datac => \GEN_ADD_SUB:4:UPPERBITS:FAN|Coutf~0_combout\,
	datad => \A[5]~input_o\,
	combout => \GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\);

\GEN_ADD_SUB:6:UPPERBITS:FAN|Sf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:6:UPPERBITS:FAN|Sf~0_combout\ = \Sel~input_o\ $ (\A[6]~input_o\ $ (\B[6]~input_o\ $ (\GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\,
	combout => \GEN_ADD_SUB:6:UPPERBITS:FAN|Sf~0_combout\);

\A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\ = (\GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\ & ((\A[6]~input_o\) # (\Sel~input_o\ $ (\B[6]~input_o\)))) # (!\GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\ & (\A[6]~input_o\ & (\Sel~input_o\ $ 
-- (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \B[6]~input_o\,
	datac => \GEN_ADD_SUB:5:UPPERBITS:FAN|Coutf~0_combout\,
	datad => \A[6]~input_o\,
	combout => \GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\);

\GEN_ADD_SUB:7:UPPERBITS:FAN|Sf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:7:UPPERBITS:FAN|Sf~0_combout\ = \Sel~input_o\ $ (\A[7]~input_o\ $ (\B[7]~input_o\ $ (\GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\,
	combout => \GEN_ADD_SUB:7:UPPERBITS:FAN|Sf~0_combout\);

\GEN_ADD_SUB:7:UPPERBITS:FAN|Coutf~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN_ADD_SUB:7:UPPERBITS:FAN|Coutf~0_combout\ = (\GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\ & ((\A[7]~input_o\) # (\Sel~input_o\ $ (\B[7]~input_o\)))) # (!\GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\ & (\A[7]~input_o\ & (\Sel~input_o\ $ 
-- (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \B[7]~input_o\,
	datac => \GEN_ADD_SUB:6:UPPERBITS:FAN|Coutf~0_combout\,
	datad => \A[7]~input_o\,
	combout => \GEN_ADD_SUB:7:UPPERBITS:FAN|Coutf~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_Cout <= \Cout~output_o\;
END structure;


