library ieee;
use ieee.std_logic_1164.all;

entity addsub4 is
	port (a, b : in  std_logic_vector(3 downto 0);
			sub  : in  std_logic                   ;
			sum  : out std_logic_vector(3 downto 0);
			cout : out std_logic                  );
end addsub4;

architecture behavioral of addsub4 is
	signal s_b: std_logic_vector(3 downto 0);
begin
	s_b <= b when (sub = '0') else not b;
	adder: entity work.adder4(structural)
	port map (a => a,
				 b => s_b,
				 cin => sub,
				 s => sum,
				 cout => cout);
	-- A subtracao esta em complemento para 2
end behavioral;