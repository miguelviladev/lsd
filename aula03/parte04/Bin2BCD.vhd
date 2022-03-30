library ieee;
use ieee.std_logic_1164.all;

entity bin2bcd is
	port (inport : in std_logic_vector(3 downto 0);
	      outport : out std_logic_vector(4 downto 0));
end bin2bcd;

architecture behavioral of bin2bcd is
begin
	outport <= "00000" when (inport = "0000") else
				  "00001" when (inport = "0001") else
				  "00010" when (inport = "0010") else
				  "00011" when (inport = "0011") else
				  "00100" when (inport = "0100") else
				  "00101" when (inport = "0101") else
				  "00110" when (inport = "0110") else
				  "00111" when (inport = "0111") else
				  "01000" when (inport = "1000") else
				  "01001" when (inport = "1001") else
				  "10000" when (inport = "1010") else
				  "10001" when (inport = "1011") else
				  "10010" when (inport = "1100") else
				  "10011" when (inport = "1101") else
				  "10100" when (inport = "1110") else
				  "10101";

end behavioral;