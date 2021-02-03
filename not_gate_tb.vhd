----------------------------------------------------------------------------------
-- Engineer: Boaz Raz
-- Create Date: 02/01/2021
-- Project Name: NOT Gate Test
----------------------------------------------------------------------------------
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity not_gate_tb is
end;

architecture bench of not_gate_tb is

  component not_gate
      port(X : in std_logic;
           F : out std_logic);
  end component;

  signal X: std_logic;
  signal F: std_logic;

begin

  uut: not_gate port map ( X => X,
                           F => F );

  stimulus: process
  begin
    X <= '0';
    wait for 10ns;
    X <= '1';
    wait for 10ns;   
    wait;
  end process;


end;
