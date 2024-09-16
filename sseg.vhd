LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg IS
	PORT ( bcd				: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
			 sign				: IN STD_LOGIC;
			 leds1, leds2	: OUT STD_LOGIC_VECTOR(1 TO 7));
END sseg;

ARCHITECTURE Behaviour OF sseg IS
BEGIN
	PROCESS (bcd, sign)
	BEGIN
	if (sign = '1') then
		leds2 <= "0000001";
	else
		leds2 <= "0000000";
	END if;
	
		CASE bcd IS				 -- abcdefg
			WHEN "0000"	=>leds1<=NOT "1111110";
			WHEN "0001" =>leds1<=NOT "0110000";
			WHEN "0010" =>leds1<=NOT "1101101";
			WHEN "0011" =>leds1<=NOT "1111001";
			WHEN "0100" =>leds1<=NOT "0110011";
			WHEN "0101" =>leds1<=NOT "1011011";
			WHEN "0110" =>leds1<=NOT "1011111";
			WHEN "0111" =>leds1<=NOT "1110000";
			WHEN "1000" =>leds1<=NOT "1111111";
			WHEN "1001" =>leds1<=NOT "1111011";
			WHEN OTHERS =>leds1<=NOT "1001111";
		END CASE;
	END PROCESS;
END Behaviour;