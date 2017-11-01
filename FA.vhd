--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Full Adder component 

library IEEE;
use IEEE.std_logic_1164.all;

entity FA is 
	port(Af: in std_logic;
	     Bf: in std_logic;
		  Cinf: in std_logic;
		  Sf: out std_logic;
		  Coutf: out std_logic);
		  
end entity FA;

architecture DATAFLOW of FA is 
begin

Sf <= Af xor Bf xor Cinf;
Coutf <= (Af and Bf) or (Af and Cinf) or (Bf and Cinf);

end architecture DATAFLOW;
