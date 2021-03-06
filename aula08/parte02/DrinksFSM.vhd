LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DrinksFSM IS
    PORT (
        Vint : IN STD_LOGIC;
        Cinq : IN STD_LOGIC;
        Reset : IN STD_LOGIC;
        Clk : IN STD_LOGIC;
        Drink : OUT STD_LOGIC;
        Debugl : OUT STD_LOGIC_VECTOR(5 DOWNTO 0));
END DrinksFSM;

ARCHITECTURE Behavioral OF DrinksFSM IS

    TYPE TState IS (E0, E1, E2, E3, E4, E5);
    SIGNAL s_CurrentState, s_NextState : TState;

BEGIN
    Sync_Proc : PROCESS (Clk)
    BEGIN
        IF (rising_edge(Clk)) THEN
            IF (Reset = '1') THEN
                s_CurrentState <= E0;
            ELSE
                s_CurrentState <= s_NextState;
            END IF;
        END IF;
    END PROCESS;

    comb_proc : PROCESS (s_CurrentState, Vint, Cinq)
    BEGIN
        CASE (s_CurrentState) IS
            WHEN E0 =>
                Drink <= '0';
                IF (Vint = '1') THEN
                    s_NextState <= E1;
                ELSIF (Cinq = '1') THEN
                    s_NextState <= E3;
                ELSE
                    s_NextState <= E0;
                END IF;
            WHEN E1 =>
                IF (Vint = '1') THEN
                    s_NextState <= E2;
                ELSIF (Cinq = '1') THEN
                    s_NextState <= E4;
                ELSE
                    s_NextState <= E1;
                END IF;
            WHEN E2 =>
                IF (Vint = '1') THEN
                    s_NextState <= E3;
                ELSIF (Cinq = '1') THEN
                    s_NextState <= E5;
                ELSE
                    s_NextState <= E2;
                END IF;
            WHEN E3 =>
                IF (Vint = '1') THEN
                    s_NextState <= E4;
                ELSIF (Cinq = '1') THEN
                    s_NextState <= E5;
                ELSE
                    s_NextState <= E3;
                END IF;
            WHEN E4 =>
                IF (Vint = '1') THEN
                    s_NextState <= E5;
                ELSIF (Cinq = '1') THEN
                    s_NextState <= E5;
                ELSE
                    s_NextState <= E4;
                END IF;
            WHEN E5 =>
                Drink <= '1';
                s_NextState <= E0;
        END CASE;
    END PROCESS;
END Behavioral;