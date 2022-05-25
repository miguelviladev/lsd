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

-- DATE "05/18/2022 20:41:04"

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

ENTITY 	down2statecounter2hz IS
    PORT (
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	ledr : OUT std_logic_vector(0 DOWNTO 0);
	key : IN std_logic_vector(1 DOWNTO 0);
	clock_50 : IN std_logic
	);
END down2statecounter2hz;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF down2statecounter2hz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulso2hz|saidasinal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \pulso2hz|s_contador[0]~25_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan0~4_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan1~0_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan0~3_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan0~5_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan0~1_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan1~3_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan0~0_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan0~2_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan0~6_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[0]~26\ : std_logic;
SIGNAL \pulso2hz|s_contador[1]~27_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[1]~28\ : std_logic;
SIGNAL \pulso2hz|s_contador[2]~29_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[2]~30\ : std_logic;
SIGNAL \pulso2hz|s_contador[3]~31_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[3]~32\ : std_logic;
SIGNAL \pulso2hz|s_contador[4]~33_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[4]~34\ : std_logic;
SIGNAL \pulso2hz|s_contador[5]~35_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[5]~36\ : std_logic;
SIGNAL \pulso2hz|s_contador[6]~37_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[6]~38\ : std_logic;
SIGNAL \pulso2hz|s_contador[7]~39_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[7]~40\ : std_logic;
SIGNAL \pulso2hz|s_contador[8]~41_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[8]~42\ : std_logic;
SIGNAL \pulso2hz|s_contador[9]~43_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[9]~44\ : std_logic;
SIGNAL \pulso2hz|s_contador[10]~45_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[10]~46\ : std_logic;
SIGNAL \pulso2hz|s_contador[11]~47_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[11]~48\ : std_logic;
SIGNAL \pulso2hz|s_contador[12]~49_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[12]~50\ : std_logic;
SIGNAL \pulso2hz|s_contador[13]~51_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[13]~52\ : std_logic;
SIGNAL \pulso2hz|s_contador[14]~53_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[14]~54\ : std_logic;
SIGNAL \pulso2hz|s_contador[15]~55_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[15]~56\ : std_logic;
SIGNAL \pulso2hz|s_contador[16]~57_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[16]~58\ : std_logic;
SIGNAL \pulso2hz|s_contador[17]~59_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[17]~60\ : std_logic;
SIGNAL \pulso2hz|s_contador[18]~61_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[18]~62\ : std_logic;
SIGNAL \pulso2hz|s_contador[19]~63_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[19]~64\ : std_logic;
SIGNAL \pulso2hz|s_contador[20]~65_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[20]~66\ : std_logic;
SIGNAL \pulso2hz|s_contador[21]~67_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[21]~68\ : std_logic;
SIGNAL \pulso2hz|s_contador[22]~69_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[22]~70\ : std_logic;
SIGNAL \pulso2hz|s_contador[23]~71_combout\ : std_logic;
SIGNAL \pulso2hz|s_contador[23]~72\ : std_logic;
SIGNAL \pulso2hz|s_contador[24]~73_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan1~1_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan1~2_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan1~4_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan1~5_combout\ : std_logic;
SIGNAL \pulso2hz|LessThan1~6_combout\ : std_logic;
SIGNAL \pulso2hz|saidasinal~q\ : std_logic;
SIGNAL \pulso2hz|saidasinal~clkctrl_outclk\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \s_key0~0_combout\ : std_logic;
SIGNAL \s_key0~q\ : std_logic;
SIGNAL \debouncerKEY0|s_dirtyIn~q\ : std_logic;
SIGNAL \debouncerKEY0|s_previousIn~feeder_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_previousIn~q\ : std_logic;
SIGNAL \debouncerKEY0|Add0~0_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~5\ : std_logic;
SIGNAL \debouncerKEY0|Add0~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~7\ : std_logic;
SIGNAL \debouncerKEY0|Add0~8_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~9\ : std_logic;
SIGNAL \debouncerKEY0|Add0~10_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~11\ : std_logic;
SIGNAL \debouncerKEY0|Add0~12_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~13\ : std_logic;
SIGNAL \debouncerKEY0|Add0~14_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~15\ : std_logic;
SIGNAL \debouncerKEY0|Add0~16_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~17\ : std_logic;
SIGNAL \debouncerKEY0|Add0~18_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~19\ : std_logic;
SIGNAL \debouncerKEY0|Add0~20_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~21\ : std_logic;
SIGNAL \debouncerKEY0|Add0~22_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~23\ : std_logic;
SIGNAL \debouncerKEY0|Add0~24_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~25\ : std_logic;
SIGNAL \debouncerKEY0|Add0~26_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~27\ : std_logic;
SIGNAL \debouncerKEY0|Add0~28_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~29\ : std_logic;
SIGNAL \debouncerKEY0|Add0~30_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~31\ : std_logic;
SIGNAL \debouncerKEY0|Add0~32_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~33\ : std_logic;
SIGNAL \debouncerKEY0|Add0~34_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~35\ : std_logic;
SIGNAL \debouncerKEY0|Add0~36_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[20]~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[20]~3_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~37\ : std_logic;
SIGNAL \debouncerKEY0|Add0~38_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~39\ : std_logic;
SIGNAL \debouncerKEY0|Add0~40_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~41\ : std_logic;
SIGNAL \debouncerKEY0|Add0~42_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncerKEY0|LessThan0~7_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~43\ : std_logic;
SIGNAL \debouncerKEY0|Add0~44_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt[20]~0_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~1\ : std_logic;
SIGNAL \debouncerKEY0|Add0~2_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \debouncerKEY0|Add0~3\ : std_logic;
SIGNAL \debouncerKEY0|Add0~4_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_pulsedOut~q\ : std_logic;
SIGNAL \decrementador4bits|s_contagem~1_combout\ : std_logic;
SIGNAL \decrementador4bits|s_contagem~2_combout\ : std_logic;
SIGNAL \decrementador4bits|s_contagem~0_combout\ : std_logic;
SIGNAL \decrementador4bits|s_contagem~3_combout\ : std_logic;
SIGNAL \decrementador4bits|s_contagem~4_combout\ : std_logic;
SIGNAL \desc7segmentos|saidabinaria~0_combout\ : std_logic;
SIGNAL \desc7segmentos|saidabinaria~1_combout\ : std_logic;
SIGNAL \desc7segmentos|saidabinaria~2_combout\ : std_logic;
SIGNAL \desc7segmentos|saidabinaria~3_combout\ : std_logic;
SIGNAL \desc7segmentos|saidabinaria~4_combout\ : std_logic;
SIGNAL \desc7segmentos|saidabinaria~5_combout\ : std_logic;
SIGNAL \desc7segmentos|saidabinaria~6_combout\ : std_logic;
SIGNAL \debouncerKEY0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \decrementador4bits|s_contagem\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulso2hz|s_contador\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

hex0 <= ww_hex0;
ledr <= ww_ledr;
ww_key <= key;
ww_clock_50 <= clock_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);

\pulso2hz|saidasinal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulso2hz|saidasinal~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desc7segmentos|saidabinaria~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desc7segmentos|saidabinaria~1_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desc7segmentos|saidabinaria~2_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desc7segmentos|saidabinaria~3_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desc7segmentos|saidabinaria~4_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desc7segmentos|saidabinaria~5_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \desc7segmentos|saidabinaria~6_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \debouncerKEY0|s_pulsedOut~q\,
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G4
\clock_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y33_N8
\pulso2hz|s_contador[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[0]~25_combout\ = \pulso2hz|s_contador\(0) $ (VCC)
-- \pulso2hz|s_contador[0]~26\ = CARRY(\pulso2hz|s_contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(0),
	datad => VCC,
	combout => \pulso2hz|s_contador[0]~25_combout\,
	cout => \pulso2hz|s_contador[0]~26\);

-- Location: LCCOMB_X4_Y32_N8
\pulso2hz|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan0~4_combout\ = (((!\pulso2hz|s_contador\(14)) # (!\pulso2hz|s_contador\(12))) # (!\pulso2hz|s_contador\(11))) # (!\pulso2hz|s_contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(13),
	datab => \pulso2hz|s_contador\(11),
	datac => \pulso2hz|s_contador\(12),
	datad => \pulso2hz|s_contador\(14),
	combout => \pulso2hz|LessThan0~4_combout\);

-- Location: LCCOMB_X5_Y32_N26
\pulso2hz|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan1~0_combout\ = (\pulso2hz|s_contador\(18) & (\pulso2hz|s_contador\(21) & (\pulso2hz|s_contador\(19) & \pulso2hz|s_contador\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(18),
	datab => \pulso2hz|s_contador\(21),
	datac => \pulso2hz|s_contador\(19),
	datad => \pulso2hz|s_contador\(20),
	combout => \pulso2hz|LessThan1~0_combout\);

-- Location: LCCOMB_X4_Y32_N12
\pulso2hz|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan0~3_combout\ = (((!\pulso2hz|s_contador\(17) & !\pulso2hz|s_contador\(16))) # (!\pulso2hz|LessThan1~0_combout\)) # (!\pulso2hz|s_contador\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(22),
	datab => \pulso2hz|s_contador\(17),
	datac => \pulso2hz|s_contador\(16),
	datad => \pulso2hz|LessThan1~0_combout\,
	combout => \pulso2hz|LessThan0~3_combout\);

-- Location: LCCOMB_X4_Y32_N30
\pulso2hz|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan0~5_combout\ = (\pulso2hz|LessThan0~3_combout\) # ((!\pulso2hz|s_contador\(15) & (!\pulso2hz|s_contador\(17) & \pulso2hz|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(15),
	datab => \pulso2hz|s_contador\(17),
	datac => \pulso2hz|LessThan0~4_combout\,
	datad => \pulso2hz|LessThan0~3_combout\,
	combout => \pulso2hz|LessThan0~5_combout\);

-- Location: LCCOMB_X5_Y33_N0
\pulso2hz|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan0~1_combout\ = (((!\pulso2hz|s_contador\(1)) # (!\pulso2hz|s_contador\(0))) # (!\pulso2hz|s_contador\(5))) # (!\pulso2hz|s_contador\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(2),
	datab => \pulso2hz|s_contador\(5),
	datac => \pulso2hz|s_contador\(0),
	datad => \pulso2hz|s_contador\(1),
	combout => \pulso2hz|LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y33_N4
\pulso2hz|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan1~3_combout\ = (!\pulso2hz|s_contador\(7) & (!\pulso2hz|s_contador\(8) & (!\pulso2hz|s_contador\(9) & !\pulso2hz|s_contador\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(7),
	datab => \pulso2hz|s_contador\(8),
	datac => \pulso2hz|s_contador\(9),
	datad => \pulso2hz|s_contador\(6),
	combout => \pulso2hz|LessThan1~3_combout\);

-- Location: LCCOMB_X5_Y33_N2
\pulso2hz|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan0~0_combout\ = (!\pulso2hz|s_contador\(17) & (!\pulso2hz|s_contador\(10) & (\pulso2hz|LessThan1~3_combout\ & !\pulso2hz|s_contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(17),
	datab => \pulso2hz|s_contador\(10),
	datac => \pulso2hz|LessThan1~3_combout\,
	datad => \pulso2hz|s_contador\(15),
	combout => \pulso2hz|LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y33_N6
\pulso2hz|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan0~2_combout\ = (\pulso2hz|LessThan0~0_combout\ & (((\pulso2hz|LessThan0~1_combout\) # (!\pulso2hz|s_contador\(3))) # (!\pulso2hz|s_contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(4),
	datab => \pulso2hz|s_contador\(3),
	datac => \pulso2hz|LessThan0~1_combout\,
	datad => \pulso2hz|LessThan0~0_combout\,
	combout => \pulso2hz|LessThan0~2_combout\);

-- Location: LCCOMB_X4_Y32_N0
\pulso2hz|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan0~6_combout\ = (\pulso2hz|s_contador\(24) & ((\pulso2hz|s_contador\(23)) # ((!\pulso2hz|LessThan0~5_combout\ & !\pulso2hz|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(24),
	datab => \pulso2hz|s_contador\(23),
	datac => \pulso2hz|LessThan0~5_combout\,
	datad => \pulso2hz|LessThan0~2_combout\,
	combout => \pulso2hz|LessThan0~6_combout\);

-- Location: FF_X5_Y33_N9
\pulso2hz|s_contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[0]~25_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(0));

-- Location: LCCOMB_X5_Y33_N10
\pulso2hz|s_contador[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[1]~27_combout\ = (\pulso2hz|s_contador\(1) & (!\pulso2hz|s_contador[0]~26\)) # (!\pulso2hz|s_contador\(1) & ((\pulso2hz|s_contador[0]~26\) # (GND)))
-- \pulso2hz|s_contador[1]~28\ = CARRY((!\pulso2hz|s_contador[0]~26\) # (!\pulso2hz|s_contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(1),
	datad => VCC,
	cin => \pulso2hz|s_contador[0]~26\,
	combout => \pulso2hz|s_contador[1]~27_combout\,
	cout => \pulso2hz|s_contador[1]~28\);

-- Location: FF_X5_Y33_N11
\pulso2hz|s_contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[1]~27_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(1));

-- Location: LCCOMB_X5_Y33_N12
\pulso2hz|s_contador[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[2]~29_combout\ = (\pulso2hz|s_contador\(2) & (\pulso2hz|s_contador[1]~28\ $ (GND))) # (!\pulso2hz|s_contador\(2) & (!\pulso2hz|s_contador[1]~28\ & VCC))
-- \pulso2hz|s_contador[2]~30\ = CARRY((\pulso2hz|s_contador\(2) & !\pulso2hz|s_contador[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(2),
	datad => VCC,
	cin => \pulso2hz|s_contador[1]~28\,
	combout => \pulso2hz|s_contador[2]~29_combout\,
	cout => \pulso2hz|s_contador[2]~30\);

-- Location: FF_X5_Y33_N13
\pulso2hz|s_contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[2]~29_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(2));

-- Location: LCCOMB_X5_Y33_N14
\pulso2hz|s_contador[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[3]~31_combout\ = (\pulso2hz|s_contador\(3) & (!\pulso2hz|s_contador[2]~30\)) # (!\pulso2hz|s_contador\(3) & ((\pulso2hz|s_contador[2]~30\) # (GND)))
-- \pulso2hz|s_contador[3]~32\ = CARRY((!\pulso2hz|s_contador[2]~30\) # (!\pulso2hz|s_contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(3),
	datad => VCC,
	cin => \pulso2hz|s_contador[2]~30\,
	combout => \pulso2hz|s_contador[3]~31_combout\,
	cout => \pulso2hz|s_contador[3]~32\);

-- Location: FF_X5_Y33_N15
\pulso2hz|s_contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[3]~31_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(3));

-- Location: LCCOMB_X5_Y33_N16
\pulso2hz|s_contador[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[4]~33_combout\ = (\pulso2hz|s_contador\(4) & (\pulso2hz|s_contador[3]~32\ $ (GND))) # (!\pulso2hz|s_contador\(4) & (!\pulso2hz|s_contador[3]~32\ & VCC))
-- \pulso2hz|s_contador[4]~34\ = CARRY((\pulso2hz|s_contador\(4) & !\pulso2hz|s_contador[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(4),
	datad => VCC,
	cin => \pulso2hz|s_contador[3]~32\,
	combout => \pulso2hz|s_contador[4]~33_combout\,
	cout => \pulso2hz|s_contador[4]~34\);

-- Location: FF_X5_Y33_N17
\pulso2hz|s_contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[4]~33_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(4));

-- Location: LCCOMB_X5_Y33_N18
\pulso2hz|s_contador[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[5]~35_combout\ = (\pulso2hz|s_contador\(5) & (!\pulso2hz|s_contador[4]~34\)) # (!\pulso2hz|s_contador\(5) & ((\pulso2hz|s_contador[4]~34\) # (GND)))
-- \pulso2hz|s_contador[5]~36\ = CARRY((!\pulso2hz|s_contador[4]~34\) # (!\pulso2hz|s_contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(5),
	datad => VCC,
	cin => \pulso2hz|s_contador[4]~34\,
	combout => \pulso2hz|s_contador[5]~35_combout\,
	cout => \pulso2hz|s_contador[5]~36\);

-- Location: FF_X5_Y33_N19
\pulso2hz|s_contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[5]~35_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(5));

-- Location: LCCOMB_X5_Y33_N20
\pulso2hz|s_contador[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[6]~37_combout\ = (\pulso2hz|s_contador\(6) & (\pulso2hz|s_contador[5]~36\ $ (GND))) # (!\pulso2hz|s_contador\(6) & (!\pulso2hz|s_contador[5]~36\ & VCC))
-- \pulso2hz|s_contador[6]~38\ = CARRY((\pulso2hz|s_contador\(6) & !\pulso2hz|s_contador[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(6),
	datad => VCC,
	cin => \pulso2hz|s_contador[5]~36\,
	combout => \pulso2hz|s_contador[6]~37_combout\,
	cout => \pulso2hz|s_contador[6]~38\);

-- Location: FF_X5_Y33_N21
\pulso2hz|s_contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[6]~37_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(6));

-- Location: LCCOMB_X5_Y33_N22
\pulso2hz|s_contador[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[7]~39_combout\ = (\pulso2hz|s_contador\(7) & (!\pulso2hz|s_contador[6]~38\)) # (!\pulso2hz|s_contador\(7) & ((\pulso2hz|s_contador[6]~38\) # (GND)))
-- \pulso2hz|s_contador[7]~40\ = CARRY((!\pulso2hz|s_contador[6]~38\) # (!\pulso2hz|s_contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(7),
	datad => VCC,
	cin => \pulso2hz|s_contador[6]~38\,
	combout => \pulso2hz|s_contador[7]~39_combout\,
	cout => \pulso2hz|s_contador[7]~40\);

-- Location: FF_X5_Y33_N23
\pulso2hz|s_contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[7]~39_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(7));

-- Location: LCCOMB_X5_Y33_N24
\pulso2hz|s_contador[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[8]~41_combout\ = (\pulso2hz|s_contador\(8) & (\pulso2hz|s_contador[7]~40\ $ (GND))) # (!\pulso2hz|s_contador\(8) & (!\pulso2hz|s_contador[7]~40\ & VCC))
-- \pulso2hz|s_contador[8]~42\ = CARRY((\pulso2hz|s_contador\(8) & !\pulso2hz|s_contador[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(8),
	datad => VCC,
	cin => \pulso2hz|s_contador[7]~40\,
	combout => \pulso2hz|s_contador[8]~41_combout\,
	cout => \pulso2hz|s_contador[8]~42\);

-- Location: FF_X5_Y33_N25
\pulso2hz|s_contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[8]~41_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(8));

-- Location: LCCOMB_X5_Y33_N26
\pulso2hz|s_contador[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[9]~43_combout\ = (\pulso2hz|s_contador\(9) & (!\pulso2hz|s_contador[8]~42\)) # (!\pulso2hz|s_contador\(9) & ((\pulso2hz|s_contador[8]~42\) # (GND)))
-- \pulso2hz|s_contador[9]~44\ = CARRY((!\pulso2hz|s_contador[8]~42\) # (!\pulso2hz|s_contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(9),
	datad => VCC,
	cin => \pulso2hz|s_contador[8]~42\,
	combout => \pulso2hz|s_contador[9]~43_combout\,
	cout => \pulso2hz|s_contador[9]~44\);

-- Location: FF_X5_Y33_N27
\pulso2hz|s_contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[9]~43_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(9));

-- Location: LCCOMB_X5_Y33_N28
\pulso2hz|s_contador[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[10]~45_combout\ = (\pulso2hz|s_contador\(10) & (\pulso2hz|s_contador[9]~44\ $ (GND))) # (!\pulso2hz|s_contador\(10) & (!\pulso2hz|s_contador[9]~44\ & VCC))
-- \pulso2hz|s_contador[10]~46\ = CARRY((\pulso2hz|s_contador\(10) & !\pulso2hz|s_contador[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(10),
	datad => VCC,
	cin => \pulso2hz|s_contador[9]~44\,
	combout => \pulso2hz|s_contador[10]~45_combout\,
	cout => \pulso2hz|s_contador[10]~46\);

-- Location: FF_X5_Y33_N29
\pulso2hz|s_contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[10]~45_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(10));

-- Location: LCCOMB_X5_Y33_N30
\pulso2hz|s_contador[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[11]~47_combout\ = (\pulso2hz|s_contador\(11) & (!\pulso2hz|s_contador[10]~46\)) # (!\pulso2hz|s_contador\(11) & ((\pulso2hz|s_contador[10]~46\) # (GND)))
-- \pulso2hz|s_contador[11]~48\ = CARRY((!\pulso2hz|s_contador[10]~46\) # (!\pulso2hz|s_contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(11),
	datad => VCC,
	cin => \pulso2hz|s_contador[10]~46\,
	combout => \pulso2hz|s_contador[11]~47_combout\,
	cout => \pulso2hz|s_contador[11]~48\);

-- Location: FF_X4_Y32_N15
\pulso2hz|s_contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \pulso2hz|s_contador[11]~47_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(11));

-- Location: LCCOMB_X5_Y32_N0
\pulso2hz|s_contador[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[12]~49_combout\ = (\pulso2hz|s_contador\(12) & (\pulso2hz|s_contador[11]~48\ $ (GND))) # (!\pulso2hz|s_contador\(12) & (!\pulso2hz|s_contador[11]~48\ & VCC))
-- \pulso2hz|s_contador[12]~50\ = CARRY((\pulso2hz|s_contador\(12) & !\pulso2hz|s_contador[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(12),
	datad => VCC,
	cin => \pulso2hz|s_contador[11]~48\,
	combout => \pulso2hz|s_contador[12]~49_combout\,
	cout => \pulso2hz|s_contador[12]~50\);

-- Location: FF_X5_Y32_N1
\pulso2hz|s_contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[12]~49_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(12));

-- Location: LCCOMB_X5_Y32_N2
\pulso2hz|s_contador[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[13]~51_combout\ = (\pulso2hz|s_contador\(13) & (!\pulso2hz|s_contador[12]~50\)) # (!\pulso2hz|s_contador\(13) & ((\pulso2hz|s_contador[12]~50\) # (GND)))
-- \pulso2hz|s_contador[13]~52\ = CARRY((!\pulso2hz|s_contador[12]~50\) # (!\pulso2hz|s_contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(13),
	datad => VCC,
	cin => \pulso2hz|s_contador[12]~50\,
	combout => \pulso2hz|s_contador[13]~51_combout\,
	cout => \pulso2hz|s_contador[13]~52\);

-- Location: FF_X5_Y32_N3
\pulso2hz|s_contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[13]~51_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(13));

-- Location: LCCOMB_X5_Y32_N4
\pulso2hz|s_contador[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[14]~53_combout\ = (\pulso2hz|s_contador\(14) & (\pulso2hz|s_contador[13]~52\ $ (GND))) # (!\pulso2hz|s_contador\(14) & (!\pulso2hz|s_contador[13]~52\ & VCC))
-- \pulso2hz|s_contador[14]~54\ = CARRY((\pulso2hz|s_contador\(14) & !\pulso2hz|s_contador[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(14),
	datad => VCC,
	cin => \pulso2hz|s_contador[13]~52\,
	combout => \pulso2hz|s_contador[14]~53_combout\,
	cout => \pulso2hz|s_contador[14]~54\);

-- Location: FF_X5_Y32_N5
\pulso2hz|s_contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[14]~53_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(14));

-- Location: LCCOMB_X5_Y32_N6
\pulso2hz|s_contador[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[15]~55_combout\ = (\pulso2hz|s_contador\(15) & (!\pulso2hz|s_contador[14]~54\)) # (!\pulso2hz|s_contador\(15) & ((\pulso2hz|s_contador[14]~54\) # (GND)))
-- \pulso2hz|s_contador[15]~56\ = CARRY((!\pulso2hz|s_contador[14]~54\) # (!\pulso2hz|s_contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(15),
	datad => VCC,
	cin => \pulso2hz|s_contador[14]~54\,
	combout => \pulso2hz|s_contador[15]~55_combout\,
	cout => \pulso2hz|s_contador[15]~56\);

-- Location: FF_X5_Y32_N7
\pulso2hz|s_contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[15]~55_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(15));

-- Location: LCCOMB_X5_Y32_N8
\pulso2hz|s_contador[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[16]~57_combout\ = (\pulso2hz|s_contador\(16) & (\pulso2hz|s_contador[15]~56\ $ (GND))) # (!\pulso2hz|s_contador\(16) & (!\pulso2hz|s_contador[15]~56\ & VCC))
-- \pulso2hz|s_contador[16]~58\ = CARRY((\pulso2hz|s_contador\(16) & !\pulso2hz|s_contador[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(16),
	datad => VCC,
	cin => \pulso2hz|s_contador[15]~56\,
	combout => \pulso2hz|s_contador[16]~57_combout\,
	cout => \pulso2hz|s_contador[16]~58\);

-- Location: FF_X5_Y32_N9
\pulso2hz|s_contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[16]~57_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(16));

-- Location: LCCOMB_X5_Y32_N10
\pulso2hz|s_contador[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[17]~59_combout\ = (\pulso2hz|s_contador\(17) & (!\pulso2hz|s_contador[16]~58\)) # (!\pulso2hz|s_contador\(17) & ((\pulso2hz|s_contador[16]~58\) # (GND)))
-- \pulso2hz|s_contador[17]~60\ = CARRY((!\pulso2hz|s_contador[16]~58\) # (!\pulso2hz|s_contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(17),
	datad => VCC,
	cin => \pulso2hz|s_contador[16]~58\,
	combout => \pulso2hz|s_contador[17]~59_combout\,
	cout => \pulso2hz|s_contador[17]~60\);

-- Location: FF_X5_Y32_N11
\pulso2hz|s_contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[17]~59_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(17));

-- Location: LCCOMB_X5_Y32_N12
\pulso2hz|s_contador[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[18]~61_combout\ = (\pulso2hz|s_contador\(18) & (\pulso2hz|s_contador[17]~60\ $ (GND))) # (!\pulso2hz|s_contador\(18) & (!\pulso2hz|s_contador[17]~60\ & VCC))
-- \pulso2hz|s_contador[18]~62\ = CARRY((\pulso2hz|s_contador\(18) & !\pulso2hz|s_contador[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(18),
	datad => VCC,
	cin => \pulso2hz|s_contador[17]~60\,
	combout => \pulso2hz|s_contador[18]~61_combout\,
	cout => \pulso2hz|s_contador[18]~62\);

-- Location: FF_X5_Y32_N13
\pulso2hz|s_contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[18]~61_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(18));

-- Location: LCCOMB_X5_Y32_N14
\pulso2hz|s_contador[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[19]~63_combout\ = (\pulso2hz|s_contador\(19) & (!\pulso2hz|s_contador[18]~62\)) # (!\pulso2hz|s_contador\(19) & ((\pulso2hz|s_contador[18]~62\) # (GND)))
-- \pulso2hz|s_contador[19]~64\ = CARRY((!\pulso2hz|s_contador[18]~62\) # (!\pulso2hz|s_contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(19),
	datad => VCC,
	cin => \pulso2hz|s_contador[18]~62\,
	combout => \pulso2hz|s_contador[19]~63_combout\,
	cout => \pulso2hz|s_contador[19]~64\);

-- Location: FF_X5_Y32_N15
\pulso2hz|s_contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[19]~63_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(19));

-- Location: LCCOMB_X5_Y32_N16
\pulso2hz|s_contador[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[20]~65_combout\ = (\pulso2hz|s_contador\(20) & (\pulso2hz|s_contador[19]~64\ $ (GND))) # (!\pulso2hz|s_contador\(20) & (!\pulso2hz|s_contador[19]~64\ & VCC))
-- \pulso2hz|s_contador[20]~66\ = CARRY((\pulso2hz|s_contador\(20) & !\pulso2hz|s_contador[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(20),
	datad => VCC,
	cin => \pulso2hz|s_contador[19]~64\,
	combout => \pulso2hz|s_contador[20]~65_combout\,
	cout => \pulso2hz|s_contador[20]~66\);

-- Location: FF_X5_Y32_N17
\pulso2hz|s_contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[20]~65_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(20));

-- Location: LCCOMB_X5_Y32_N18
\pulso2hz|s_contador[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[21]~67_combout\ = (\pulso2hz|s_contador\(21) & (!\pulso2hz|s_contador[20]~66\)) # (!\pulso2hz|s_contador\(21) & ((\pulso2hz|s_contador[20]~66\) # (GND)))
-- \pulso2hz|s_contador[21]~68\ = CARRY((!\pulso2hz|s_contador[20]~66\) # (!\pulso2hz|s_contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(21),
	datad => VCC,
	cin => \pulso2hz|s_contador[20]~66\,
	combout => \pulso2hz|s_contador[21]~67_combout\,
	cout => \pulso2hz|s_contador[21]~68\);

-- Location: FF_X5_Y32_N19
\pulso2hz|s_contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[21]~67_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(21));

-- Location: LCCOMB_X5_Y32_N20
\pulso2hz|s_contador[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[22]~69_combout\ = (\pulso2hz|s_contador\(22) & (\pulso2hz|s_contador[21]~68\ $ (GND))) # (!\pulso2hz|s_contador\(22) & (!\pulso2hz|s_contador[21]~68\ & VCC))
-- \pulso2hz|s_contador[22]~70\ = CARRY((\pulso2hz|s_contador\(22) & !\pulso2hz|s_contador[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulso2hz|s_contador\(22),
	datad => VCC,
	cin => \pulso2hz|s_contador[21]~68\,
	combout => \pulso2hz|s_contador[22]~69_combout\,
	cout => \pulso2hz|s_contador[22]~70\);

-- Location: FF_X5_Y32_N21
\pulso2hz|s_contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[22]~69_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(22));

-- Location: LCCOMB_X5_Y32_N22
\pulso2hz|s_contador[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[23]~71_combout\ = (\pulso2hz|s_contador\(23) & (!\pulso2hz|s_contador[22]~70\)) # (!\pulso2hz|s_contador\(23) & ((\pulso2hz|s_contador[22]~70\) # (GND)))
-- \pulso2hz|s_contador[23]~72\ = CARRY((!\pulso2hz|s_contador[22]~70\) # (!\pulso2hz|s_contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(23),
	datad => VCC,
	cin => \pulso2hz|s_contador[22]~70\,
	combout => \pulso2hz|s_contador[23]~71_combout\,
	cout => \pulso2hz|s_contador[23]~72\);

-- Location: FF_X5_Y32_N23
\pulso2hz|s_contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[23]~71_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(23));

-- Location: LCCOMB_X5_Y32_N24
\pulso2hz|s_contador[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|s_contador[24]~73_combout\ = \pulso2hz|s_contador[23]~72\ $ (!\pulso2hz|s_contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulso2hz|s_contador\(24),
	cin => \pulso2hz|s_contador[23]~72\,
	combout => \pulso2hz|s_contador[24]~73_combout\);

-- Location: FF_X5_Y32_N25
\pulso2hz|s_contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|s_contador[24]~73_combout\,
	sclr => \pulso2hz|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|s_contador\(24));

-- Location: LCCOMB_X4_Y32_N26
\pulso2hz|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan1~1_combout\ = (((!\pulso2hz|s_contador\(15) & !\pulso2hz|s_contador\(16))) # (!\pulso2hz|LessThan1~0_combout\)) # (!\pulso2hz|s_contador\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(15),
	datab => \pulso2hz|s_contador\(16),
	datac => \pulso2hz|s_contador\(17),
	datad => \pulso2hz|LessThan1~0_combout\,
	combout => \pulso2hz|LessThan1~1_combout\);

-- Location: LCCOMB_X4_Y32_N22
\pulso2hz|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan1~2_combout\ = (((!\pulso2hz|s_contador\(10)) # (!\pulso2hz|s_contador\(12))) # (!\pulso2hz|s_contador\(11))) # (!\pulso2hz|s_contador\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(13),
	datab => \pulso2hz|s_contador\(11),
	datac => \pulso2hz|s_contador\(12),
	datad => \pulso2hz|s_contador\(10),
	combout => \pulso2hz|LessThan1~2_combout\);

-- Location: LCCOMB_X4_Y32_N10
\pulso2hz|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan1~4_combout\ = (\pulso2hz|LessThan1~2_combout\) # ((!\pulso2hz|s_contador\(5) & \pulso2hz|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|LessThan1~2_combout\,
	datac => \pulso2hz|s_contador\(5),
	datad => \pulso2hz|LessThan1~3_combout\,
	combout => \pulso2hz|LessThan1~4_combout\);

-- Location: LCCOMB_X4_Y32_N18
\pulso2hz|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan1~5_combout\ = (\pulso2hz|LessThan1~1_combout\) # ((!\pulso2hz|s_contador\(14) & (!\pulso2hz|s_contador\(16) & \pulso2hz|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(14),
	datab => \pulso2hz|s_contador\(16),
	datac => \pulso2hz|LessThan1~1_combout\,
	datad => \pulso2hz|LessThan1~4_combout\,
	combout => \pulso2hz|LessThan1~5_combout\);

-- Location: LCCOMB_X4_Y32_N24
\pulso2hz|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulso2hz|LessThan1~6_combout\ = (\pulso2hz|s_contador\(24)) # ((\pulso2hz|s_contador\(23) & ((\pulso2hz|s_contador\(22)) # (!\pulso2hz|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulso2hz|s_contador\(24),
	datab => \pulso2hz|s_contador\(23),
	datac => \pulso2hz|s_contador\(22),
	datad => \pulso2hz|LessThan1~5_combout\,
	combout => \pulso2hz|LessThan1~6_combout\);

-- Location: FF_X4_Y32_N25
\pulso2hz|saidasinal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \pulso2hz|LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulso2hz|saidasinal~q\);

-- Location: CLKCTRL_G0
\pulso2hz|saidasinal~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulso2hz|saidasinal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulso2hz|saidasinal~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y40_N8
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LCCOMB_X108_Y69_N0
\s_key0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_key0~0_combout\ = !\key[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[0]~input_o\,
	combout => \s_key0~0_combout\);

-- Location: FF_X108_Y69_N1
s_key0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \s_key0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_key0~q\);

-- Location: FF_X108_Y69_N13
\debouncerKEY0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \s_key0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_dirtyIn~q\);

-- Location: LCCOMB_X108_Y69_N4
\debouncerKEY0|s_previousIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_previousIn~feeder_combout\ = \debouncerKEY0|s_dirtyIn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debouncerKEY0|s_dirtyIn~q\,
	combout => \debouncerKEY0|s_previousIn~feeder_combout\);

-- Location: FF_X108_Y69_N5
\debouncerKEY0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_previousIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_previousIn~q\);

-- Location: LCCOMB_X106_Y69_N10
\debouncerKEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~0_combout\ = \debouncerKEY0|s_debounceCnt\(0) $ (VCC)
-- \debouncerKEY0|Add0~1\ = CARRY(\debouncerKEY0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(0),
	datad => VCC,
	combout => \debouncerKEY0|Add0~0_combout\,
	cout => \debouncerKEY0|Add0~1\);

-- Location: LCCOMB_X106_Y69_N14
\debouncerKEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~4_combout\ = (\debouncerKEY0|s_debounceCnt\(2) & ((GND) # (!\debouncerKEY0|Add0~3\))) # (!\debouncerKEY0|s_debounceCnt\(2) & (\debouncerKEY0|Add0~3\ $ (GND)))
-- \debouncerKEY0|Add0~5\ = CARRY((\debouncerKEY0|s_debounceCnt\(2)) # (!\debouncerKEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(2),
	datad => VCC,
	cin => \debouncerKEY0|Add0~3\,
	combout => \debouncerKEY0|Add0~4_combout\,
	cout => \debouncerKEY0|Add0~5\);

-- Location: LCCOMB_X106_Y69_N16
\debouncerKEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~6_combout\ = (\debouncerKEY0|s_debounceCnt\(3) & (\debouncerKEY0|Add0~5\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(3) & (!\debouncerKEY0|Add0~5\))
-- \debouncerKEY0|Add0~7\ = CARRY((!\debouncerKEY0|s_debounceCnt\(3) & !\debouncerKEY0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(3),
	datad => VCC,
	cin => \debouncerKEY0|Add0~5\,
	combout => \debouncerKEY0|Add0~6_combout\,
	cout => \debouncerKEY0|Add0~7\);

-- Location: LCCOMB_X105_Y69_N16
\debouncerKEY0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~21_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|Add0~6_combout\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|Add0~6_combout\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~21_combout\);

-- Location: FF_X105_Y69_N17
\debouncerKEY0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~21_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(3));

-- Location: LCCOMB_X106_Y69_N18
\debouncerKEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~8_combout\ = (\debouncerKEY0|s_debounceCnt\(4) & ((GND) # (!\debouncerKEY0|Add0~7\))) # (!\debouncerKEY0|s_debounceCnt\(4) & (\debouncerKEY0|Add0~7\ $ (GND)))
-- \debouncerKEY0|Add0~9\ = CARRY((\debouncerKEY0|s_debounceCnt\(4)) # (!\debouncerKEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(4),
	datad => VCC,
	cin => \debouncerKEY0|Add0~7\,
	combout => \debouncerKEY0|Add0~8_combout\,
	cout => \debouncerKEY0|Add0~9\);

-- Location: LCCOMB_X105_Y69_N14
\debouncerKEY0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~22_combout\ = (\debouncerKEY0|Add0~8_combout\ & (\debouncerKEY0|s_previousIn~q\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|Add0~8_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~22_combout\);

-- Location: FF_X105_Y69_N15
\debouncerKEY0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~22_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(4));

-- Location: LCCOMB_X106_Y69_N20
\debouncerKEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~10_combout\ = (\debouncerKEY0|s_debounceCnt\(5) & (\debouncerKEY0|Add0~9\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(5) & (!\debouncerKEY0|Add0~9\))
-- \debouncerKEY0|Add0~11\ = CARRY((!\debouncerKEY0|s_debounceCnt\(5) & !\debouncerKEY0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(5),
	datad => VCC,
	cin => \debouncerKEY0|Add0~9\,
	combout => \debouncerKEY0|Add0~10_combout\,
	cout => \debouncerKEY0|Add0~11\);

-- Location: LCCOMB_X107_Y69_N0
\debouncerKEY0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~27_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & \debouncerKEY0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	datad => \debouncerKEY0|Add0~10_combout\,
	combout => \debouncerKEY0|s_debounceCnt~27_combout\);

-- Location: FF_X107_Y69_N1
\debouncerKEY0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~27_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(5));

-- Location: LCCOMB_X106_Y69_N22
\debouncerKEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~12_combout\ = (\debouncerKEY0|s_debounceCnt\(6) & ((GND) # (!\debouncerKEY0|Add0~11\))) # (!\debouncerKEY0|s_debounceCnt\(6) & (\debouncerKEY0|Add0~11\ $ (GND)))
-- \debouncerKEY0|Add0~13\ = CARRY((\debouncerKEY0|s_debounceCnt\(6)) # (!\debouncerKEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(6),
	datad => VCC,
	cin => \debouncerKEY0|Add0~11\,
	combout => \debouncerKEY0|Add0~12_combout\,
	cout => \debouncerKEY0|Add0~13\);

-- Location: LCCOMB_X105_Y69_N28
\debouncerKEY0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~1_combout\ = (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debouncerKEY0|Add0~12_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|Add0~12_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~1_combout\);

-- Location: FF_X105_Y69_N29
\debouncerKEY0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~1_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(6));

-- Location: LCCOMB_X106_Y69_N24
\debouncerKEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~14_combout\ = (\debouncerKEY0|s_debounceCnt\(7) & (\debouncerKEY0|Add0~13\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(7) & (!\debouncerKEY0|Add0~13\))
-- \debouncerKEY0|Add0~15\ = CARRY((!\debouncerKEY0|s_debounceCnt\(7) & !\debouncerKEY0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(7),
	datad => VCC,
	cin => \debouncerKEY0|Add0~13\,
	combout => \debouncerKEY0|Add0~14_combout\,
	cout => \debouncerKEY0|Add0~15\);

-- Location: LCCOMB_X108_Y69_N8
\debouncerKEY0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~11_combout\ = (\debouncerKEY0|Add0~14_combout\ & (\debouncerKEY0|s_previousIn~q\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|Add0~14_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~11_combout\);

-- Location: FF_X108_Y69_N9
\debouncerKEY0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~11_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(7));

-- Location: LCCOMB_X106_Y69_N26
\debouncerKEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~16_combout\ = (\debouncerKEY0|s_debounceCnt\(8) & ((GND) # (!\debouncerKEY0|Add0~15\))) # (!\debouncerKEY0|s_debounceCnt\(8) & (\debouncerKEY0|Add0~15\ $ (GND)))
-- \debouncerKEY0|Add0~17\ = CARRY((\debouncerKEY0|s_debounceCnt\(8)) # (!\debouncerKEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(8),
	datad => VCC,
	cin => \debouncerKEY0|Add0~15\,
	combout => \debouncerKEY0|Add0~16_combout\,
	cout => \debouncerKEY0|Add0~17\);

-- Location: LCCOMB_X108_Y69_N26
\debouncerKEY0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~12_combout\ = (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debouncerKEY0|Add0~16_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~16_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~12_combout\);

-- Location: FF_X108_Y69_N27
\debouncerKEY0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~12_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(8));

-- Location: LCCOMB_X106_Y69_N28
\debouncerKEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~18_combout\ = (\debouncerKEY0|s_debounceCnt\(9) & (\debouncerKEY0|Add0~17\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(9) & (!\debouncerKEY0|Add0~17\))
-- \debouncerKEY0|Add0~19\ = CARRY((!\debouncerKEY0|s_debounceCnt\(9) & !\debouncerKEY0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(9),
	datad => VCC,
	cin => \debouncerKEY0|Add0~17\,
	combout => \debouncerKEY0|Add0~18_combout\,
	cout => \debouncerKEY0|Add0~19\);

-- Location: LCCOMB_X108_Y69_N28
\debouncerKEY0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~13_combout\ = (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debouncerKEY0|Add0~18_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|Add0~18_combout\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~13_combout\);

-- Location: FF_X108_Y69_N29
\debouncerKEY0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~13_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(9));

-- Location: LCCOMB_X106_Y69_N30
\debouncerKEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~20_combout\ = (\debouncerKEY0|s_debounceCnt\(10) & ((GND) # (!\debouncerKEY0|Add0~19\))) # (!\debouncerKEY0|s_debounceCnt\(10) & (\debouncerKEY0|Add0~19\ $ (GND)))
-- \debouncerKEY0|Add0~21\ = CARRY((\debouncerKEY0|s_debounceCnt\(10)) # (!\debouncerKEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(10),
	datad => VCC,
	cin => \debouncerKEY0|Add0~19\,
	combout => \debouncerKEY0|Add0~20_combout\,
	cout => \debouncerKEY0|Add0~21\);

-- Location: LCCOMB_X108_Y69_N18
\debouncerKEY0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~14_combout\ = (\debouncerKEY0|Add0~20_combout\ & (\debouncerKEY0|s_previousIn~q\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~20_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~14_combout\);

-- Location: FF_X108_Y69_N19
\debouncerKEY0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~14_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(10));

-- Location: LCCOMB_X108_Y69_N20
\debouncerKEY0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~2_combout\ = (!\debouncerKEY0|s_debounceCnt\(8) & (!\debouncerKEY0|s_debounceCnt\(9) & (!\debouncerKEY0|s_debounceCnt\(7) & !\debouncerKEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(8),
	datab => \debouncerKEY0|s_debounceCnt\(9),
	datac => \debouncerKEY0|s_debounceCnt\(7),
	datad => \debouncerKEY0|s_debounceCnt\(10),
	combout => \debouncerKEY0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X106_Y68_N0
\debouncerKEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~22_combout\ = (\debouncerKEY0|s_debounceCnt\(11) & (\debouncerKEY0|Add0~21\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(11) & (!\debouncerKEY0|Add0~21\))
-- \debouncerKEY0|Add0~23\ = CARRY((!\debouncerKEY0|s_debounceCnt\(11) & !\debouncerKEY0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(11),
	datad => VCC,
	cin => \debouncerKEY0|Add0~21\,
	combout => \debouncerKEY0|Add0~22_combout\,
	cout => \debouncerKEY0|Add0~23\);

-- Location: LCCOMB_X107_Y69_N10
\debouncerKEY0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~15_combout\ = (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debouncerKEY0|Add0~22_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	datad => \debouncerKEY0|Add0~22_combout\,
	combout => \debouncerKEY0|s_debounceCnt~15_combout\);

-- Location: FF_X107_Y69_N11
\debouncerKEY0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~15_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(11));

-- Location: LCCOMB_X106_Y68_N2
\debouncerKEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~24_combout\ = (\debouncerKEY0|s_debounceCnt\(12) & ((GND) # (!\debouncerKEY0|Add0~23\))) # (!\debouncerKEY0|s_debounceCnt\(12) & (\debouncerKEY0|Add0~23\ $ (GND)))
-- \debouncerKEY0|Add0~25\ = CARRY((\debouncerKEY0|s_debounceCnt\(12)) # (!\debouncerKEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(12),
	datad => VCC,
	cin => \debouncerKEY0|Add0~23\,
	combout => \debouncerKEY0|Add0~24_combout\,
	cout => \debouncerKEY0|Add0~25\);

-- Location: LCCOMB_X107_Y69_N4
\debouncerKEY0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~7_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|Add0~24_combout\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|Add0~24_combout\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~7_combout\);

-- Location: FF_X107_Y69_N5
\debouncerKEY0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~7_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(12));

-- Location: LCCOMB_X106_Y68_N4
\debouncerKEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~26_combout\ = (\debouncerKEY0|s_debounceCnt\(13) & (\debouncerKEY0|Add0~25\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(13) & (!\debouncerKEY0|Add0~25\))
-- \debouncerKEY0|Add0~27\ = CARRY((!\debouncerKEY0|s_debounceCnt\(13) & !\debouncerKEY0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(13),
	datad => VCC,
	cin => \debouncerKEY0|Add0~25\,
	combout => \debouncerKEY0|Add0~26_combout\,
	cout => \debouncerKEY0|Add0~27\);

-- Location: LCCOMB_X107_Y69_N6
\debouncerKEY0|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~8_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & \debouncerKEY0|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	datad => \debouncerKEY0|Add0~26_combout\,
	combout => \debouncerKEY0|s_debounceCnt~8_combout\);

-- Location: FF_X107_Y69_N7
\debouncerKEY0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~8_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(13));

-- Location: LCCOMB_X106_Y68_N6
\debouncerKEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~28_combout\ = (\debouncerKEY0|s_debounceCnt\(14) & ((GND) # (!\debouncerKEY0|Add0~27\))) # (!\debouncerKEY0|s_debounceCnt\(14) & (\debouncerKEY0|Add0~27\ $ (GND)))
-- \debouncerKEY0|Add0~29\ = CARRY((\debouncerKEY0|s_debounceCnt\(14)) # (!\debouncerKEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(14),
	datad => VCC,
	cin => \debouncerKEY0|Add0~27\,
	combout => \debouncerKEY0|Add0~28_combout\,
	cout => \debouncerKEY0|Add0~29\);

-- Location: LCCOMB_X107_Y69_N16
\debouncerKEY0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~16_combout\ = (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debouncerKEY0|Add0~28_combout\) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	datad => \debouncerKEY0|Add0~28_combout\,
	combout => \debouncerKEY0|s_debounceCnt~16_combout\);

-- Location: FF_X107_Y69_N17
\debouncerKEY0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~16_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(14));

-- Location: LCCOMB_X106_Y68_N8
\debouncerKEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~30_combout\ = (\debouncerKEY0|s_debounceCnt\(15) & (\debouncerKEY0|Add0~29\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(15) & (!\debouncerKEY0|Add0~29\))
-- \debouncerKEY0|Add0~31\ = CARRY((!\debouncerKEY0|s_debounceCnt\(15) & !\debouncerKEY0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(15),
	datad => VCC,
	cin => \debouncerKEY0|Add0~29\,
	combout => \debouncerKEY0|Add0~30_combout\,
	cout => \debouncerKEY0|Add0~31\);

-- Location: LCCOMB_X107_Y69_N8
\debouncerKEY0|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~4_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & \debouncerKEY0|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	datad => \debouncerKEY0|Add0~30_combout\,
	combout => \debouncerKEY0|s_debounceCnt~4_combout\);

-- Location: FF_X107_Y69_N9
\debouncerKEY0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~4_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(15));

-- Location: LCCOMB_X106_Y68_N10
\debouncerKEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~32_combout\ = (\debouncerKEY0|s_debounceCnt\(16) & ((GND) # (!\debouncerKEY0|Add0~31\))) # (!\debouncerKEY0|s_debounceCnt\(16) & (\debouncerKEY0|Add0~31\ $ (GND)))
-- \debouncerKEY0|Add0~33\ = CARRY((\debouncerKEY0|s_debounceCnt\(16)) # (!\debouncerKEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(16),
	datad => VCC,
	cin => \debouncerKEY0|Add0~31\,
	combout => \debouncerKEY0|Add0~32_combout\,
	cout => \debouncerKEY0|Add0~33\);

-- Location: LCCOMB_X107_Y69_N18
\debouncerKEY0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~5_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & \debouncerKEY0|Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	datad => \debouncerKEY0|Add0~32_combout\,
	combout => \debouncerKEY0|s_debounceCnt~5_combout\);

-- Location: FF_X107_Y69_N19
\debouncerKEY0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~5_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(16));

-- Location: LCCOMB_X106_Y68_N12
\debouncerKEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~34_combout\ = (\debouncerKEY0|s_debounceCnt\(17) & (\debouncerKEY0|Add0~33\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(17) & (!\debouncerKEY0|Add0~33\))
-- \debouncerKEY0|Add0~35\ = CARRY((!\debouncerKEY0|s_debounceCnt\(17) & !\debouncerKEY0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(17),
	datad => VCC,
	cin => \debouncerKEY0|Add0~33\,
	combout => \debouncerKEY0|Add0~34_combout\,
	cout => \debouncerKEY0|Add0~35\);

-- Location: LCCOMB_X107_Y69_N24
\debouncerKEY0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~6_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|Add0~34_combout\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|Add0~34_combout\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~6_combout\);

-- Location: FF_X107_Y69_N25
\debouncerKEY0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~6_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(17));

-- Location: LCCOMB_X106_Y68_N14
\debouncerKEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~36_combout\ = (\debouncerKEY0|s_debounceCnt\(18) & ((GND) # (!\debouncerKEY0|Add0~35\))) # (!\debouncerKEY0|s_debounceCnt\(18) & (\debouncerKEY0|Add0~35\ $ (GND)))
-- \debouncerKEY0|Add0~37\ = CARRY((\debouncerKEY0|s_debounceCnt\(18)) # (!\debouncerKEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(18),
	datad => VCC,
	cin => \debouncerKEY0|Add0~35\,
	combout => \debouncerKEY0|Add0~36_combout\,
	cout => \debouncerKEY0|Add0~37\);

-- Location: LCCOMB_X107_Y69_N14
\debouncerKEY0|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[18]~17_combout\ = (\debouncerKEY0|s_debounceCnt[20]~3_combout\ & (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debouncerKEY0|Add0~36_combout\) # (!\debouncerKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	datad => \debouncerKEY0|Add0~36_combout\,
	combout => \debouncerKEY0|s_debounceCnt[18]~17_combout\);

-- Location: FF_X107_Y69_N15
\debouncerKEY0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(18));

-- Location: LCCOMB_X107_Y69_N20
\debouncerKEY0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~3_combout\ = (!\debouncerKEY0|s_debounceCnt\(19) & (!\debouncerKEY0|s_debounceCnt\(14) & (!\debouncerKEY0|s_debounceCnt\(18) & !\debouncerKEY0|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(19),
	datab => \debouncerKEY0|s_debounceCnt\(14),
	datac => \debouncerKEY0|s_debounceCnt\(18),
	datad => \debouncerKEY0|s_debounceCnt\(11),
	combout => \debouncerKEY0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X107_Y69_N26
\debouncerKEY0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~0_combout\ = (!\debouncerKEY0|s_debounceCnt\(6) & (!\debouncerKEY0|s_debounceCnt\(17) & (!\debouncerKEY0|s_debounceCnt\(15) & !\debouncerKEY0|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(6),
	datab => \debouncerKEY0|s_debounceCnt\(17),
	datac => \debouncerKEY0|s_debounceCnt\(15),
	datad => \debouncerKEY0|s_debounceCnt\(16),
	combout => \debouncerKEY0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X107_Y69_N12
\debouncerKEY0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~1_combout\ = (!\debouncerKEY0|s_debounceCnt\(13) & (!\debouncerKEY0|s_debounceCnt\(12) & (!\debouncerKEY0|s_debounceCnt\(21) & !\debouncerKEY0|s_debounceCnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(13),
	datab => \debouncerKEY0|s_debounceCnt\(12),
	datac => \debouncerKEY0|s_debounceCnt\(21),
	datad => \debouncerKEY0|s_debounceCnt\(20),
	combout => \debouncerKEY0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X107_Y69_N2
\debouncerKEY0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~4_combout\ = (\debouncerKEY0|s_pulsedOut~2_combout\ & (\debouncerKEY0|s_pulsedOut~3_combout\ & (\debouncerKEY0|s_pulsedOut~0_combout\ & \debouncerKEY0|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~2_combout\,
	datab => \debouncerKEY0|s_pulsedOut~3_combout\,
	datac => \debouncerKEY0|s_pulsedOut~0_combout\,
	datad => \debouncerKEY0|s_pulsedOut~1_combout\,
	combout => \debouncerKEY0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X107_Y69_N28
\debouncerKEY0|s_debounceCnt[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[20]~2_combout\ = (\debouncerKEY0|s_debounceCnt\(5)) # ((\debouncerKEY0|s_debounceCnt\(0)) # ((!\debouncerKEY0|s_pulsedOut~4_combout\) # (!\debouncerKEY0|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(5),
	datab => \debouncerKEY0|s_debounceCnt\(0),
	datac => \debouncerKEY0|s_pulsedOut~5_combout\,
	datad => \debouncerKEY0|s_pulsedOut~4_combout\,
	combout => \debouncerKEY0|s_debounceCnt[20]~2_combout\);

-- Location: LCCOMB_X107_Y69_N30
\debouncerKEY0|s_debounceCnt[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[20]~3_combout\ = (((\debouncerKEY0|s_debounceCnt\(22)) # (\debouncerKEY0|s_debounceCnt[20]~2_combout\)) # (!\debouncerKEY0|s_dirtyIn~q\)) # (!\debouncerKEY0|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|s_dirtyIn~q\,
	datac => \debouncerKEY0|s_debounceCnt\(22),
	datad => \debouncerKEY0|s_debounceCnt[20]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt[20]~3_combout\);

-- Location: LCCOMB_X106_Y68_N16
\debouncerKEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~38_combout\ = (\debouncerKEY0|s_debounceCnt\(19) & (\debouncerKEY0|Add0~37\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(19) & (!\debouncerKEY0|Add0~37\))
-- \debouncerKEY0|Add0~39\ = CARRY((!\debouncerKEY0|s_debounceCnt\(19) & !\debouncerKEY0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(19),
	datad => VCC,
	cin => \debouncerKEY0|Add0~37\,
	combout => \debouncerKEY0|Add0~38_combout\,
	cout => \debouncerKEY0|Add0~39\);

-- Location: LCCOMB_X108_Y69_N30
\debouncerKEY0|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[19]~18_combout\ = (\debouncerKEY0|s_debounceCnt[20]~3_combout\ & (\debouncerKEY0|s_debounceCnt[20]~0_combout\ & ((\debouncerKEY0|Add0~38_combout\) # (!\debouncerKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	datac => \debouncerKEY0|Add0~38_combout\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt[19]~18_combout\);

-- Location: FF_X108_Y69_N31
\debouncerKEY0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(19));

-- Location: LCCOMB_X106_Y68_N18
\debouncerKEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~40_combout\ = (\debouncerKEY0|s_debounceCnt\(20) & ((GND) # (!\debouncerKEY0|Add0~39\))) # (!\debouncerKEY0|s_debounceCnt\(20) & (\debouncerKEY0|Add0~39\ $ (GND)))
-- \debouncerKEY0|Add0~41\ = CARRY((\debouncerKEY0|s_debounceCnt\(20)) # (!\debouncerKEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(20),
	datad => VCC,
	cin => \debouncerKEY0|Add0~39\,
	combout => \debouncerKEY0|Add0~40_combout\,
	cout => \debouncerKEY0|Add0~41\);

-- Location: LCCOMB_X106_Y68_N28
\debouncerKEY0|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[20]~9_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|Add0~40_combout\ & (\debouncerKEY0|s_debounceCnt[20]~3_combout\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|Add0~40_combout\,
	datac => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt[20]~9_combout\);

-- Location: FF_X106_Y68_N29
\debouncerKEY0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(20));

-- Location: LCCOMB_X106_Y68_N20
\debouncerKEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~42_combout\ = (\debouncerKEY0|s_debounceCnt\(21) & (\debouncerKEY0|Add0~41\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(21) & (!\debouncerKEY0|Add0~41\))
-- \debouncerKEY0|Add0~43\ = CARRY((!\debouncerKEY0|s_debounceCnt\(21) & !\debouncerKEY0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(21),
	datad => VCC,
	cin => \debouncerKEY0|Add0~41\,
	combout => \debouncerKEY0|Add0~42_combout\,
	cout => \debouncerKEY0|Add0~43\);

-- Location: LCCOMB_X106_Y68_N26
\debouncerKEY0|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[21]~10_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|Add0~42_combout\ & (\debouncerKEY0|s_debounceCnt[20]~3_combout\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|Add0~42_combout\,
	datac => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt[21]~10_combout\);

-- Location: FF_X106_Y68_N27
\debouncerKEY0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(21));

-- Location: LCCOMB_X106_Y68_N24
\debouncerKEY0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~0_combout\ = (!\debouncerKEY0|s_debounceCnt\(21) & !\debouncerKEY0|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debouncerKEY0|s_debounceCnt\(21),
	datad => \debouncerKEY0|s_debounceCnt\(20),
	combout => \debouncerKEY0|LessThan0~0_combout\);

-- Location: LCCOMB_X106_Y69_N2
\debouncerKEY0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~6_combout\ = (\debouncerKEY0|s_debounceCnt\(6) & ((\debouncerKEY0|s_debounceCnt\(0)) # ((\debouncerKEY0|s_debounceCnt\(5)) # (!\debouncerKEY0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(0),
	datab => \debouncerKEY0|s_debounceCnt\(6),
	datac => \debouncerKEY0|s_debounceCnt\(5),
	datad => \debouncerKEY0|s_pulsedOut~5_combout\,
	combout => \debouncerKEY0|LessThan0~6_combout\);

-- Location: LCCOMB_X108_Y69_N24
\debouncerKEY0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~4_combout\ = (\debouncerKEY0|s_debounceCnt\(19) & (\debouncerKEY0|s_debounceCnt\(8) & (\debouncerKEY0|s_debounceCnt\(14) & \debouncerKEY0|s_debounceCnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(19),
	datab => \debouncerKEY0|s_debounceCnt\(8),
	datac => \debouncerKEY0|s_debounceCnt\(14),
	datad => \debouncerKEY0|s_debounceCnt\(18),
	combout => \debouncerKEY0|LessThan0~4_combout\);

-- Location: LCCOMB_X108_Y69_N16
\debouncerKEY0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~5_combout\ = (\debouncerKEY0|s_debounceCnt\(11) & (\debouncerKEY0|s_debounceCnt\(9) & \debouncerKEY0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(11),
	datab => \debouncerKEY0|s_debounceCnt\(9),
	datad => \debouncerKEY0|LessThan0~4_combout\,
	combout => \debouncerKEY0|LessThan0~5_combout\);

-- Location: LCCOMB_X108_Y69_N6
\debouncerKEY0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~1_combout\ = (\debouncerKEY0|s_debounceCnt\(13)) # ((\debouncerKEY0|s_debounceCnt\(12)) # ((\debouncerKEY0|s_debounceCnt\(10) & \debouncerKEY0|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(10),
	datab => \debouncerKEY0|s_debounceCnt\(13),
	datac => \debouncerKEY0|s_debounceCnt\(12),
	datad => \debouncerKEY0|s_debounceCnt\(11),
	combout => \debouncerKEY0|LessThan0~1_combout\);

-- Location: LCCOMB_X108_Y69_N10
\debouncerKEY0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~2_combout\ = (\debouncerKEY0|s_debounceCnt\(15)) # ((\debouncerKEY0|s_debounceCnt\(16)) # ((\debouncerKEY0|s_debounceCnt\(14) & \debouncerKEY0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(15),
	datab => \debouncerKEY0|s_debounceCnt\(16),
	datac => \debouncerKEY0|s_debounceCnt\(14),
	datad => \debouncerKEY0|LessThan0~1_combout\,
	combout => \debouncerKEY0|LessThan0~2_combout\);

-- Location: LCCOMB_X106_Y69_N0
\debouncerKEY0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~3_combout\ = (\debouncerKEY0|s_debounceCnt\(19) & (\debouncerKEY0|s_debounceCnt\(18) & ((\debouncerKEY0|s_debounceCnt\(17)) # (\debouncerKEY0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(19),
	datab => \debouncerKEY0|s_debounceCnt\(17),
	datac => \debouncerKEY0|s_debounceCnt\(18),
	datad => \debouncerKEY0|LessThan0~2_combout\,
	combout => \debouncerKEY0|LessThan0~3_combout\);

-- Location: LCCOMB_X106_Y69_N8
\debouncerKEY0|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|LessThan0~7_combout\ = (\debouncerKEY0|LessThan0~3_combout\) # ((\debouncerKEY0|LessThan0~5_combout\ & ((\debouncerKEY0|s_debounceCnt\(7)) # (\debouncerKEY0|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(7),
	datab => \debouncerKEY0|LessThan0~6_combout\,
	datac => \debouncerKEY0|LessThan0~5_combout\,
	datad => \debouncerKEY0|LessThan0~3_combout\,
	combout => \debouncerKEY0|LessThan0~7_combout\);

-- Location: LCCOMB_X108_Y69_N14
\debouncerKEY0|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[22]~24_combout\ = (\debouncerKEY0|s_debounceCnt\(22) & (\debouncerKEY0|LessThan0~0_combout\ & (!\debouncerKEY0|LessThan0~7_combout\))) # (!\debouncerKEY0|s_debounceCnt\(22) & (((\debouncerKEY0|s_debounceCnt[20]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(22),
	datab => \debouncerKEY0|LessThan0~0_combout\,
	datac => \debouncerKEY0|LessThan0~7_combout\,
	datad => \debouncerKEY0|s_debounceCnt[20]~2_combout\,
	combout => \debouncerKEY0|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X106_Y68_N22
\debouncerKEY0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~44_combout\ = \debouncerKEY0|Add0~43\ $ (\debouncerKEY0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncerKEY0|s_debounceCnt\(22),
	cin => \debouncerKEY0|Add0~43\,
	combout => \debouncerKEY0|Add0~44_combout\);

-- Location: LCCOMB_X108_Y69_N2
\debouncerKEY0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[22]~25_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|s_dirtyIn~q\)) # (!\debouncerKEY0|s_previousIn~q\ & ((\debouncerKEY0|s_debounceCnt[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_dirtyIn~q\,
	datab => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X108_Y69_N22
\debouncerKEY0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[22]~26_combout\ = (\debouncerKEY0|s_debounceCnt[22]~25_combout\ & (((\debouncerKEY0|s_debounceCnt[22]~24_combout\ & \debouncerKEY0|Add0~44_combout\)) # (!\debouncerKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_previousIn~q\,
	datab => \debouncerKEY0|s_debounceCnt[22]~24_combout\,
	datac => \debouncerKEY0|Add0~44_combout\,
	datad => \debouncerKEY0|s_debounceCnt[22]~25_combout\,
	combout => \debouncerKEY0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X108_Y69_N23
\debouncerKEY0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(22));

-- Location: LCCOMB_X107_Y69_N22
\debouncerKEY0|s_debounceCnt[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt[20]~0_combout\ = (\debouncerKEY0|s_dirtyIn~q\ & (((\debouncerKEY0|LessThan0~0_combout\ & !\debouncerKEY0|LessThan0~7_combout\)) # (!\debouncerKEY0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(22),
	datab => \debouncerKEY0|s_dirtyIn~q\,
	datac => \debouncerKEY0|LessThan0~0_combout\,
	datad => \debouncerKEY0|LessThan0~7_combout\,
	combout => \debouncerKEY0|s_debounceCnt[20]~0_combout\);

-- Location: LCCOMB_X106_Y69_N6
\debouncerKEY0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~23_combout\ = (\debouncerKEY0|Add0~0_combout\ & (\debouncerKEY0|s_previousIn~q\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~0_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~23_combout\);

-- Location: FF_X106_Y69_N7
\debouncerKEY0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~23_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(0));

-- Location: LCCOMB_X106_Y69_N12
\debouncerKEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|Add0~2_combout\ = (\debouncerKEY0|s_debounceCnt\(1) & (\debouncerKEY0|Add0~1\ & VCC)) # (!\debouncerKEY0|s_debounceCnt\(1) & (!\debouncerKEY0|Add0~1\))
-- \debouncerKEY0|Add0~3\ = CARRY((!\debouncerKEY0|s_debounceCnt\(1) & !\debouncerKEY0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_debounceCnt\(1),
	datad => VCC,
	cin => \debouncerKEY0|Add0~1\,
	combout => \debouncerKEY0|Add0~2_combout\,
	cout => \debouncerKEY0|Add0~3\);

-- Location: LCCOMB_X106_Y69_N4
\debouncerKEY0|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~19_combout\ = (\debouncerKEY0|Add0~2_combout\ & (\debouncerKEY0|s_previousIn~q\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|Add0~2_combout\,
	datac => \debouncerKEY0|s_previousIn~q\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~19_combout\);

-- Location: FF_X106_Y69_N5
\debouncerKEY0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~19_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(1));

-- Location: LCCOMB_X105_Y69_N6
\debouncerKEY0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_debounceCnt~20_combout\ = (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|Add0~4_combout\ & \debouncerKEY0|s_debounceCnt[20]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|Add0~4_combout\,
	datad => \debouncerKEY0|s_debounceCnt[20]~0_combout\,
	combout => \debouncerKEY0|s_debounceCnt~20_combout\);

-- Location: FF_X105_Y69_N7
\debouncerKEY0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_debounceCnt~20_combout\,
	ena => \debouncerKEY0|s_debounceCnt[20]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_debounceCnt\(2));

-- Location: LCCOMB_X105_Y69_N24
\debouncerKEY0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~5_combout\ = (!\debouncerKEY0|s_debounceCnt\(2) & (!\debouncerKEY0|s_debounceCnt\(3) & (!\debouncerKEY0|s_debounceCnt\(4) & !\debouncerKEY0|s_debounceCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(2),
	datab => \debouncerKEY0|s_debounceCnt\(3),
	datac => \debouncerKEY0|s_debounceCnt\(4),
	datad => \debouncerKEY0|s_debounceCnt\(1),
	combout => \debouncerKEY0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X108_Y69_N12
\debouncerKEY0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~6_combout\ = (!\debouncerKEY0|s_debounceCnt\(22) & (\debouncerKEY0|s_previousIn~q\ & (\debouncerKEY0|s_dirtyIn~q\ & \debouncerKEY0|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_debounceCnt\(22),
	datab => \debouncerKEY0|s_previousIn~q\,
	datac => \debouncerKEY0|s_dirtyIn~q\,
	datad => \debouncerKEY0|s_debounceCnt\(0),
	combout => \debouncerKEY0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X109_Y69_N22
\debouncerKEY0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncerKEY0|s_pulsedOut~7_combout\ = (\debouncerKEY0|s_pulsedOut~5_combout\ & (!\debouncerKEY0|s_debounceCnt\(5) & (\debouncerKEY0|s_pulsedOut~4_combout\ & \debouncerKEY0|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~5_combout\,
	datab => \debouncerKEY0|s_debounceCnt\(5),
	datac => \debouncerKEY0|s_pulsedOut~4_combout\,
	datad => \debouncerKEY0|s_pulsedOut~6_combout\,
	combout => \debouncerKEY0|s_pulsedOut~7_combout\);

-- Location: FF_X109_Y69_N23
\debouncerKEY0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \debouncerKEY0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncerKEY0|s_pulsedOut~q\);

-- Location: LCCOMB_X109_Y69_N6
\decrementador4bits|s_contagem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decrementador4bits|s_contagem~1_combout\ = (!\debouncerKEY0|s_pulsedOut~q\ & !\decrementador4bits|s_contagem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datac => \decrementador4bits|s_contagem\(0),
	combout => \decrementador4bits|s_contagem~1_combout\);

-- Location: FF_X109_Y69_N7
\decrementador4bits|s_contagem[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulso2hz|saidasinal~clkctrl_outclk\,
	d => \decrementador4bits|s_contagem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decrementador4bits|s_contagem\(0));

-- Location: LCCOMB_X109_Y69_N16
\decrementador4bits|s_contagem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decrementador4bits|s_contagem~2_combout\ = (!\debouncerKEY0|s_pulsedOut~q\ & (\decrementador4bits|s_contagem\(1) $ (!\decrementador4bits|s_contagem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datac => \decrementador4bits|s_contagem\(1),
	datad => \decrementador4bits|s_contagem\(0),
	combout => \decrementador4bits|s_contagem~2_combout\);

-- Location: FF_X109_Y69_N17
\decrementador4bits|s_contagem[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulso2hz|saidasinal~clkctrl_outclk\,
	d => \decrementador4bits|s_contagem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decrementador4bits|s_contagem\(1));

-- Location: LCCOMB_X109_Y69_N20
\decrementador4bits|s_contagem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decrementador4bits|s_contagem~0_combout\ = (!\debouncerKEY0|s_pulsedOut~q\ & (\decrementador4bits|s_contagem\(2) $ (((!\decrementador4bits|s_contagem\(1) & !\decrementador4bits|s_contagem\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(0),
	combout => \decrementador4bits|s_contagem~0_combout\);

-- Location: FF_X109_Y69_N21
\decrementador4bits|s_contagem[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulso2hz|saidasinal~clkctrl_outclk\,
	d => \decrementador4bits|s_contagem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decrementador4bits|s_contagem\(2));

-- Location: LCCOMB_X109_Y69_N28
\decrementador4bits|s_contagem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decrementador4bits|s_contagem~3_combout\ = (!\decrementador4bits|s_contagem\(0) & !\decrementador4bits|s_contagem\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datad => \decrementador4bits|s_contagem\(1),
	combout => \decrementador4bits|s_contagem~3_combout\);

-- Location: LCCOMB_X109_Y69_N18
\decrementador4bits|s_contagem~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decrementador4bits|s_contagem~4_combout\ = (!\debouncerKEY0|s_pulsedOut~q\ & (\decrementador4bits|s_contagem\(3) $ (((!\decrementador4bits|s_contagem\(2) & \decrementador4bits|s_contagem~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncerKEY0|s_pulsedOut~q\,
	datab => \decrementador4bits|s_contagem\(2),
	datac => \decrementador4bits|s_contagem\(3),
	datad => \decrementador4bits|s_contagem~3_combout\,
	combout => \decrementador4bits|s_contagem~4_combout\);

-- Location: FF_X109_Y69_N19
\decrementador4bits|s_contagem[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulso2hz|saidasinal~clkctrl_outclk\,
	d => \decrementador4bits|s_contagem~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decrementador4bits|s_contagem\(3));

-- Location: LCCOMB_X109_Y69_N4
\desc7segmentos|saidabinaria~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \desc7segmentos|saidabinaria~0_combout\ = (\decrementador4bits|s_contagem\(2) & (!\decrementador4bits|s_contagem\(1) & (\decrementador4bits|s_contagem\(0) $ (!\decrementador4bits|s_contagem\(3))))) # (!\decrementador4bits|s_contagem\(2) & 
-- (\decrementador4bits|s_contagem\(0) & (\decrementador4bits|s_contagem\(1) $ (!\decrementador4bits|s_contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(3),
	combout => \desc7segmentos|saidabinaria~0_combout\);

-- Location: LCCOMB_X109_Y69_N10
\desc7segmentos|saidabinaria~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \desc7segmentos|saidabinaria~1_combout\ = (\decrementador4bits|s_contagem\(1) & ((\decrementador4bits|s_contagem\(0) & ((\decrementador4bits|s_contagem\(3)))) # (!\decrementador4bits|s_contagem\(0) & (\decrementador4bits|s_contagem\(2))))) # 
-- (!\decrementador4bits|s_contagem\(1) & (\decrementador4bits|s_contagem\(2) & (\decrementador4bits|s_contagem\(0) $ (\decrementador4bits|s_contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(3),
	combout => \desc7segmentos|saidabinaria~1_combout\);

-- Location: LCCOMB_X109_Y69_N12
\desc7segmentos|saidabinaria~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \desc7segmentos|saidabinaria~2_combout\ = (\decrementador4bits|s_contagem\(2) & (\decrementador4bits|s_contagem\(3) & ((\decrementador4bits|s_contagem\(1)) # (!\decrementador4bits|s_contagem\(0))))) # (!\decrementador4bits|s_contagem\(2) & 
-- (!\decrementador4bits|s_contagem\(0) & (\decrementador4bits|s_contagem\(1) & !\decrementador4bits|s_contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(3),
	combout => \desc7segmentos|saidabinaria~2_combout\);

-- Location: LCCOMB_X109_Y69_N14
\desc7segmentos|saidabinaria~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \desc7segmentos|saidabinaria~3_combout\ = (\decrementador4bits|s_contagem\(1) & ((\decrementador4bits|s_contagem\(0) & (\decrementador4bits|s_contagem\(2))) # (!\decrementador4bits|s_contagem\(0) & (!\decrementador4bits|s_contagem\(2) & 
-- \decrementador4bits|s_contagem\(3))))) # (!\decrementador4bits|s_contagem\(1) & (!\decrementador4bits|s_contagem\(3) & (\decrementador4bits|s_contagem\(0) $ (\decrementador4bits|s_contagem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(3),
	combout => \desc7segmentos|saidabinaria~3_combout\);

-- Location: LCCOMB_X109_Y69_N8
\desc7segmentos|saidabinaria~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \desc7segmentos|saidabinaria~4_combout\ = (\decrementador4bits|s_contagem\(1) & (\decrementador4bits|s_contagem\(0) & ((!\decrementador4bits|s_contagem\(3))))) # (!\decrementador4bits|s_contagem\(1) & ((\decrementador4bits|s_contagem\(2) & 
-- ((!\decrementador4bits|s_contagem\(3)))) # (!\decrementador4bits|s_contagem\(2) & (\decrementador4bits|s_contagem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(3),
	combout => \desc7segmentos|saidabinaria~4_combout\);

-- Location: LCCOMB_X109_Y69_N30
\desc7segmentos|saidabinaria~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \desc7segmentos|saidabinaria~5_combout\ = (\decrementador4bits|s_contagem\(0) & (\decrementador4bits|s_contagem\(3) $ (((\decrementador4bits|s_contagem\(1)) # (!\decrementador4bits|s_contagem\(2)))))) # (!\decrementador4bits|s_contagem\(0) & 
-- (\decrementador4bits|s_contagem\(1) & (!\decrementador4bits|s_contagem\(2) & !\decrementador4bits|s_contagem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(3),
	combout => \desc7segmentos|saidabinaria~5_combout\);

-- Location: LCCOMB_X109_Y69_N24
\desc7segmentos|saidabinaria~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \desc7segmentos|saidabinaria~6_combout\ = (\decrementador4bits|s_contagem\(0) & (!\decrementador4bits|s_contagem\(3) & (\decrementador4bits|s_contagem\(1) $ (!\decrementador4bits|s_contagem\(2))))) # (!\decrementador4bits|s_contagem\(0) & 
-- (!\decrementador4bits|s_contagem\(1) & (\decrementador4bits|s_contagem\(2) $ (!\decrementador4bits|s_contagem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decrementador4bits|s_contagem\(0),
	datab => \decrementador4bits|s_contagem\(1),
	datac => \decrementador4bits|s_contagem\(2),
	datad => \decrementador4bits|s_contagem\(3),
	combout => \desc7segmentos|saidabinaria~6_combout\);

-- Location: IOIBUF_X115_Y53_N15
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_ledr(0) <= \ledr[0]~output_o\;
END structure;


