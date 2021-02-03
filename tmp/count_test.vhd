LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
  
ENTITY count_test IS
END count_test;
 
ARCHITECTURE behavior OF count_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT four_bit_counter
    PORT(
         clk : IN  STD_LOGIC;
         reset : IN  STD_LOGIC;
         counter : OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
    

   --Inputs
   SIGNAL clk : STD_LOGIC := '0';
   SIGNAL reset : STD_LOGIC := '0';

 	--Outputs
   SIGNAL counter : STD_LOGIC_VECTOR(3 DOWNTO 0);

   -- Clock period definitions
   CONSTANT clk_period : TIME := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: four_bit_counter PORT MAP (
          clk => clk,
          reset => reset,
          counter => counter
        );

   -- Clock process definitions
   CLK_PROCESS :PROCESS
   BEGIN
		clk <= '0';
		WAIT FOR clk_period/2;
		clk <= '1';
		WAIT FOR clk_period/2;
   END PROCESS;
 

   -- Stimulus process
	stim_proc: PROCESS
   	BEGIN		
     		 WAIT FOR clk_period*20;
			reset <='1';
			WAIT FOR clk_period*2;
			reset <='0';
	END PROCESS;

END;
