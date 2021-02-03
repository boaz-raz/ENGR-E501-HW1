library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    port(A : in std_logic;      -- AND gate input
         B : in std_logic;      -- AND gate input
         Y : out std_logic);    -- AND gate output
end and_gate;

architecture Behavioral of and_gate is

begin
    Y <= A AND B;

end Behavioral;