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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/30/2022 13:11:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bin2bcd
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin2bcd_vhd_vec_tst IS
END bin2bcd_vhd_vec_tst;
ARCHITECTURE bin2bcd_arch OF bin2bcd_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inport : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outport : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT bin2bcd
	PORT (
	inport : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	outport : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bin2bcd
	PORT MAP (
-- list connections between master ports and signals
	inport => inport,
	outport => outport
	);
-- inport[3]
t_prcs_inport_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		inport(3) <= '0';
		WAIT FOR 240000 ps;
		inport(3) <= '1';
		WAIT FOR 240000 ps;
	END LOOP;
	inport(3) <= '0';
WAIT;
END PROCESS t_prcs_inport_3;
-- inport[2]
t_prcs_inport_2: PROCESS
BEGIN
	FOR i IN 1 TO 4
	LOOP
		inport(2) <= '0';
		WAIT FOR 120000 ps;
		inport(2) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	inport(2) <= '0';
WAIT;
END PROCESS t_prcs_inport_2;
-- inport[1]
t_prcs_inport_1: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		inport(1) <= '0';
		WAIT FOR 60000 ps;
		inport(1) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	inport(1) <= '0';
WAIT;
END PROCESS t_prcs_inport_1;
-- inport[0]
t_prcs_inport_0: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		inport(0) <= '0';
		WAIT FOR 30000 ps;
		inport(0) <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	inport(0) <= '0';
	WAIT FOR 30000 ps;
	inport(0) <= '1';
WAIT;
END PROCESS t_prcs_inport_0;
END bin2bcd_arch;
