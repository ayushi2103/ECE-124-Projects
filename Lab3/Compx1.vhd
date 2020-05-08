
library ieee;
use ieee.std_logic_1164.all;

entity Compx1 is
port (
		A			: in std_logic; -- 1 bit input from A
		B			: in std_logic; -- 1 bit input from B
		GT			: out std_logic; -- output for greater than (A>B)
		EQ			: out std_logic; -- output for equal to (A=B)
		LT			: out std_logic -- output for less than (A<B)
);

end entity Compx1;

architecture comp_logic of Compx1 is

begin

	GT <= A AND NOT(B); -- logic for getting the value of GT(A>B)
	EQ <= A XNOR B; -- logic for getting the value of EQ(A=B)
	LT <= NOT(A) AND B; -- logic for getting the value of LT(A<B)

		
end comp_logic;
