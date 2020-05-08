library ieee;
use ieee.std_logic_1164.all;


entity concatenate_sum_mux is
port(
	inp1			: in std_logic_vector(7 downto 0);   -- concatenate input
	inp2			: in std_logic_vector(7 downto 0);   -- sum input
	mux_select	: in std_logic;   						 -- pb(3) as selector
	output		: out std_logic_vector(7 downto 0) 	 -- 8 bit output
);

end entity concatenate_sum_mux;

architecture mux_logic of concatenate_sum_mux is

begin

-- for multiplexing the concatenate and sum of hex_A and hex_B 

with mux_select select

output <= inp1 when '1',  -- concatenate input should be outputted when pb(3) is 0 but we are inverting here
			 inp2 when '0';  -- sum input should be outputted when pb(3) is 1 but we are inverting here
			 
end mux_logic;