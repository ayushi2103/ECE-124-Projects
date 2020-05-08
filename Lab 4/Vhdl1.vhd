library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity vhdl IS Port
(
 clk_input,X_MOTION, Y_MOTION, Extender_Out,X_EQ,X_GT,X_LT,Y_EQ,Y_GT,Y_LT		    			: IN std_logic;
 rst_n 																							: in	std_logic  := '0';
 clk_en_X,clk_en_Y, Xcount,Ycount,ERROR_led,Extender_en									: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of vhdl is
 

 
 TYPE STATE_NAME_X IS (X_INIT,X_MOVE,X_STOP,X_ERROR);   -- list all the STATE_NAMES values

 TYPE STATE_NAME_Y IS (Y_INIT,Y_MOVE,Y_STOP,Y_ERROR);
 
 SIGNAL current_state_X, next_state_X	:  STATE_NAME_X;     	-- signals of type STATE_NAMES
 SIGNAL current_state_Y, next_state_Y	:  STATE_NAME_Y;     	-- signals of type STATE_NAMES
 
 SIGNAL EXTD_X : std_logic;
 SIGNAL EXTD_Y : std_logic;
 SIGNAL led_X  : std_logic := '0';
 SIGNAL led_Y : std_logic := '0';
 
 --signal EXTD_OUT :std_logic;
 
 
 BEGIN
--EXTD_OUT <= Extender_Out;
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state_X,next_state_Y)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state_X <= X_INIT;
		current_state_Y <= Y_INIT;
	ELSIF(rising_edge(clk_input)) THEN
		current_state_X <= next_state_X;
		current_state_Y <= next_state_Y;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section_X: PROCESS (current_state_X, X_MOTION, X_EQ, X_GT,X_LT, Extender_Out) 

BEGIN

     CASE current_state_X IS
         WHEN X_INIT =>
				next_state_X <= X_INIT;
				IF(X_MOTION = '0' AND X_EQ = '0' AND Extender_Out = '0')	THEN
					next_state_X <= X_MOVE;
				ELSIF (X_EQ = '1') THEN
					next_state_X <= X_STOP;
				END IF;

			WHEN X_MOVE =>	
				IF(Extender_Out = '1') THEN
					next_state_X <= X_ERROR;
				ELSIF (X_MOTION='0' AND (X_LT = '1' OR X_GT = '1')) THEN
					next_state_X <= X_MOVE;
				ELSIF(X_MOTION='1' OR X_EQ = '1') THEN
					next_state_X <= X_STOP;	
				END IF;
					
         WHEN X_STOP =>
				next_state_X <= X_STOP;
				IF(X_MOTION='0') THEN
					next_state_X <= X_MOVE;
				END IF;
				
			WHEN X_ERROR =>
				next_state_X <= X_ERROR;
				IF(Extender_Out = '0') THEN
					next_state_X <= X_STOP;
				END IF;
 		END CASE;
 END PROCESS;
 
 -- DECODER SECTION PROCESS

Decoder_Section_X: PROCESS (current_state_X, X_MOTION, X_EQ, X_GT,X_LT, Extender_Out) 

BEGIN
     CASE current_state_X IS
			WHEN X_INIT =>
				EXTD_X <= '0';
         WHEN X_MOVE =>
				EXTD_X <= '0';
				clk_en_X <= '1';
				IF(X_MOTION='0' AND X_GT = '1') THEN
					Xcount <= '0';
				ELSIF(X_MOTION='1' OR X_EQ = '1') THEN
					clk_en_X <= '0';
				ELSIF (X_MOTION='0' AND X_LT = '1') THEN
					Xcount <= '1';
				END IF;
			
			WHEN X_STOP =>
				EXTD_X <= '0';
				IF (X_EQ = '1') THEN
					EXTD_X <= '1';
				END IF;
				
			WHEN X_ERROR =>
				led_X <= '1';
				IF(Extender_Out = '0') THEN
					led_X <= '0';
				END IF;
		END CASE;
END PROCESS;


 Transition_Section_Y: PROCESS (current_state_Y, Y_MOTION, Y_EQ, Y_GT,Y_LT, Extender_Out) 

BEGIN
     CASE current_state_Y IS
         WHEN Y_INIT =>
				next_state_Y <= Y_INIT;
				IF(Y_MOTION = '0' AND Y_EQ = '0' AND Extender_Out = '0')	THEN
					next_state_Y <= Y_MOVE;
				ELSIF (Y_EQ = '1') THEN
					next_state_Y <= Y_STOP;
				ELSIF (Extender_Out = '1') THEN
					next_state_Y <= Y_ERROR;
				END IF;

			WHEN Y_MOVE =>
				IF (Extender_Out = '1') THEN
					next_state_Y <= Y_ERROR;		
				ELSIF(Y_MOTION='0' AND (Y_LT = '1' OR Y_GT = '1')) THEN
					next_state_Y <= Y_MOVE;
				ELSIF(Y_MOTION='1' OR Y_EQ = '1') THEN
					next_state_Y <= Y_STOP;
				END IF;
					
         WHEN Y_STOP =>
				next_state_Y <= Y_STOP;
				IF(Y_MOTION='0') THEN
					next_state_Y <= Y_MOVE;
				END IF;
				
			WHEN Y_ERROR =>
				next_state_Y <= Y_ERROR;
				IF(Extender_Out = '0') THEN
					next_state_Y <= Y_STOP;
				END IF;
 		END CASE;
END PROCESS;
 
  -- DECODER SECTION PROCESS

Decoder_Section_Y: PROCESS (current_state_Y, Y_MOTION, Y_EQ, Y_GT,Y_LT, Extender_Out) 

BEGIN
     CASE current_state_Y IS
			WHEN Y_INIT =>
				EXTD_Y <= '0';
         WHEN Y_MOVE =>
				EXTD_Y <= '0';
				clk_en_Y <= '1';
				IF(Y_MOTION='0' AND Y_GT = '1') THEN
					Ycount <= '0';
				ELSIF(Y_MOTION='1' OR Y_EQ = '1') THEN
					clk_en_Y <= '0';
				ELSIF (Y_MOTION='0' AND Y_LT = '1') THEN
					Ycount <= '1';
				END IF;
			
			WHEN Y_STOP =>
				EXTD_Y <= '0';
				IF (Y_EQ = '1') THEN
					EXTD_Y <= '1';
				END IF;
				
			WHEN Y_ERROR =>
				led_Y <= '1';
				IF(Extender_Out = '0') THEN
					led_Y <= '0';
				END IF;
	END CASE;
END PROCESS;

 
 ERROR_led <= led_X OR led_Y;
 Extender_en <= EXTD_X AND EXTD_Y;
 
 END ARCHITECTURE SM;
 
 
 
 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity abcd IS Port
(
 clk_input,X_MOTION, Y_MOTION, Extender_Out,X_EQ,X_GT,X_LT,Y_EQ,Y_GT,Y_LT		    			: IN std_logic;
 rst_n 																							: in	std_logic  := '0';
 clk_en_X,clk_en_Y, Xcount,Ycount,ERROR_led,Extender_en									: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of abcd is
 

 
 TYPE STATE_NAME IS (INIT,MOVE,STOP,ERROR);   -- list all the STATE_NAMES values
 
 SIGNAL current_state_X, next_state_X	:  STATE_NAME;     	-- signals of type STATE_NAME
 SIGNAL current_state_Y, next_state_Y	:  STATE_NAME;     	-- signals of type STATE_NAME
 
 SIGNAL EXTD_X : std_logic;
 SIGNAL EXTD_Y : std_logic;
 SIGNAL led_X  : std_logic := '0';
 SIGNAL led_Y : std_logic := '0';
 
 --signal EXTD_OUT :std_logic;
 
 
 BEGIN
--EXTD_OUT <= Extender_Out;
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state_X,next_state_Y)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state_X <= INIT;
		current_state_Y <= INIT;
	ELSIF(rising_edge(clk_input)) THEN
		current_state_X <= next_state_X;
		current_state_Y <= next_state_Y;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section_X: PROCESS (current_state_X, X_MOTION, X_EQ, X_GT,X_LT, Extender_Out) 

BEGIN

     CASE current_state_X IS
         WHEN INIT =>
				next_state_X <= INIT;
				IF(X_MOTION = '0' AND X_EQ = '0' AND Extender_Out = '0')	THEN
					next_state_X <= MOVE;
				ELSIF (X_EQ = '1') THEN
					next_state_X <= STOP;
				END IF;

			WHEN MOVE =>	
				IF(Extender_Out = '1') THEN
					next_state_X <= ERROR;
				ELSIF (X_MOTION='0' AND (X_LT = '1' OR X_GT = '1')) THEN
					next_state_X <= MOVE;
				ELSIF(X_MOTION='1' OR X_EQ = '1') THEN
					next_state_X <= STOP;	
				END IF;
					
         WHEN STOP =>
				next_state_X <= STOP;
				IF(X_MOTION='0') THEN
					next_state_X <= MOVE;
				END IF;
				
			WHEN ERROR =>
				next_state_X <= ERROR;
				IF(Extender_Out = '0') THEN
					next_state_X <= STOP;
				END IF;
 		END CASE;
 END PROCESS;
 
 -- DECODER SECTION PROCESS

Decoder_Section_X: PROCESS (current_state_X, X_MOTION, X_EQ, X_GT,X_LT, Extender_Out) 

BEGIN
     CASE current_state_X IS
			WHEN INIT =>
				EXTD_X <= '0';
         WHEN MOVE =>
				EXTD_X <= '0';
				clk_en_X <= '1';
				IF(X_MOTION='0' AND X_GT = '1') THEN
					Xcount <= '0';
				ELSIF(X_MOTION='1' OR X_EQ = '1') THEN
					clk_en_X <= '0';
				ELSIF (X_MOTION='0' AND X_LT = '1') THEN
					Xcount <= '1';
				END IF;
			
			WHEN STOP =>
				EXTD_X <= '0';
				IF (X_EQ = '1') THEN
					EXTD_X <= '1';
				END IF;
				
			WHEN ERROR =>
				led_X <= '1';
				IF(Extender_Out = '0') THEN
					led_X <= '0';
				END IF;
		END CASE;
END PROCESS;


 Transition_Section_Y: PROCESS (current_state_Y, Y_MOTION, Y_EQ, Y_GT,Y_LT, Extender_Out) 

BEGIN
     CASE current_state_Y IS
         WHEN INIT =>
				next_state_Y <= INIT;
				IF(Y_MOTION = '0' AND Y_EQ = '0' AND Extender_Out = '0')	THEN
					next_state_Y <= MOVE;
				ELSIF (Y_EQ = '1') THEN
					next_state_Y <= STOP;
				ELSIF (Extender_Out = '1') THEN
					next_state_Y <= ERROR;
				END IF;

			WHEN MOVE =>
				IF (Extender_Out = '1') THEN
					next_state_Y <= ERROR;		
				ELSIF(Y_MOTION='0' AND (Y_LT = '1' OR Y_GT = '1')) THEN
					next_state_Y <= MOVE;
				ELSIF(Y_MOTION='1' OR Y_EQ = '1') THEN
					next_state_Y <= STOP;
				END IF;
					
         WHEN STOP =>
				next_state_Y <= STOP;
				IF(Y_MOTION='0') THEN
					next_state_Y <= MOVE;
				END IF;
				
			WHEN ERROR =>
				next_state_Y <= ERROR;
				IF(Extender_Out = '0') THEN
					next_state_Y <= STOP;
				END IF;
 		END CASE;
END PROCESS;
 
  -- DECODER SECTION PROCESS

Decoder_Section_Y: PROCESS (current_state_Y, Y_MOTION, Y_EQ, Y_GT,Y_LT, Extender_Out) 

BEGIN
     CASE current_state_Y IS
			WHEN INIT =>
				EXTD_Y <= '0';
         WHEN MOVE =>
				EXTD_Y <= '0';
				clk_en_Y <= '1';
				IF(Y_MOTION='0' AND Y_GT = '1') THEN
					Ycount <= '0';
				ELSIF(Y_MOTION='1' OR Y_EQ = '1') THEN
					clk_en_Y <= '0';
				ELSIF (Y_MOTION='0' AND Y_LT = '1') THEN
					Ycount <= '1';
				END IF;
			
			WHEN STOP =>
				EXTD_Y <= '0';
				IF (Y_EQ = '1') THEN
					EXTD_Y <= '1';
				END IF;
				
			WHEN ERROR =>
				led_Y <= '1';
				IF(Extender_Out = '0') THEN
					led_Y <= '0';
				END IF;
	END CASE;
END PROCESS;

 
 ERROR_led <= led_X OR led_Y;
 Extender_en <= EXTD_X AND EXTD_Y;
 
 END ARCHITECTURE SM;
 
 
 
 
 
 
 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ghj IS Port
(
 clk_input,X_MOTION, Y_MOTION, Extender_Out,X_EQ,X_GT,X_LT,Y_EQ,Y_GT,Y_LT		    			: IN std_logic;
 rst_n 																							: in	std_logic  := '0';
 clk_en_X,clk_en_Y, Xcount,Ycount,ERROR_led,Extender_en									: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of ghj is
 

 
 TYPE STATE_NAME IS (INIT,X_MOVE,X_STOP,X_ERROR,Y_MOVE,Y_STOP,Y_ERROR);   -- list all the STATE_NAMES values
 
 SIGNAL current_state, next_state	:  STATE_NAME;     	-- signals of type STATE_NAME
 
 SIGNAL EXTD_X : std_logic;
 SIGNAL EXTD_Y : std_logic;
 SIGNAL led_X  : std_logic := '0';
 SIGNAL led_Y : std_logic := '0';
 
 --signal EXTD_OUT :std_logic;
 
 
 BEGIN
--EXTD_OUT <= Extender_Out;
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= INIT;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_state;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state, X_MOTION, Y_MOTION, X_EQ, X_GT,X_LT, Y_EQ, Y_GT, Y_LT, Extender_Out) 

BEGIN

     CASE current_state IS
         
			WHEN INIT =>
				next_state <= INIT;
				IF(X_MOTION = '0' AND X_EQ = '0' AND Extender_Out = '0')	THEN
					next_state <= X_MOVE;
				ELSIF (X_EQ = '1') THEN
					next_state <= X_STOP;
				END IF;
				IF(Y_MOTION = '0' AND Y_EQ = '0' AND Extender_Out = '0')	THEN
					next_state <= Y_MOVE;
				ELSIF (Y_EQ = '1') THEN
					next_state <= Y_STOP;
				END IF;

			WHEN X_MOVE =>	
				IF(Extender_Out = '1') THEN
					next_state <= X_ERROR;
				ELSIF (X_MOTION='0' AND (X_LT = '1' OR X_GT = '1')) THEN
					next_state <= X_MOVE;
				ELSIF(X_MOTION='1' OR X_EQ = '1') THEN
					next_state <= X_STOP;	
				END IF;
					
         WHEN X_STOP =>
				next_state <= X_STOP;
				IF(X_MOTION='0') THEN
					next_state <= X_MOVE;
				END IF;
				
			WHEN X_ERROR =>
				next_state <= X_ERROR;
				IF(Extender_Out = '0') THEN
					next_state <= X_STOP;
				END IF;
				
			WHEN Y_MOVE =>
				IF (Extender_Out = '1') THEN
					next_state <= Y_ERROR;		
				ELSIF(Y_MOTION='0' AND (Y_LT = '1' OR Y_GT = '1')) THEN
					next_state <= Y_MOVE;
				ELSIF(Y_MOTION='1' OR Y_EQ = '1') THEN
					next_state <= Y_STOP;
				END IF;
					
         WHEN Y_STOP =>
				next_state <= Y_STOP;
				IF(Y_MOTION='0') THEN
					next_state <= Y_MOVE;
				END IF;
				
			WHEN Y_ERROR =>
				next_state <= Y_ERROR;
				IF(Extender_Out = '0') THEN
					next_state <= Y_STOP;
				END IF;
 		END CASE;
 END PROCESS;
 
 -- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state, X_MOTION, Y_MOTION, X_EQ, X_GT,X_LT, Y_EQ, Y_GT, Y_LT, Extender_Out) 

BEGIN
     CASE current_state IS
	  
			WHEN INIT =>
				EXTD_X <= '0';
				EXTD_Y <= '0';
         
			WHEN X_MOVE =>
				EXTD_X <= '0';
				clk_en_X <= '1';
				IF(X_MOTION='0' AND X_GT = '1') THEN
					Xcount <= '0';
				ELSIF(X_MOTION='1' OR X_EQ = '1') THEN
					clk_en_X <= '0';
				ELSIF (X_MOTION='0' AND X_LT = '1') THEN
					Xcount <= '1';
				END IF;
			
			WHEN X_STOP =>
				EXTD_X <= '0';
				IF (X_EQ = '1') THEN
					EXTD_X <= '1';
				END IF;
				
			WHEN X_ERROR =>
				led_X <= '1';
				IF(Extender_Out = '0') THEN
					led_X <= '0';
				END IF;
				
			WHEN Y_MOVE =>
				EXTD_Y <= '0';
				clk_en_Y <= '1';
				IF(Y_MOTION='0' AND Y_GT = '1') THEN
					Ycount <= '0';
				ELSIF(Y_MOTION='1' OR Y_EQ = '1') THEN
					clk_en_Y <= '0';
				ELSIF (Y_MOTION='0' AND Y_LT = '1') THEN
					Ycount <= '1';
				END IF;
			
			WHEN Y_STOP =>
				EXTD_Y <= '0';
				IF (Y_EQ = '1') THEN
					EXTD_Y <= '1';
				END IF;
				
			WHEN Y_ERROR =>
				led_Y <= '1';
				IF(Extender_Out = '0') THEN
					led_Y <= '0';
				END IF;
		END CASE;
END PROCESS;

 ERROR_led <= led_X OR led_Y;
 Extender_en <= EXTD_X AND EXTD_Y;
 
 END ARCHITECTURE SM;
 
 
 
 
 
 
 
 
 
 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity dadada IS Port
(
 clk_input, rst_n, Extender_en, Extend_tog					: IN std_logic;
 leds 	: IN std_logic_vector(3 downto 0);
 shift_reg_en, shift_reg_dir, Extender_out, Grappler_en									: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of dadada is
 


 TYPE STATE_NAMES IS (Start,Extending,Extender_hold, Extended, Retracting, Retracter_hold, Retracted);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= Start;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (Extender_en, Extend_tog, leds, current_state) 

BEGIN
     CASE current_state IS
         WHEN Start =>	
				next_state <= Start;
				IF(Extender_en ='1' AND Extend_tog='0') THEN
					next_state <= Extending;
				END IF;

         WHEN Extending =>	
				next_state <= Extending;
				IF(leds = "1111") THEN
					next_state <= Extended;
				ELSIF (Extend_tog = '1') THEN
					next_state <= Extender_hold;
					END IF;
				

         WHEN Extender_hold =>	
				next_state <= Extender_hold;
				IF(Extend_tog='0') THEN
					next_state <= Extending;
				END IF;
				
         WHEN Extended =>		
				next_state <= Extended;
				IF(Extend_tog='0') THEN
					next_state <= Retracting;
				END IF;

         WHEN Retracting =>	
				next_state <= Retracting;
				IF(leds = "0000")THEN
					next_state <= Retracted;
				ELSIF (Extend_tog = '1') THEN
					next_state <= 	Retracter_hold;
					END IF;

         WHEN Retracter_hold =>	
				next_state <= Retracter_hold;
				IF(Extend_tog='0') THEN
					next_state <= Retracting;
					END IF;
				
         WHEN Retracted =>	
				next_state <= Retracted;
				IF(Extend_tog='0' AND Extender_en ='1') THEN
					next_state <= Extending;
				END IF;
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS
Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN Start =>		
			shift_reg_en <= '0';
			shift_reg_dir <= '0';
			Extender_out <= '0';
			Grappler_en <= '0';
	
         WHEN Extending =>		
			shift_reg_en <= '1';
			shift_reg_dir <= '1';
			Extender_out <= '1';
			Grappler_en <= '0';
			
			WHEN Extended =>		
			shift_reg_en <= '0';
			shift_reg_dir <= '0';
			Extender_out <= '1';
			Grappler_en <= '1';
			
			WHEN Retracting =>		
			shift_reg_en <= '1';
			shift_reg_dir <= '0';
			Extender_out <= '1';
			Grappler_en <= '0';
			        
			WHEN Retracted =>		
			shift_reg_en <= '0';
			shift_reg_dir <= '0';
			Extender_out <= '0';
			Grappler_en <= '0';
			
			WHEN others =>		
			shift_reg_en <= '0';
			shift_reg_dir <= '0';
			Extender_out <= '1';
			Grappler_en <= '0';
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;