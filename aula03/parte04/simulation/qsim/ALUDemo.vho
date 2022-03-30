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

-- DATE "03/30/2022 12:45:02"

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

ENTITY 	bin2bcd IS
    PORT (
	inport : IN std_logic_vector(3 DOWNTO 0);
	outport : OUT std_logic_vector(4 DOWNTO 0)
	);
END bin2bcd;

ARCHITECTURE structure OF bin2bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outport : std_logic_vector(4 DOWNTO 0);
SIGNAL \outport[0]~output_o\ : std_logic;
SIGNAL \outport[1]~output_o\ : std_logic;
SIGNAL \outport[2]~output_o\ : std_logic;
SIGNAL \outport[3]~output_o\ : std_logic;
SIGNAL \outport[4]~output_o\ : std_logic;
SIGNAL \inport[0]~input_o\ : std_logic;
SIGNAL \inport[3]~input_o\ : std_logic;
SIGNAL \inport[2]~input_o\ : std_logic;
SIGNAL \inport[1]~input_o\ : std_logic;
SIGNAL \outport~17_combout\ : std_logic;
SIGNAL \outport~16_combout\ : std_logic;
SIGNAL \outport~15_combout\ : std_logic;
SIGNAL \outport~18_combout\ : std_logic;

BEGIN

ww_inport <= inport;
outport <= ww_outport;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\outport[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inport[0]~input_o\,
	devoe => ww_devoe,
	o => \outport[0]~output_o\);

\outport[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport~17_combout\,
	devoe => ww_devoe,
	o => \outport[1]~output_o\);

\outport[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport~16_combout\,
	devoe => ww_devoe,
	o => \outport[2]~output_o\);

\outport[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport~15_combout\,
	devoe => ww_devoe,
	o => \outport[3]~output_o\);

\outport[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outport~18_combout\,
	devoe => ww_devoe,
	o => \outport[4]~output_o\);

\inport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport(0),
	o => \inport[0]~input_o\);

\inport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport(3),
	o => \inport[3]~input_o\);

\inport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport(2),
	o => \inport[2]~input_o\);

\inport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inport(1),
	o => \inport[1]~input_o\);

\outport~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \outport~17_combout\ = (\inport[3]~input_o\ & (\inport[2]~input_o\ & !\inport[1]~input_o\)) # (!\inport[3]~input_o\ & ((\inport[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport[3]~input_o\,
	datab => \inport[2]~input_o\,
	datac => \inport[1]~input_o\,
	combout => \outport~17_combout\);

\outport~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \outport~16_combout\ = (\inport[2]~input_o\ & ((\inport[1]~input_o\) # (!\inport[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport[1]~input_o\,
	datab => \inport[3]~input_o\,
	datac => \inport[2]~input_o\,
	combout => \outport~16_combout\);

\outport~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \outport~15_combout\ = (\inport[3]~input_o\ & (!\inport[2]~input_o\ & !\inport[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport[3]~input_o\,
	datac => \inport[2]~input_o\,
	datad => \inport[1]~input_o\,
	combout => \outport~15_combout\);

\outport~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \outport~18_combout\ = (\inport[3]~input_o\ & ((\inport[1]~input_o\) # (\inport[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inport[1]~input_o\,
	datab => \inport[2]~input_o\,
	datac => \inport[3]~input_o\,
	combout => \outport~18_combout\);

ww_outport(0) <= \outport[0]~output_o\;

ww_outport(1) <= \outport[1]~output_o\;

ww_outport(2) <= \outport[2]~output_o\;

ww_outport(3) <= \outport[3]~output_o\;

ww_outport(4) <= \outport[4]~output_o\;
END structure;


