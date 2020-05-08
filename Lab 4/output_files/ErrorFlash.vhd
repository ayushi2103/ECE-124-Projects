library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Error_SM IS
   PORT
	(
			 clk_input 	: in 	std_logic;
			 rst_n		: in 	std_logic;
			 INPUT1 	   : in  std_logic_vector(6 downto 0);	--when button 3 pressed
			 INPUT2		: in  std_logic_vector(6 downto 0);
			 Selector	: in 	std_logic;
			 OUTPUT		: out std_logic_vector(6 downto 0)
        );
END Error_SM;

----------------------------------------------------------------------------------------------------
--
--ARCHITECTURE code OF ErrorFlash IS
--BEGIN
--
--
--with selector select 
--OUTPUT <= INPUT1 when '1',
--			 INPUT2 when '0';
--			 
--end code;

Architecture errorcode of Error_SM is
 

 
 TYPE STATE_NAMES IS (start, error_on, error_off);   -- list all the STATE_NAMES values

 
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
		current_state <= next_state;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (INPUT1, INPUT2, Selector, current_state)
BEGIN
     CASE current_state IS
	  
         WHEN start =>		
				IF( Selector = '1') THEN
					next_state <= error_off;
				ELSE 
					next_state <= start;
				END IF;
				
			WHEN error_on =>
				IF( Selector = '0') THEN
					next_state <= start;
				ELSE
					next_state <= error_off;
				END IF;
				
			WHEN error_off =>
				IF( Selector = '0') THEN
					next_state <= start;
				ELSE
					next_state <= error_on;
				END IF;
				
			WHEN Others =>
					next_state <= start;
			
	 END CASE;
END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (INPUT1, INPUT2, Selector, current_state) 

BEGIN
     CASE current_state IS
         WHEN start =>
				OUTPUT <= INPUT2;
				
			WHEN error_on =>
				OUTPUT <= INPUT2;
			
			WHEN error_off =>
				OUTPUT <= INPUT1;
	END CASE;
 END PROCESS;

 END ARCHITECTURE errorcode;