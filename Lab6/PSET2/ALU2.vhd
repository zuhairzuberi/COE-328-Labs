LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU2 IS
PORT(
	Clock : IN STD_LOGIC; -- input clock signal
	A,B : IN UNSIGNED(7 DOWNTO 0); -- 8 bit inputs from the two latches  
	OP : IN UNSIGNED(15 DOWNTO 0); -- 16 bit selector for decoder operations
	Neg : OUT STD_LOGIC; -- result from the negative
	R1 : OUT UNSIGNED (3 DOWNTO 0); -- lower 4 bits of 8 bit result output 
	R2 : OUT UNSIGNED (3 DOWNTO 0)); -- higher 4 bits of 9 bit result output 
END ALU2;

ARCHITECTURE calculation OF ALU2 IS
SIGNAL reg1, reg2, result : UNSIGNED(7 DOWNTO 0):= (OTHERS =>'0');
SIGNAL reg4 : UNSIGNED(0 TO 7);
BEGIN 
reg1 <= A; -- temporarily stores A in Reg1 local variable 
reg2 <= B; -- temporarily stores B in Reg2 local variable 
PROCESS(Clock, OP)
BEGIN 
	IF(rising_edge(Clock)) THEN 
		CASE OP IS -- Problem E
			WHEN "0000000000000001"=> -- Replace odd bits of A with odd bits of B
				result(0) <= reg1(0); result(2) <= reg1(0); result(4) <= reg1(4); result(6) <= reg1(6);
				result(1) <= reg2(1); result(3) <= reg2(3); result(5) <= reg2(5); result(7) <= reg2(7);
				neg <= '0';
			WHEN "0000000000000010"=> -- NAND A and B
				result <= reg1 nand reg2;
				neg <= '0';
			WHEN "0000000000000100"=> -- Calculate summation of A and B and decrease it by 5
				result <= ((reg1 and reg2) - 5);
				IF (result >= 0) THEN
					neg <= '0';
				ELSE
					neg <= '1';
				END IF;
			WHEN "0000000000001000"=> -- Produce the 2's complement of B
				result <= ((not reg2) + 1);
				neg <= '0';
			WHEN "0000000000010000"=> -- invert the even bits of B
				result(0) <= not(reg1(0)); result(2) <= not(reg1(0)); result(4) <= not(reg1(4)); result(6) <= not(reg1(6));
				result(1) <= reg1(1); result(3) <= reg1(3); result(5) <= reg1(5); result(7) <= reg1(7);
			WHEN "0000000000100000"=> -- Shift A to left by 2 bits, input bit = 1
				result <= shift_left(reg1,2);
				neg <= '0';
			WHEN "0000000001000000"=> -- Produce null on the output
				result <= "--------";
				neg <= '0';
			WHEN "0000000010000000"=> -- Produce 2's complement of A
				result <= ((not reg1) + 1);
				neg <= '0';
			WHEN "0000000100000000"=> -- Rotate B to right by 2 bits
				result <= rotate_right(Reg2,2);
				neg <= '0';
			WHEN OTHERS =>
				result <= "--------";
				neg <= '0';
		END CASE;
	END IF;
END PROCESS;
R1 <= result(3 DOWNTO 0);
R2 <= result(7 DOWNTO 4);
END calculation;