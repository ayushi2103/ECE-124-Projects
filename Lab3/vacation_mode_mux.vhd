library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity vacation_mode_mux is
   port (
			pb_button  		: in std_logic; -- pb(3) button (vacation mode)
			desired_temp		: in std_logic_vector(3 downto 0); -- input of desired temperature (B)
			fixed_setting		: out std_logic_vector(3 downto 0) -- output which will be either the desired temp or the fixed setting
        );
end entity vacation_mode_mux;

architecture logic_mux of vacation_mode_mux is
	 
begin

with pb_button select -- pb(3) is the selector
fixed_setting <= desired_temp when '1',-- when the pb is not pressed, the output should be the desired temp from switches
						"0100" when '0', -- Default vacation temp when the pb is pressed
						"0000" when others;	-- output for any other case

end logic_mux;