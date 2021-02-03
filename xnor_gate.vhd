----------------------------------------------------------------------------------
-- Engineer: Boaz Raz 
-- XNOR Gate
-- Create Date: 02/01/2021
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity xnor_gate is
    port(X : in std_logic;      -- XNOR gate input
         Y : in std_logic;      -- XNOR gate input
         F : out std_logic);    -- XNOR gate output
end xnor_gate;

architecture Behavioral of xnor_gate is

begin
    F <= X XNOR Y;
    
end Behavioral;
