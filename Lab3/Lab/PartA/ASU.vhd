LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASU IS
	PORT( Cin				: IN STD_LOGIC;
			X,Y				: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			S					: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			neg				: OUT STD_LOGIC;
			Cout				: OUT STD_LOGIC);
END ASU;

ARCHITECTURE Behavior OF ASU IS
	SIGNAL Sum: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL NEGG: STD_LOGIC;

	BEGIN
		process(X,Y,Cin)
		begin
			if (Cin='0') then
				Sum <= ('0' & X) + ('0' & Y) + Cin;
			else
				Sum <= ('0' & X) - ('0' & Y) + Cin;
			end if;
				if (X < Y)and(Cin='1')  then
					S <= NOT Sum(3 DOWNTO 0) + 1;
					NEGG <= '1';
				else
					S <= Sum(3 DOWNTO 0);
					NEGG <= '0';
				end if;
			Cout <= Sum(4);
	end process;

	neg <= NEGG;
END Behavior;