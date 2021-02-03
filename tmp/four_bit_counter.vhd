LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY four_bit_counter  IS
PORT (    clk:     IN STD_LOGIC;
          reset:      IN STD_LOGIC;
          counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
     );
END four_bit_counter;

--architecture of entity

ARCHITECTURE structural OF four_bit_counter IS

--signal declaration.

SIGNAL J3,J4,Q1,Q2,Q3,Q4: std_logic :='0';

BEGIN 
	J3 <= Q1 AND Q2;
	J4<= J3 AND Q3;

--entity instantiations

	FF1 : entity work.jk_ff port map (clk,'1','1',Q1,reset);
	FF2 : entity work.jk_ff port map (clk,Q1,Q1,Q2,reset);
	FF3 : entity work.jk_ff port map (clk,J3,J3,Q3,reset);
	FF4 : entity work.jk_ff port map (clk,J4,J4,Q4,reset);
	counter <= Q4 & Q3 & Q2 & Q1;

END structural;

