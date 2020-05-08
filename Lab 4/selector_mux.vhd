library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


-- ****************************************************************************
-- *  Entity                                                                  *
-- ****************************************************************************

entity selector_mux is
   port (
		    pb			: in std_logic; --button 3 input
			 INPUT1 	   : in  std_logic_vector(3 downto 0);	--when button 3 pressed
			 INPUT2		: in  std_logic_vector(3 downto 0); 
			 OUTPUT		: out std_logic_vector(3 downto 0)
        );
end entity selector_mux;

-- *****************************************************************************
-- *  Architecture                                                             *
-- *****************************************************************************

architecture logic of selector_mux is
	
	
   
begin
	with pb select
			OUTPUT <= INPUT1 when '1',
						 INPUT2 when '0';

end architecture logic;