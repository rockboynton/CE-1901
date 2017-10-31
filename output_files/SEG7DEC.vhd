library IEEE;
use IEEE.std_logic_1164.all;

entity MULT5 is 
	port (
		A: in std_logic_vector(3 downto 0);	
		G: in std_logic;
		Y: out std_logic_vector(7 downto 0)
);
end entity MULT5;