LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY jk_ff IS
PORT (    clk:     IN STD_LOGIC;
          J, K:               IN STD_LOGIC;
          Q:       OUT STD_LOGIc;
           reset:              IN STD_LOGIC
);
END jk_ff;

--architecture of entity

ARCHITECTURE Behavioral OF jk_ff IS

--signal declaration.

SIGNAL qtemp : std_logic :='0';

BEGIN
	Q <= qtemp;

	PROCESS(clk,reset)
	BEGIN

		IF(reset = '1') THEN           --Reset the output.
   		qtemp <= '0';
	   		 ELSIF( rising_edge(clk) ) THEN
				IF(J='0' AND K='0') THEN       --No change in the output
				NULL;
				ELSIF(J='0' AND K='1') THEN    --Set the output.
				qtemp <= '0';
				ELSIF(J='1' AND K='0') THEN    --Reset the output.
				qtemp <= '1';
					ELSE                           --Toggle the output.
 						qtemp <= NOT qtemp;
				END IF;
		END IF;
	END PROCESS;

END Behavioral;

