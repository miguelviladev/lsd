LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- memória ROM de 16 posições e com um comprimento de palavra de 8 bits.

ENTITY ROM_16_8 IS
    PORT (
        addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ROM_16_8;

ARCHITECTURE Behavioral OF ROM_16_8 IS
    SUBTYPE TDataWord IS STD_LOGIC_VECTOR(7 DOWNTO 0);
    TYPE TROM IS ARRAY (0 TO 15) OF TDataWord;
    CONSTANT c_memory : TROM := (x"FF", x"FE", x"FD", x"FC",
                                 x"FB", x"FA", x"F9", x"F8",
											x"F7", x"F6", x"F5", x"F4",
											x"F3", x"F2", x"F1", x"F0");
BEGIN
    dout <= c_memory(to_integer(unsigned(addr)));
END Behavioral;