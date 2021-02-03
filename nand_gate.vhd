----------------------------------------------------------------------------------
-- Engineer: Boaz Raz 
-- NAND Gate
-- Create Date: 02/01/2021
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_gate is
    port(X : in std_logic;      -- NAND gate input
         Y : in std_logic;      -- NAND gate input
         F : out std_logic);    -- NAND gate output
end nand_gate;

architecture Behavioral of nand_gate is

begin

    F <= X NAND Y;

end Behavioral;
