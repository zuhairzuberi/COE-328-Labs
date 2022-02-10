-- Code for a 2-to-1 multiplexer
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY a2to1mux IS
PORT (w0, w1, s : IN STD_LOGIC;
		f : OUT STD_LOGIC);
END a2to1mux;

ARCHITECTURE Behavior OF a2to1mux IS
BEGIN 
	PROCESS (w0, w1, s)
	BEGIN 
			f <= w0;
		IF s = '1' THEN
			f <= w1;
		END IF;
	END PROCESS;
END Behavior;
