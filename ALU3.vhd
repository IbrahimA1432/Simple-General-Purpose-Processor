LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU3 IS
PORT (Clock : IN STD_LOGIC ;
		A ,B : IN UNSIGNED(7 DOWNTO 0);
		Student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 DOWNTO 0);
		Neg: OUT STD_LOGIC;
		Result: OUT UNSIGNED(3 DOWNTO 0));--Result
END ALU3;

ARCHITECTURE Behavior OF ALU3 IS
SIGNAL Reg1, Reg2: UNSIGNED(3 DOWNTO 0) := (OTHERS => '0');
SIGNAL Reg3: integer;


BEGIN
	Reg3 <= to_integer(UNSIGNED(A));
	Reg1 <= to_UNSIGNED(Reg3/10, 4);
	Reg2 <= to_UNSIGNED(Reg3 mod 10, 4);
	PROCESS (Clock,OP,A,B)
	BEGIN
	IF (rising_edge(Clock)) THEN
		CASE OP IS
			WHEN "1000000000000000" => 
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "01000000000000000"  => 
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "0010000000000000" =>
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "0001000000000000" =>
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "0000100000000000" =>
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "0000010000000000" =>
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "0000001000000000" =>
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "0000000100000000" =>
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN "0000000010000000" =>
				neg <= '0';
				if ((Reg1 = Student_id) OR (Reg2 = Student_id)) then
					Result <= "0000";
				else 
					Result <= "0001";
				end if;
			WHEN OTHERS =>-- Don't care
			END CASE;
		END IF;
	END PROCESS;
END Behavior;