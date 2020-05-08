library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MOORE_SM IS Port
(
			clk_input, rst_n, Extender_en, Extend_tog						: in std_logic;
			leds 																		: in std_logic_vector(3 downto 0);
			shift_reg_en, shift_reg_dir, Extender_out, Grappler_en	: out std_logic
 );
END ENTITY;

 Architecture SM of MOORE_SM is

 TYPE STATE_NAME IS (Start,Extending,Extender_hold, Extended, Retracting, Retracter_hold, Retracted);   -- All the STATE_NAME values which are start, extender extending, extender hold, fully extended, retracting, retracter hold and fully retracted  

 
 SIGNAL current_state, next_state	:  STATE_NAME;     	-- signals of type STATE_NAME


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

 -- Here Extend_tog is the input from the push button pb(1)

-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (Extender_en, Extend_tog, leds, current_state) -- Sensitivity list

BEGIN
     CASE current_state IS
         WHEN Start =>	
				next_state <= Start;
				IF(Extender_en ='1' AND Extend_tog='0') THEN
					next_state <= Extending;  -- If the push button is pressed and extender enable is 1, then the next state should be extending
				END IF;

         WHEN Extending =>	
				next_state <= Extending;
				IF(leds = "1111") THEN
					next_state <= Extended;  -- If the leds(7..4) are all lighted up, then that means the extender is fully extended and we need to move to the extended state
				ELSIF (Extend_tog = '1') THEN
					next_state <= Extender_hold;  -- If we release the push button midway, then we should move to the hold state
					END IF;
				

         WHEN Extender_hold =>	
				next_state <= Extender_hold;
				IF(Extend_tog='0') THEN
					next_state <= Extending;  -- If we again press the push button, it should resume extending
				END IF;
				
         WHEN Extended =>		
				next_state <= Extended;
				IF(Extend_tog='0') THEN
					next_state <= Retracting;  -- Here when the push button is presses, it would retract now
				END IF;

         WHEN Retracting =>	
				next_state <= Retracting;
				IF(leds = "0000")THEN
					next_state <= Retracted;  -- If all the leds are down, then that means the extender has retracted so we move to that state
				ELSIF (Extend_tog = '1') THEN
					next_state <= 	Retracter_hold; -- Similarly if we release the button midway, it is now in hold state
					END IF;

         WHEN Retracter_hold =>	
				next_state <= Retracter_hold;
				IF(Extend_tog='0') THEN
					next_state <= Retracting;  -- If the button is pressed again, it should keep on retracting
					END IF;
				
         WHEN Retracted =>	
				next_state <= Retracted;
				IF(Extend_tog='0' AND Extender_en ='1') THEN
					next_state <= Extending;  -- After it has been retracted and we press the push button along with the enabler being 1, it should start extending again
				END IF;
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS
Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
         WHEN Start =>		
			shift_reg_en <= '0';  -- Everything should be 0 because we don't want to do anything
			shift_reg_dir <= '0';
			Extender_out <= '0';
			Grappler_en <= '0';
	
         WHEN Extending =>		-- Here since leds should increase to the right, shift_reg_dir is 1 along with enable and the extender will be out
			shift_reg_en <= '1';
			shift_reg_dir <= '1';
			Extender_out <= '1';
			Grappler_en <= '0';
			
			WHEN Extended =>		-- when it is extended, we can use the grappler, so grappler_en is 1
			shift_reg_en <= '0';
			shift_reg_dir <= '0';
			Extender_out <= '1';
			Grappler_en <= '1';
			
			WHEN Retracting =>	-- While retracting the leds will go down in the left direction so shhift_reg_dir is 0	
			shift_reg_en <= '1';
			shift_reg_dir <= '0';
			Extender_out <= '1';
			Grappler_en <= '0';
			        
			WHEN Retracted =>		-- after the extender has been retracted, everything should be 0 because we cannot do anything
			shift_reg_en <= '0';
			shift_reg_dir <= '0';
			Extender_out <= '0';
			Grappler_en <= '0';
			
			WHEN others =>		  -- In all other cases, the extender will be open so its value is 1
			shift_reg_en <= '0';
			shift_reg_dir <= '0';
			Extender_out <= '1';
			Grappler_en <= '0';
	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;