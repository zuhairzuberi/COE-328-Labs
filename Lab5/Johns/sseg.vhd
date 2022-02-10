LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
	PORT( bcd		:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			leds		:OUT STD_LOGIC_VECTOR(0 TO 6);
			neg		:IN STD_LOGIC;
			negleds	:OUT STD_LOGIC_VECTOR(0 TO 6));
	END sseg;
	
ARCHITECTURE Behavior OF sseg IS
BEGIN
		PROCESS (bcd)
			BEGIN
			CASE bcd IS              --abcdefg
            WHEN "0000"	=> leds <= "1001111"; -- E
				WHEN "0001"	=> leds <= "1001111"; -- E
				WHEN "0010"	=> leds <= "1001111"; -- E
				WHEN "0011"	=> leds <= "1001111"; -- E
				WHEN "0100"	=> leds <= "1001111"; -- E
				WHEN "0101"	=> leds <= "1011011"; -- 5
				WHEN "0110"	=> leds <= "1001111"; -- E
				WHEN "0111"	=> leds <= "1001111"; -- E
				WHEN "1000"	=> leds <= "1111111"; -- 8
				WHEN "1001"	=> leds <= "1110011"; -- 9
				WHEN OTHERS	=> leds <= "-------"; 
			END CASE;
		END PROCESS;
	 
		PROCESS (neg)
			BEGIN
			CASE neg IS
				WHEN '0' => negleds <="0000000";
				WHEN OTHERS => negleds <="0000001";
			END CASE;
		END PROCESS;
END Behavior;