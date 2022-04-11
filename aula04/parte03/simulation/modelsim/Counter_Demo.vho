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

-- DATE "04/11/2022 10:10:19"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Counter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END Counter_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|snum~9_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|snum[1]~4_cout\ : std_logic;
SIGNAL \inst|snum[1]~5_combout\ : std_logic;
SIGNAL \inst|snum[1]~6\ : std_logic;
SIGNAL \inst|snum[2]~7_combout\ : std_logic;
SIGNAL \inst|snum[2]~8\ : std_logic;
SIGNAL \inst|snum[3]~10_combout\ : std_logic;
SIGNAL \inst2|decout_n[6]~0_combout\ : std_logic;
SIGNAL \inst2|decout_n[5]~1_combout\ : std_logic;
SIGNAL \inst2|decout_n[4]~2_combout\ : std_logic;
SIGNAL \inst2|decout_n[3]~3_combout\ : std_logic;
SIGNAL \inst2|decout_n[2]~4_combout\ : std_logic;
SIGNAL \inst2|decout_n[1]~5_combout\ : std_logic;
SIGNAL \inst2|decout_n[0]~6_combout\ : std_logic;
SIGNAL \inst|snum\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y51_N12
\inst|snum~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum~9_combout\ = (!\inst|snum\(0) & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|snum\(0),
	datad => \SW[1]~input_o\,
	combout => \inst|snum~9_combout\);

-- Location: FF_X114_Y51_N13
\inst|snum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|snum~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(0));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y51_N22
\inst|snum[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[1]~4_cout\ = CARRY(\inst|snum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datad => VCC,
	cout => \inst|snum[1]~4_cout\);

-- Location: LCCOMB_X114_Y51_N24
\inst|snum[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[1]~5_combout\ = (\SW[0]~input_o\ & ((\inst|snum\(1) & (\inst|snum[1]~4_cout\ & VCC)) # (!\inst|snum\(1) & (!\inst|snum[1]~4_cout\)))) # (!\SW[0]~input_o\ & ((\inst|snum\(1) & (!\inst|snum[1]~4_cout\)) # (!\inst|snum\(1) & 
-- ((\inst|snum[1]~4_cout\) # (GND)))))
-- \inst|snum[1]~6\ = CARRY((\SW[0]~input_o\ & (!\inst|snum\(1) & !\inst|snum[1]~4_cout\)) # (!\SW[0]~input_o\ & ((!\inst|snum[1]~4_cout\) # (!\inst|snum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|snum\(1),
	datad => VCC,
	cin => \inst|snum[1]~4_cout\,
	combout => \inst|snum[1]~5_combout\,
	cout => \inst|snum[1]~6\);

-- Location: FF_X114_Y51_N25
\inst|snum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|snum[1]~5_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(1));

-- Location: LCCOMB_X114_Y51_N26
\inst|snum[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[2]~7_combout\ = ((\inst|snum\(2) $ (\SW[0]~input_o\ $ (!\inst|snum[1]~6\)))) # (GND)
-- \inst|snum[2]~8\ = CARRY((\inst|snum\(2) & ((\SW[0]~input_o\) # (!\inst|snum[1]~6\))) # (!\inst|snum\(2) & (\SW[0]~input_o\ & !\inst|snum[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(2),
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \inst|snum[1]~6\,
	combout => \inst|snum[2]~7_combout\,
	cout => \inst|snum[2]~8\);

-- Location: FF_X114_Y51_N27
\inst|snum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|snum[2]~7_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(2));

-- Location: LCCOMB_X114_Y51_N28
\inst|snum[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[3]~10_combout\ = \SW[0]~input_o\ $ (\inst|snum[2]~8\ $ (\inst|snum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \inst|snum\(3),
	cin => \inst|snum[2]~8\,
	combout => \inst|snum[3]~10_combout\);

-- Location: FF_X114_Y51_N29
\inst|snum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|snum[3]~10_combout\,
	sclr => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(3));

-- Location: LCCOMB_X107_Y72_N28
\inst2|decout_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[6]~0_combout\ = (\inst|snum\(0) & (!\inst|snum\(3) & (\inst|snum\(2) $ (!\inst|snum\(1))))) # (!\inst|snum\(0) & (!\inst|snum\(1) & (\inst|snum\(2) $ (!\inst|snum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[6]~0_combout\);

-- Location: LCCOMB_X107_Y72_N30
\inst2|decout_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[5]~1_combout\ = (\inst|snum\(0) & (\inst|snum\(3) $ (((\inst|snum\(1)) # (!\inst|snum\(2)))))) # (!\inst|snum\(0) & (!\inst|snum\(2) & (\inst|snum\(1) & !\inst|snum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y51_N10
\inst2|decout_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[4]~2_combout\ = (\inst|snum\(1) & (\inst|snum\(0) & ((!\inst|snum\(3))))) # (!\inst|snum\(1) & ((\inst|snum\(2) & ((!\inst|snum\(3)))) # (!\inst|snum\(2) & (\inst|snum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(1),
	datac => \inst|snum\(2),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y51_N20
\inst2|decout_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[3]~3_combout\ = (\inst|snum\(1) & ((\inst|snum\(0) & (\inst|snum\(2))) # (!\inst|snum\(0) & (!\inst|snum\(2) & \inst|snum\(3))))) # (!\inst|snum\(1) & (!\inst|snum\(3) & (\inst|snum\(0) $ (\inst|snum\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(1),
	datac => \inst|snum\(2),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[3]~3_combout\);

-- Location: LCCOMB_X107_Y72_N0
\inst2|decout_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[2]~4_combout\ = (\inst|snum\(2) & (\inst|snum\(3) & ((\inst|snum\(1)) # (!\inst|snum\(0))))) # (!\inst|snum\(2) & (!\inst|snum\(0) & (\inst|snum\(1) & !\inst|snum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[2]~4_combout\);

-- Location: LCCOMB_X107_Y72_N2
\inst2|decout_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[1]~5_combout\ = (\inst|snum\(1) & ((\inst|snum\(0) & ((\inst|snum\(3)))) # (!\inst|snum\(0) & (\inst|snum\(2))))) # (!\inst|snum\(1) & (\inst|snum\(2) & (\inst|snum\(0) $ (\inst|snum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[1]~5_combout\);

-- Location: LCCOMB_X107_Y72_N12
\inst2|decout_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[0]~6_combout\ = (\inst|snum\(2) & (!\inst|snum\(1) & (\inst|snum\(0) $ (!\inst|snum\(3))))) # (!\inst|snum\(2) & (\inst|snum\(0) & (\inst|snum\(1) $ (!\inst|snum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


