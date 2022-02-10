LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU3 IS
PORT(
	Clock : IN STD_LOGIC; -- input clock signal
	student_id : IN UNSIGNED(3 DOWNTO 0); -- 4 bit student id from FSM 
	OP : IN UNSIGNED(15 DOWNTO 0); -- 16 bit selector for decoder operations
	R: OUT UNSIGNED (3 DOWNTO 0));
END ALU3;

ARCHITECTURE calculation OF ALU3 IS
SIGNAL reg1, reg2, result : UNSIGNED(3 DOWNTO 0):= (OTHERS =>'0');
BEGIN 
PROCESS(Clock, OP)
BEGIN 
	IF(rising_edge(Clock)) THEN
		CASE OP IS -- Problem A
			WHEN "0000000000000001"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000000000010"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000000000100"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000000001000"=>
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000000010000"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000000100000"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000001000000"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000010000000"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN "0000000100000000"=> 
				IF((student_id mod 2) /= 0)THEN
					result <= "0001"; -- y
				ELSE	
					result <= "0000"; -- n
				END IF;
			WHEN OTHERS =>
				result <= "----";
		END CASE;		
	END IF;
END PROCESS;
R <= result;
END calculation;