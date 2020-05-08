library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dwl is
	port(
			AGTB				: in std_logic; -- input (A>B) as obtained from the 4-bit comparator
			AEQB				: in std_logic; -- input (A=B) as obtained from the 4-bit comparator
			ALTB				: in std_logic; -- input (A<B) as obtained from the 4-bit comparator
			door				: in std_logic; -- input from pb(0)
			window			: in std_logic; -- input from pb(1)
			leds_out 		: out std_logic_vector(5 downto 0) -- output for the leds
	
	);
end entity dwl;

architecture logic_dwl of dwl is
	 
begin

	leds_out(2) <= AGTB AND window AND door; -- If it's ABOVE temp and the window and door are closed, the A/C should turn ON
	leds_out(1) <= AEQB;							  -- If the current and desired temp are equal, then system is AT temp
	leds_out(0) <= ALTB AND window AND door; -- If it's BELOW temp and the window and door are closed, the Furnace should turn ON
	leds_out(3) <= (AGTB OR ALTB) AND window AND door; -- If A/C or Furnace is ON and the door and window are closed
	leds_out(4) <= NOT(door); -- when pb(0) is pressed, that means the door is open
	leds_out(5) <= NOT(window); -- when pb(1) is pressed, that means the window is open

end logic_dwl;