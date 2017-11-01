--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Half Adder component 

library IEEE;
use IEEE.std_logic_1164.all;

entity HA is 
	port(Ah: in std_logic;
	     Bh: in std_logic;
		  Sh: out std_logic;
		  Couth: out std_logic);
		  
end entity HA;

architecture DATAFLOW of HA is 
begin

Sh <= Ah xor Bh;
Couth <= Ah and Bh;

end architecture DATAFLOW;
