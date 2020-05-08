library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MOORE_SM2 IS Port
(
 clk_input, rst_n, button, enable : IN std_logic;
 led										 : OUT std_logic
 );
END ENTITY;
 

 Architecture SM2 of MOORE_SM2 is
 


 TYPE STATE_NAMES IS (start, light_on, light_off);   -- list all the STATE_NAMES values


 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock

BEGIN
	IF (rst_n = '0') THEN
		current_state <= start;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (button, enable, current_state) 

BEGIN
     CASE current_state IS
         WHEN start =>
				IF (enable = '1' AND button = '0') then
					next_state <= light_on;
				ELSIF (enable ='0' OR button = '1') then
					next_state <= light_off;
				END IF;
				
			WHEN light_on =>
				IF (enable = '1' AND button = '0') then
					next_state <= light_on;
				ELSIF (enable ='0' OR button = '1') then
					next_state <= light_off;
				END IF;
				
			WHEN light_off =>
				IF (enable = '1' AND button = '0') then
					next_state <= light_on;
				ELSIF (enable ='0' OR button = '1') then
					next_state <= light_off;
				END IF;
		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS
Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN start =>		
				led <= '0';
				
			WHEN light_on =>		
				If (enable = '1' AND button = '0') then
					led <= '1';
				End if;
			WHEN light_off =>		
				led <= '0';
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM2;