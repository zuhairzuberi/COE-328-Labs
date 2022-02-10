LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg_state IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 neg : IN STD_LOGIC;
		leds : OUT STD_LOGIC_VECTOR(0 TO 6);
		leds2: OUT STD_LOGIC_VECTOR(0 TO 6));	
END sseg_state;

ARCHITECTURE Behaviour OF sseg_state IS
BEGIN
	PROCESS(bcd) 
	BEGIN
		CASE bcd IS				   -- abcdefg 
			WHEN "0000"	=> leds <= "1111110"; -- 0
			WHEN "0001"	=> leds <= "0110000"; -- 1
			WHEN "0010"	=> leds <= "1101101"; -- 2
			WHEN "0011"	=> leds <= "1111001"; -- 3
			WHEN "0100"	=> leds <= "0110011"; -- 4
			WHEN "0101"	=> leds <= "1011011"; -- 5
			WHEN "0110"	=> leds <= "1011111"; -- 6
			WHEN "0111"	=> leds <= "1110000"; -- 7
			WHEN "1000"	=> leds <= "1111111"; -- 8
			WHEN "1001"	=> leds <= "1110011"; -- 9
			WHEN OTHERS	=> leds <= "-------"; 
		END CASE;
	END PROCESS;
	
	PROCESS (neg)
			BEGIN
			CASE neg IS
				WHEN '0' => leds2 <="0000000";
				WHEN OTHERS => leds2 <="0000001";
			END CASE;
		END PROCESS;

END Behaviour;