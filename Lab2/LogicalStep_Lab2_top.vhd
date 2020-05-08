
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb					: in	std_logic_vector(3 downto 0);
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Used ---
------------------------------------------------------------------- 
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	component segment7_mux port (
		clk	: in std_logic := '0';
		DIN2	: in std_logic_vector(6 downto 0);
		DIN1	: in std_logic_vector(6 downto 0);
		DOUT	: out std_logic_vector(6 downto 0);
		DIG2	: out std_logic;
		DIG1	: out std_logic
	);
	end component;
	
	component concatenate_sum_mux port (
	inp1			: in std_logic_vector(7 downto 0);   -- concatenate input
	inp2			: in std_logic_vector(7 downto 0);   -- sum input
	mux_select	: in std_logic;   						 -- pb(3) as selector
	output		: out std_logic_vector(7 downto 0)	 -- 8 bit output
	);
	end component;
	
	component logic_processor port (
	inp1			: in std_logic_vector(3 downto 0);   -- hex_A input
	inp2			: in std_logic_vector(3 downto 0);   -- hex_B input
	pbs_inp		: in std_logic_vector(3 downto 0);   -- pbs(3..0) as input
   logic_func	: out std_logic_vector(3 downto 0)	 -- output, given by our inputs through push buttons
	);
	end component;
	

-- Defined logic vectors

	signal seg7_A		: std_logic_vector(6 downto 0);
	signal hex_A		: std_logic_vector(3 downto 0);
	signal seg7_B		: std_logic_vector(6 downto 0);
	signal hex_B		: std_logic_vector(7 downto 4);
	signal add_inpA	: std_logic_vector(7 downto 0);
	signal add_inpB	: std_logic_vector(7 downto 0);
	signal outp			: std_logic_vector(7 downto 0);
	signal outp2		: std_logic_vector(7 downto 0);
	signal log			: std_logic_vector(3 downto 0);
	
	
	signal arim_hex_A  : std_logic_vector(3 downto 0);
	signal arim_hex_B  : std_logic_vector(3 downto 0);
	signal concatenate : std_logic_vector(7 downto 0);
	signal sum			 : std_logic_vector(7 downto 0);
	signal concatenate2: std_logic_vector(7 downto 0);
	
-- Here the circuit begins

begin

	hex_A <= sw(3 downto 0); --takes input from switches(3-0)
	hex_B <= sw(7 downto 4); --takes input from switches(7-4)
	
	add_inpA <= std_logic_vector("0000" & hex_A); -- converts 4 bit hex_A signal to 8 bit by concatenating
	add_inpB <= std_logic_vector("0000" & hex_B); -- converts 4 bit hex_B signal to 8 bit by concatenating
	
	with pb select 										 -- converting the 8 bit output from the multiplexer into two 4 bit signals 
	arim_hex_A <=  outp(3 downto 0) when "1110",
						outp(3 downto 0) when "1101",
						outp(3 downto 0) when "1011",
						outp(3 downto 0) when "0111",
						outp(3 downto 0) when "1111",
						"1000" when others;            -- when more than one pb is pressed, 8 is shown on digit 2
	
	with pb select 
	arim_hex_B <=  outp(7 downto 4) when "1110",
						outp(7 downto 4) when "1101",
						outp(7 downto 4) when "1011",
						outp(7 downto 4) when "0111",
						outp(7 downto 4) when "1111",
						"1000" when others;				 -- when more than one pb is pressed, 8 is shown on digit 1
	
	concatenate <= std_logic_vector(hex_B & hex_A);						 -- combines the two 4 bit inputs to one 8 bit value
	
	sum <= std_logic_vector(unsigned(add_inpB)+unsigned(add_inpA)); -- adding add_inpA and add_inpB and storing the value (4 bit adder)
	
	concatenate2 <= std_logic_vector("0000" & log);						 -- this signal stores the 4 bit output as a concatenated 8 bit value coming from the logic processor  
	
	with pb select							-- LEDs output(which is the output from the multiplexer having inputs as sum and output of logic processor) when one or more pbs are pressed
	leds <= outp2 when "1110",		
			  outp2 when "1101",
			  outp2 when "1011",
			  outp2 when "0111",
			  outp2 when "1111",
			  "11111111" when others;	-- when more than one push button is pressed, all the LEDs will light up (error case)
				
	
		
-- COMPONENT HOOKUP

-- Instantiation of multiplexers, logic_processor and SevenSegment

	INST1: SevenSegment port map(arim_hex_A, seg7_A);								-- sending the 4 bit output of the mulitplexer to display on the digits
	INST2: SevenSegment port map(arim_hex_B, seg7_B);
	INST3: segment7_mux port map(clkin_50, seg7_A, seg7_B, seg7_data, seg7_char2, seg7_char1);
	
	INST4: concatenate_sum_mux port map(concatenate, sum, pb(3), outp);		-- depending on the input of pb(3) the output of the multiplexer will be concatenate or sum(of the hex signals)
	INST5: concatenate_sum_mux port map(concatenate2, sum, pb(3), outp2);	-- depending on the input of pb(3) the output of the multiplexer will be 8 bit output of the logic processor("0000"&log) or sum 
	INST6: logic_processor port map(hex_A, hex_B, pb, log);						-- depending on the input of pb(3-0) the output of the logic processor will be AND, OR or XOR of hex_A and hex_B
	
end SimpleCircuit;

