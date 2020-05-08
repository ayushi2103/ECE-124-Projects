library ieee;
use ieee.std_logic_1164.all;

entity Compx4 is
port (
		inp_A 			: in std_logic_vector(3 downto 0); -- Takes the input currrent temperature (A)
		inp_B		 		: in std_logic_vector(3 downto 0); -- Takes the input desired temperature (B)
		AGTB				: out std_logic; -- output if A>B
		AEQB				: out std_logic; -- output if A=B
		ALTB				: out std_logic  -- output if A<B
);

end entity Compx4;

architecture comp_main_logic of Compx4 is

component Compx1 port (        -- declaring the component of Compx1 to be used later in the code
		A			: in std_logic;
		B			: in std_logic;
		GT			: out std_logic;
		EQ			: out std_logic;
		LT			: out std_logic
		);
end component;
 -- output signals created to store the value from each 1-bit comparator
	signal A3GTB3	: std_logic;
	signal A3EQB3	: std_logic;
	signal A3LTB3	: std_logic;

	signal A2GTB2	: std_logic;
	signal A2EQB2	: std_logic;
	signal A2LTB2	: std_logic;

	signal A1GTB1	: std_logic;
	signal A1EQB1	: std_logic;
	signal A1LTB1	: std_logic;

	signal A0GTB0	: std_logic;
	signal A0EQB0	: std_logic;
	signal A0LTB0	: std_logic;

begin

-- Instantiating Compx1 for getting the values of greater than, equal to and less than for each respective comparable bit
	INST1 : Compx1 port map(inp_A(3), inp_B(3), A3GTB3, A3EQB3, A3LTB3); -- for A3 and B3
	INST2 : Compx1 port map(inp_A(2), inp_B(2), A2GTB2, A2EQB2, A2LTB2); -- for A2 and B2
	INST3 : Compx1 port map(inp_A(1), inp_B(1), A1GTB1, A1EQB1, A1LTB1); -- for A1 and B1
	INST4 : Compx1 port map(inp_A(0), inp_B(0), A0GTB0, A0EQB0, A0LTB0); -- for A0 and B0

-- Logic for getting the values of output of the 4-bit comparator
	AGTB <= A3GTB3 OR (A2GTB2 AND A3EQB3) OR (A1GTB1 AND A2EQB2 AND A3EQB3) OR (A0GTB0 AND A1EQB1 AND A2EQB2 AND A3EQB3);
	AEQB <= A3EQB3 AND A2EQB2 AND A1EQB1 AND A0EQB0;
	ALTB <= A3LTB3 OR (A2LTB2 AND A3EQB3) OR (A1LTB1 AND A2EQB2 AND A3EQB3) OR (A0LTB0 AND A1EQB1 AND A2EQB2 AND A3EQB3);

end comp_main_logic;