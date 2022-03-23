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

-- DATE "03/23/2022 16:06:04"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	displaydemovhdl IS
    PORT (
	inputport : IN std_logic_vector(3 DOWNTO 0);
	enableport : IN std_logic;
	outputport : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END displaydemovhdl;

-- Design Ports Information
-- outputport[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputport[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputport[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputport[3]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputport[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputport[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outputport[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputport[3]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputport[1]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputport[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inputport[2]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enableport	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF displaydemovhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inputport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_enableport : std_logic;
SIGNAL ww_outputport : std_logic_vector(6 DOWNTO 0);
SIGNAL \outputport[0]~output_o\ : std_logic;
SIGNAL \outputport[1]~output_o\ : std_logic;
SIGNAL \outputport[2]~output_o\ : std_logic;
SIGNAL \outputport[3]~output_o\ : std_logic;
SIGNAL \outputport[4]~output_o\ : std_logic;
SIGNAL \outputport[5]~output_o\ : std_logic;
SIGNAL \outputport[6]~output_o\ : std_logic;
SIGNAL \enableport~input_o\ : std_logic;
SIGNAL \inputport[0]~input_o\ : std_logic;
SIGNAL \inputport[1]~input_o\ : std_logic;
SIGNAL \inputport[2]~input_o\ : std_logic;
SIGNAL \inputport[3]~input_o\ : std_logic;
SIGNAL \system_core|decout_n~6_combout\ : std_logic;
SIGNAL \system_core|decout_n~7_combout\ : std_logic;
SIGNAL \system_core|decout_n~9_combout\ : std_logic;
SIGNAL \system_core|decout_n~8_combout\ : std_logic;
SIGNAL \system_core|decout_n~10_combout\ : std_logic;
SIGNAL \system_core|decout_n~11_combout\ : std_logic;
SIGNAL \system_core|decout_n~12_combout\ : std_logic;
SIGNAL \system_core|decout_n[3]~2_combout\ : std_logic;
SIGNAL \system_core|decout_n[3]~17_combout\ : std_logic;
SIGNAL \system_core|decout_n~13_combout\ : std_logic;
SIGNAL \system_core|decout_n~14_combout\ : std_logic;
SIGNAL \system_core|decout_n~15_combout\ : std_logic;
SIGNAL \system_core|decout_n~16_combout\ : std_logic;
SIGNAL \system_core|decout_n[6]~5_combout\ : std_logic;
SIGNAL \system_core|decout_n[6]~18_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inputport <= inputport;
ww_enableport <= enableport;
outputport <= ww_outputport;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N23
\outputport[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~7_combout\,
	devoe => ww_devoe,
	o => \outputport[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\outputport[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~10_combout\,
	devoe => ww_devoe,
	o => \outputport[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\outputport[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~12_combout\,
	devoe => ww_devoe,
	o => \outputport[2]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\outputport[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[3]~17_combout\,
	devoe => ww_devoe,
	o => \outputport[3]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\outputport[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~14_combout\,
	devoe => ww_devoe,
	o => \outputport[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\outputport[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~16_combout\,
	devoe => ww_devoe,
	o => \outputport[5]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\outputport[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[6]~18_combout\,
	devoe => ww_devoe,
	o => \outputport[6]~output_o\);

-- Location: IOIBUF_X0_Y28_N15
\enableport~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enableport,
	o => \enableport~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\inputport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(0),
	o => \inputport[0]~input_o\);

-- Location: IOIBUF_X0_Y28_N22
\inputport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(1),
	o => \inputport[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\inputport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(2),
	o => \inputport[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\inputport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputport(3),
	o => \inputport[3]~input_o\);

-- Location: LCCOMB_X1_Y30_N24
\system_core|decout_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~6_combout\ = (\inputport[2]~input_o\ & (!\inputport[1]~input_o\ & (\inputport[0]~input_o\ $ (!\inputport[3]~input_o\)))) # (!\inputport[2]~input_o\ & (\inputport[0]~input_o\ & (\inputport[1]~input_o\ $ (!\inputport[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n~6_combout\);

-- Location: LCCOMB_X1_Y30_N10
\system_core|decout_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~7_combout\ = (\system_core|decout_n~6_combout\) # (!\enableport~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enableport~input_o\,
	datad => \system_core|decout_n~6_combout\,
	combout => \system_core|decout_n~7_combout\);

-- Location: LCCOMB_X1_Y30_N22
\system_core|decout_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~9_combout\ = (\inputport[2]~input_o\ & (!\inputport[3]~input_o\ & (\inputport[0]~input_o\ $ (\inputport[1]~input_o\)))) # (!\inputport[2]~input_o\ & (\inputport[0]~input_o\ & (\inputport[1]~input_o\ & \inputport[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n~9_combout\);

-- Location: LCCOMB_X1_Y30_N28
\system_core|decout_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~8_combout\ = (\inputport[2]~input_o\ & (\inputport[3]~input_o\ & ((\inputport[1]~input_o\) # (!\inputport[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n~8_combout\);

-- Location: LCCOMB_X1_Y30_N8
\system_core|decout_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~10_combout\ = (\system_core|decout_n~9_combout\) # ((\system_core|decout_n~8_combout\) # (!\enableport~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~9_combout\,
	datac => \enableport~input_o\,
	datad => \system_core|decout_n~8_combout\,
	combout => \system_core|decout_n~10_combout\);

-- Location: LCCOMB_X1_Y30_N18
\system_core|decout_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~11_combout\ = (!\inputport[0]~input_o\ & (\inputport[1]~input_o\ & (!\inputport[2]~input_o\ & !\inputport[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n~11_combout\);

-- Location: LCCOMB_X1_Y30_N20
\system_core|decout_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~12_combout\ = (\system_core|decout_n~11_combout\) # ((\system_core|decout_n~8_combout\) # (!\enableport~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|decout_n~11_combout\,
	datac => \enableport~input_o\,
	datad => \system_core|decout_n~8_combout\,
	combout => \system_core|decout_n~12_combout\);

-- Location: LCCOMB_X1_Y30_N6
\system_core|decout_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[3]~2_combout\ = (\inputport[1]~input_o\ & ((\inputport[0]~input_o\ & (\inputport[2]~input_o\)) # (!\inputport[0]~input_o\ & (!\inputport[2]~input_o\ & \inputport[3]~input_o\)))) # (!\inputport[1]~input_o\ & (!\inputport[3]~input_o\ & 
-- (\inputport[0]~input_o\ $ (\inputport[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n[3]~2_combout\);

-- Location: LCCOMB_X1_Y30_N16
\system_core|decout_n[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[3]~17_combout\ = (\system_core|decout_n[3]~2_combout\) # (!\enableport~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enableport~input_o\,
	datad => \system_core|decout_n[3]~2_combout\,
	combout => \system_core|decout_n[3]~17_combout\);

-- Location: LCCOMB_X1_Y30_N30
\system_core|decout_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~13_combout\ = (\inputport[1]~input_o\ & (\inputport[0]~input_o\ & ((!\inputport[3]~input_o\)))) # (!\inputport[1]~input_o\ & ((\inputport[2]~input_o\ & ((!\inputport[3]~input_o\))) # (!\inputport[2]~input_o\ & 
-- (\inputport[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n~13_combout\);

-- Location: LCCOMB_X1_Y30_N0
\system_core|decout_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~14_combout\ = (\system_core|decout_n~13_combout\) # (!\enableport~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~13_combout\,
	datac => \enableport~input_o\,
	combout => \system_core|decout_n~14_combout\);

-- Location: LCCOMB_X1_Y30_N2
\system_core|decout_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~15_combout\ = (\inputport[0]~input_o\ & (\inputport[3]~input_o\ $ (((\inputport[1]~input_o\) # (!\inputport[2]~input_o\))))) # (!\inputport[0]~input_o\ & (\inputport[1]~input_o\ & (!\inputport[2]~input_o\ & !\inputport[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n~15_combout\);

-- Location: LCCOMB_X1_Y30_N12
\system_core|decout_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~16_combout\ = (\system_core|decout_n~15_combout\) # (!\enableport~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enableport~input_o\,
	datad => \system_core|decout_n~15_combout\,
	combout => \system_core|decout_n~16_combout\);

-- Location: LCCOMB_X1_Y30_N26
\system_core|decout_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[6]~5_combout\ = (\inputport[0]~input_o\ & (!\inputport[3]~input_o\ & (\inputport[1]~input_o\ $ (!\inputport[2]~input_o\)))) # (!\inputport[0]~input_o\ & (!\inputport[1]~input_o\ & (\inputport[2]~input_o\ $ 
-- (!\inputport[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputport[0]~input_o\,
	datab => \inputport[1]~input_o\,
	datac => \inputport[2]~input_o\,
	datad => \inputport[3]~input_o\,
	combout => \system_core|decout_n[6]~5_combout\);

-- Location: LCCOMB_X1_Y30_N4
\system_core|decout_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[6]~18_combout\ = (\system_core|decout_n[6]~5_combout\) # (!\enableport~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n[6]~5_combout\,
	datac => \enableport~input_o\,
	combout => \system_core|decout_n[6]~18_combout\);

ww_outputport(0) <= \outputport[0]~output_o\;

ww_outputport(1) <= \outputport[1]~output_o\;

ww_outputport(2) <= \outputport[2]~output_o\;

ww_outputport(3) <= \outputport[3]~output_o\;

ww_outputport(4) <= \outputport[4]~output_o\;

ww_outputport(5) <= \outputport[5]~output_o\;

ww_outputport(6) <= \outputport[6]~output_o\;
END structure;


