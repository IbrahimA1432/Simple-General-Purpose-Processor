LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU2 IS

PORT (Clock : IN STD_LOGIC ;
		A ,B : IN UNSIGNED(7 DOWNTO 0);
		student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 DOWNTO 0);
		neg: OUT STD_LOGIC;
		R1: OUT UNSIGNED(3 DOWNTO 0);--first 4bits of 8bits Result
		R2: OUT UNSIGNED(3 DOWNTO 0));--later 4bits of 8bits Result
END ALU2;

ARCHITECTURE Behavior OF ALU2 IS
SIGNAL Reg1, Reg2, Result: UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL Reg4: UNSIGNED(0 TO 7);

BEGIN
	Reg1 <= A;
	Reg2 <= B;
	
	PROCESS (Clock,OP,A,B)
	BEGIN
	IF (rising_edge(Clock)) THEN
		CASE OP IS
			WHEN "0000000000000001" => --function 1 Increment A by 2
				neg <= '0';
				Result <= Reg1 + 2;
			WHEN "0000000000000010"  => --function 2 Shift B to right by two bits, input bit = 0
				neg <= '0';
				Result <= "00" & Reg2(7 DOWNTO 2);
			WHEN "0000000000000100" =>--Function 3 Shift A to right by four bits, input bit = 1
				neg <= '0';
				Result <= "1111" & Reg1(7 DOWNTO 4);
			WHEN "0000000000001000" =>--Function 4 Find smaller value between A and B; Min(A,B)
				neg <= '0';
				if (Reg1 < Reg2) then
						Result <= Reg1;
				else
						Result <= Reg2;
				end if;
			WHEN "0000000000010000" =>--Function 5 Rotate A to right by two bits
				neg <= '0';
				Result <= Reg1(1 DOWNTO 0) & Reg2(7 DOWNTO 2);
			WHEN "0000000000100000" =>--Function 6 Invert the bit significance order of B
				neg <= '0';
				Result <= Reg2(0) & Reg2(1) & Reg2(2) & Reg2(3) & Reg2(4) & Reg2(5) & Reg2(6) & Reg2(7);
			WHEN "0000000001000000" =>--Function 7 Produce the result of XORing A and B
				neg <= '0';
				Result <= (Reg1 XOR Reg2);
			WHEN "0000000010000000" =>--Function 8 Produce the summation of A and B, then decrease by 4
				if (Reg1 + Reg2 > 4) then
						neg <= '0';
				else
						neg <= '1';
				end if;
				Result <= (Reg1 + Reg2) - 4;
			WHEN "0000000100000000" =>--Function 9 Produce all high bits on the output
				neg <= '0';
				Result <= "11111111";
			WHEN OTHERS =>-- Don't care
			END CASE;
		END IF;
	END PROCESS;
	
	R1 <= Result(3 DOWNTO 0);
	R2 <= Result(7 DOWNTO 4);

END Behavior;