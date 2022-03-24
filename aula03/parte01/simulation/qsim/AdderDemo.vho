-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/24/2022 11:46:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	adder4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	cin : IN std_logic;
	s : OUT std_logic_vector(3 DOWNTO 0);
	cout : OUT std_logic
	);
END adder4;

ARCHITECTURE structure OF adder4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \bit0|s~1_cout\ : std_logic;
SIGNAL \bit0|s~2_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \bit0|s~3\ : std_logic;
SIGNAL \bit0|s~4_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \bit0|s~5\ : std_logic;
SIGNAL \bit0|s~6_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \bit0|s~7\ : std_logic;
SIGNAL \bit0|s~8_combout\ : std_logic;
SIGNAL \bit0|s~9\ : std_logic;
SIGNAL \bit0|s~10_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_cin <= cin;
s <= ww_s;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0|s~2_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

\s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0|s~4_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

\s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0|s~6_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

\s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0|s~8_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0|s~10_combout\,
	devoe => ww_devoe,
	o => \cout~output_o\);

\cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\bit0|s~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|s~1_cout\ = CARRY(\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datad => VCC,
	cout => \bit0|s~1_cout\);

\bit0|s~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|s~2_combout\ = (\cin~input_o\ & ((\a[0]~input_o\ & (\bit0|s~1_cout\ & VCC)) # (!\a[0]~input_o\ & (!\bit0|s~1_cout\)))) # (!\cin~input_o\ & ((\a[0]~input_o\ & (!\bit0|s~1_cout\)) # (!\a[0]~input_o\ & ((\bit0|s~1_cout\) # (GND)))))
-- \bit0|s~3\ = CARRY((\cin~input_o\ & (!\a[0]~input_o\ & !\bit0|s~1_cout\)) # (!\cin~input_o\ & ((!\bit0|s~1_cout\) # (!\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cin => \bit0|s~1_cout\,
	combout => \bit0|s~2_combout\,
	cout => \bit0|s~3\);

\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\bit0|s~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|s~4_combout\ = ((\b[1]~input_o\ $ (\a[1]~input_o\ $ (!\bit0|s~3\)))) # (GND)
-- \bit0|s~5\ = CARRY((\b[1]~input_o\ & ((\a[1]~input_o\) # (!\bit0|s~3\))) # (!\b[1]~input_o\ & (\a[1]~input_o\ & !\bit0|s~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \bit0|s~3\,
	combout => \bit0|s~4_combout\,
	cout => \bit0|s~5\);

\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\bit0|s~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|s~6_combout\ = (\b[2]~input_o\ & ((\a[2]~input_o\ & (\bit0|s~5\ & VCC)) # (!\a[2]~input_o\ & (!\bit0|s~5\)))) # (!\b[2]~input_o\ & ((\a[2]~input_o\ & (!\bit0|s~5\)) # (!\a[2]~input_o\ & ((\bit0|s~5\) # (GND)))))
-- \bit0|s~7\ = CARRY((\b[2]~input_o\ & (!\a[2]~input_o\ & !\bit0|s~5\)) # (!\b[2]~input_o\ & ((!\bit0|s~5\) # (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \bit0|s~5\,
	combout => \bit0|s~6_combout\,
	cout => \bit0|s~7\);

\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\bit0|s~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|s~8_combout\ = ((\b[3]~input_o\ $ (\a[3]~input_o\ $ (!\bit0|s~7\)))) # (GND)
-- \bit0|s~9\ = CARRY((\b[3]~input_o\ & ((\a[3]~input_o\) # (!\bit0|s~7\))) # (!\b[3]~input_o\ & (\a[3]~input_o\ & !\bit0|s~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \bit0|s~7\,
	combout => \bit0|s~8_combout\,
	cout => \bit0|s~9\);

\bit0|s~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bit0|s~10_combout\ = \bit0|s~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \bit0|s~9\,
	combout => \bit0|s~10_combout\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_cout <= \cout~output_o\;
END structure;


