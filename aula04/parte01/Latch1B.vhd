library ieee;
use ieee.std_logic_1164.all;

entity latch1b is
	port(	clk	:	in	std_logic;
			d		:	in std_logic;
			q		:	out std_logic);
end latch1b;

architecture behavioral of latch1b is
begin
	process(clk, d)
	begin
		if(clk='1') then
			q <= d;
		end if;
	end process;
end behavioral;