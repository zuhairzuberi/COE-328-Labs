LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY johns IS

PORT (Clrn, E, Clkn : IN STD_LOGIC; -- Clrn is the reset button 
STUDENT_ID : out std_logic_vector(3 downto 0);
Q : OUT STD_LOGIC_VECTOR (0 TO 2));
END johns;

ARCHITECTURE Behavior OF johns IS
signal Qreg : STD_LOGIC_VECTOR (0 TO 2);
BEGIN 
	PROCESS (Clrn, Clkn)
		BEGIN 
		IF Clrn = '0' THEN 
			Qreg <= "000";
		ELSIF (Clkn 'EVENT and Clkn = '0') THEN 
			IF E = '1' THEN 
				Qreg(0) <= not Qreg(2);
				Qreg(1) <= Qreg(0);
				Qreg(2) <= Qreg(1);
			ELSE
				Qreg <= Qreg;
			END IF;
		END IF;

		CASE Qreg IS
			WHEN "000" => STUDENT_ID <= "1001";
			WHEN "100" => STUDENT_ID <= "0101";
			WHEN "110" => STUDENT_ID <= "0101";
			WHEN "111" => STUDENT_ID <= "1000";
			WHEN "011" => STUDENT_ID <= "0101";
			WHEN "001" => STUDENT_ID <= "1001";
			WHEN OTHERS => STUDENT_ID <= "----";
		END CASE;
	END PROCESS;
	Q <= Qreg;
END Behavior;