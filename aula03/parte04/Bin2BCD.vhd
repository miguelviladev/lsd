library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2bcd is
	port (rinport : in std_logic_vector(3 downto 0);
			minport : in std_logic_vector(3 downto 0);
	      binout0 : out std_logic_vector(3 downto 0);
			binout1 : out std_logic_vector(3 downto 0);
			binout2 : out std_logic_vector(3 downto 0));
end bin2bcd;

architecture behavioral of bin2bcd is
	signal rmsignal : unsigned(7 downto 0);
begin
	rmsignal <= unsigned(minport) & unsigned(rinport);
	binout2  <= std_logic_vector(rmsignal/100)(3 downto 0);
	binout1  <= std_logic_vector((rmsignal rem 100)/10)(3 downto 0);
	binout0  <= std_logic_vector((rmsignal rem 100) rem 10)(3 downto 0);
end behavioral;