----------------------------------------------------------------------------------
-- Engineer: Boaz Raz 
-- NOT Gate
-- Create Date: 02/01/2021
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    port(X : in std_logic;      -- NOT gate input
         F : out std_logic);    -- NOT gate output
end not_gate;

architecture Behavioral of not_gate is

begin

    F <= NOT X ;

end Behavioral;
