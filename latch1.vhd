LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latch1 IS
	PORT (A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);-- 8 bit input
			Resetn, Clock : IN STD_LOGIC;-- 1 bit clock and reset input
			Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));-- 8 bit output
END latch1;

ARCHITECTURE Behavior OF latch1 IS
BEGIN
	PROCESS(Resetn, Clock)
	BEGIN
		IF Resetn = '0' THEN-- Clock does not operate if reset is 0
			Q <= "00000000";
		ELSIF Clock'EVENT AND Clock = '1' THEN
			Q <= A;
		END IF;
	END PROCESS;
END Behavior;