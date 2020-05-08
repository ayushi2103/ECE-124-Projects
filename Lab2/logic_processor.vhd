library ieee;
use ieee.std_logic_1164.all;


entity logic_processor is
port(
	inp1			: in std_logic_vector(3 downto 0);   -- hex_A input
	inp2			: in std_logic_vector(3 downto 0);   -- hex_B input
	pbs_inp		: in std_logic_vector(3 downto 0);   -- pbs(3..0) as input
   logic_func	: out std_logic_vector(3 downto 0)	 -- output, given by our inputs through push buttons
);

end entity logic_processor;

architecture process_log of logic_processor is

begin

with pbs_inp(3 downto 0) select
logic_func <=   inp1 AND inp2 when "1110", --when only pb(0) is pressed, AND is executed
					 inp1 OR inp2 when "1101",	 --when only pb(1) is pressed, OR is executed
					 inp1 XOR inp2 when "1011", --when only pb(2) is pressed, XOR is executed
					 "0000" when others;			 --for all other combinations, the output is nothing
			 
end process_log;