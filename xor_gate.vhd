----------------------------------------------------------------------------------
-- Engineer: Boaz Raz
-- XOR Gate
-- Create Date: 02/01/2021
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    port(X : in std_logic;      -- XOR gate input
         Y : in std_logic;      -- XOR gate input
         F : out std_logic);    -- XOR gate output
end xor_gate;

architecture Behavioral of xor_gate is

begin
    F <= X XOR Y;

end Behavioral;
