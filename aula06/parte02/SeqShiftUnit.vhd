library ieee; 
use ieee.std_logic_1164.all; 
 
entity seqshiftunit is 
   port(datain : in std_logic_vector(7 downto 0); 
        clk, sileft, siright, loaden, rotate, dirleft, sharith : in std_logic;
        dataout : out std_logic_vector(7 downto 0)); 
end seqshiftunit;
 
architecture behavioral of seqshiftunit is
	signal s_shiftreg : std_logic_vector(7 downto 0);  begin  
  process(clk) 
  begin 
    if (falling_edge(clk)) then 
       if (loaden = '1') then 
          s_shiftreg <= datain; 
       elsif (rotate = '1') then 
          if (dirleft = '1') then 
            s_shiftreg <= s_shiftreg(6 downto 0) & s_shiftreg(7); 
          else 
            s_shiftreg <= s_shiftreg(0) & s_shiftreg(7 downto 1); 
          end if; 
       elsif (sharith = '1') then 
			if (dirleft = '1') then 
            s_shiftreg <= s_shiftreg(7 downto 1) & '0'; 
          else 
            s_shiftreg <= s_shiftreg(7) & s_shiftreg(7 downto 1); 
          end if;
		 else
			if (dirleft = '1') then 
            s_shiftreg <= s_shiftreg(7 downto 1) & sileft; 
          else 
            s_shiftreg <= siright & s_shiftreg(7 downto 1); 
          end if;
       end if;
    end if; 
  end process; 
  dataout <= s_shiftreg; 
end behavioral;