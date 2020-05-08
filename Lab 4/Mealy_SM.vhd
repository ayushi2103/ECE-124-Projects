library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MEALY_SM IS Port
(
			clk_input,X_MOTION, Y_MOTION, Extender_Out,X_EQ,X_GT,X_LT,Y_EQ,Y_GT,Y_LT	: in std_logic;
			rst_n 																							: in	std_logic  := '0';
			clk_en_X,clk_en_Y, Xcount,Ycount,ERROR_led,Extender_en							: out std_logic
 );
END ENTITY;
 
 Architecture SM of MEALY_SM is
 
 TYPE STATE_NAME IS (INIT,MOVE,STOP,ERROR);   -- All of the STATE_NAME values which are initial, moving, stopped and error
 
 SIGNAL current_state, next_state	:  STATE_NAME;     	-- signal of the type STATE_NAME
 
 BEGIN
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= INIT;  -- current_state will be inital state when we reset the clock
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_state;  -- current_state will become next_state on rising edge of the clock
	END IF;
END PROCESS;	

-- Here X_MOTION is pb(3) and Y_MOTION is pb(2)

-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state, X_MOTION, Y_MOTION, X_EQ, X_GT,X_LT, Y_EQ, Y_GT, Y_LT, Extender_Out) -- Sensitivity list 

BEGIN

     CASE current_state IS
         
			WHEN INIT =>
				next_state <= INIT;
				IF((X_MOTION = '0' OR Y_MOTION = '0') AND X_EQ = '0' AND Y_EQ = '0' AND Extender_Out = '0')	THEN
					next_state <= MOVE;		-- If either pb(3) or pb(2) is pressed, along with both Y and X equal to 0 and the extender is not out then we should move the digits to reach targeted value
				ELSIF (X_EQ = '1' AND Y_EQ = '1') THEN
					next_state <= STOP;     -- If the X and Y equal to 1, then we must stop the changing values on the digits
				END IF;

			WHEN MOVE =>	
				IF(Extender_Out = '1') THEN
					next_state <= ERROR;    -- If the extender is out, then we must get an error while trying to change the coordinates
				ELSIF ((X_MOTION='0' OR Y_MOTION = '0') AND (X_EQ = '0' AND Y_EQ = '0')) THEN
					next_state <= MOVE;     -- If either of the push buttons are pressed and X and Y are not equal, then we must keep on going till we reach the target 
				ELSIF(X_MOTION='1' AND Y_MOTION = '1' AND X_EQ = '1' AND Y_EQ = '1') THEN
					next_state <= STOP;	   -- If not pb is pressed and X and Y are equal to 1, then we must stop
				END IF;
					
         WHEN STOP =>
				next_state <= STOP;
				IF(X_MOTION='0' OR Y_MOTION = '0') THEN
					next_state <= MOVE;    -- If we press the pb again, then we must start moving
				END IF;
				
			WHEN ERROR =>
				next_state <= ERROR;
				IF(Extender_Out = '0') THEN
					next_state <= STOP;    -- If extender is not out, then we must stop
				END IF;
				
 		END CASE;
 END PROCESS;
 
 -- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state, X_MOTION, Y_MOTION, X_EQ, X_GT,X_LT, Y_EQ, Y_GT, Y_LT, Extender_Out) 

BEGIN
     CASE current_state IS
	  
			WHEN INIT =>
				Extender_en <= '0';   -- In the initial stage, giving the extender enable a value of 0
         
			WHEN MOVE =>
				Extender_en <= '0';
				clk_en_X <= '1';    -- enabling X for the Up/Down binary counter
				clk_en_Y <= '1';    -- enabling Y for the Up/Down binary counter
				IF(X_MOTION='0' AND X_GT = '1') THEN
					Xcount <= '0';   -- If pb(3) is pressed and current coordinates are greater than targeted, so we must go down to get to the targeted one, that is why Xcount = 0
				ELSIF(X_MOTION='1' OR X_EQ = '1') THEN
					clk_en_X <= '0'; -- If it becomes equal, then we disable the enabler
				ELSIF(X_MOTION='0' AND X_LT = '1') THEN
					Xcount <= '1';   -- If pb(3) is pressed and current coordinates are less than targeted, so we must go up to get to the targeted one, that is why Xcount = 1
				END IF;
				-- Similarly for Y coordinates
				IF(Y_MOTION='0' AND Y_GT = '1') THEN
					Ycount <= '0';
				ELSIF(Y_MOTION='1' OR Y_EQ = '1') THEN
					clk_en_Y <= '0';
				ELSIF (Y_MOTION='0' AND Y_LT = '1') THEN
					Ycount <= '1';
				END IF;
			
			WHEN STOP =>
				Extender_en <= '0';  -- Keeping its value 0
				IF (X_EQ = '1' AND Y_EQ = '1') THEN
					Extender_en <= '1';   -- Only when the X and Y coordinates are in their targeted values, we can open the extender
				END IF;
				
			WHEN ERROR =>
				ERROR_led <= '1';   -- When in error state, the value of led should be 1
				IF(Extender_Out = '0') THEN
					ERROR_led <= '0';  -- If extender is not out, then led should not light up
				END IF;
				
		END CASE;
END PROCESS;

 END ARCHITECTURE SM;