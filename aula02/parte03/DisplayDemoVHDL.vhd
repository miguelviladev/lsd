library ieee;
use ieee.std_logic_1164.all;

entity displaydemovhdl is
	port (inputport  : in  std_logic_vector(3 downto 0);
	      enableport : in  std_logic;
			outputport : out std_logic_vector(6 downto 0));
end displaydemovhdl;

architecture shell of displaydemovhdl is
begin
	system_core : entity work.bin7segdecoder(behavioral)
					  port map(bininput => inputport,
								  enable => enableport,
								  decout_n => outputport);
end shell;