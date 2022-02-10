LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY machine IS
PORT
	(
	clk : in std_logic;
	data_in : in std_logic;
	reset : in std_logic;
	student_id : out std_logic_vector(3 downto 0);
	current_state : out std_logic_vector(3 DOWNTO 0)
	);
END ENTITY;
	
ARCHITECTURE fsm OF machine IS
	-- Build an enumerated type with 9 states for the state machine
	type state_type IS (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	-- Register to hold the current state
	signal yfsm : state_type;
	begin 
		process (clk, reset)
		begin 
			if reset = '1' then
				yfsm <= s0;
			elsif (clk 'EVENT AND clk = '1') then 
				case yfsm is 
				-- For state diagram 11
					when s0 => if data_in = '1' then
						yfsm <= s3;
						else
						yfsm <= s0;
						end if;
					when s1 => if data_in = '1' then 
						yfsm <= s0;
						else
						yfsm <= s1;
						end if;
					when s2 => if data_in = '1' then	
						yfsm <= s4;
						else 
						yfsm <= s2;
						end if;
					when s3 => if data_in = '1' then
						yfsm <= s7;
						else
						yfsm <= s3;
						end if;
					when s4 => if data_in = '1' then
						yfsm <= s8;
						else
						yfsm <= s4;
						end if;
					when s5 => if data_in = '1' then
						yfsm <= s1;
						else
						yfsm <= s5;
						end if;
					when s6 => if data_in = '1' then
						yfsm <= s2;
						else
						yfsm <= s6;
						end if;
					when s7 => if data_in = '1' then
						yfsm <= s6;
						else
						yfsm <= s7;
						end if;
					when s8 => if data_in = '1' then
						yfsm <= s5;
						else
						yfsm <= s8;
						end if;
				end case;
			end if;
		end process;
					
		process (yfsm, data_in)
			begin 
				-- Student number of 500955859
				case yfsm is 
					when s0=>
						student_id <= "0101";--5
						current_state <= "0000";
					when s3=>
						student_id <= "0000";--9
						current_state <= "0011";
					when s7=>
						student_id <= "0000";--0
						current_state <= "0111";
					when s6=> 
						student_id <= "1001";--9
						current_state <= "0110";
					when s2=>
						student_id <= "0101";--5
						current_state <= "0010";
					when s4=>
						student_id <= "0101";--5
						current_state <= "0100";
					when s8=>
						student_id <= "1000";--8
						current_state <= "1000";
					when s5=>
						student_id <= "0101";--5
						current_state <= "0101";
					when s1=>
						student_id <= "1001";--9
						current_state <= "0001";
				end case;
		end process;
End fsm;