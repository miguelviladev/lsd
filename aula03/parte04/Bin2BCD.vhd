library ieee;
use ieee.std_logic_1164.all;

entity bin2bcd is
	port (inport : in std_logic_vector(3 downto 0);
	      outport : out std_logic_vector(7 downto 0));
end bin2bcd;

architecture behavioral of bin2bcd is
begin
	outport <= "00000000" when (inport = "0000") else
				  "00000001" when (inport = "0001") else
				  "00000010" when (inport = "0010") else
				  "00000011" when (inport = "0011") else
				  "00000100" when (inport = "0100") else
				  "00000101" when (inport = "0101") else
				  "00000110" when (inport = "0110") else
				  "00000111" when (inport = "0111") else
				  "00001000" when (inport = "1000") else
				  "00001001" when (inport = "1001") else
				  "00010000" when (inport = "1010") else
				  "00010001" when (inport = "1011") else
				  "00010010" when (inport = "1100") else
				  "00010011" when (inport = "1101") else
				  "00010100" when (inport = "1110") else
				  "00010101";
				--"000EDCBA" 000E-Dezenas DCBA-Unidades
end behavioral;