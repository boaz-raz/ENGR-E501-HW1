----------------------------------------------------------------------------------
-- Engineer: Boaz Raz
-- Create Date: 02/01/2021 
-- Project Name: XOR Gate Test
----------------------------------------------------------------------------------
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity xor_gate_tb is
end;

architecture bench of xor_gate_tb is

  component xor_gate
      port(X : in std_logic;
           Y : in std_logic;
           F : out std_logic);
  end component;

  signal X: std_logic;
  signal Y: std_logic;
  signal F: std_logic;

begin

  uut: xor_gate port map ( X => X,
                           Y => Y,
                           F => F );

  stimulus: process
  begin
    X <= '0';
    Y <= '0';
    wait for 10ns;
    X <= '0';
    Y <= '1';
    wait for 10ns;
    X <= '1';
    Y <= '0';
    wait for 10ns;
    X <= '1';
    Y <= '1';
    wait for 10ns;
    
    wait;
  end process;


end;
