----------------------------------------------------------------------------------
-- Engineer: Boaz Raz
-- OR Gate
-- Create Date: 02/01/2021
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity or_gate is
    port(X : in std_logic;      -- OR gate input
         Y : in std_logic;      -- OR gate input
         F : out std_logic);    -- OR gate output
end or_gate;

architecture Behavioral of or_gate is

begin

    F <= X OR Y;

end Behavioral;
