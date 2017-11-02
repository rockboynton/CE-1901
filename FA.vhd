--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Partial Adder Component

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  A, a vector of the unsigned binary code, to be added to B
--         B, a vector of the unsigned binary code, to be added to A
--         Cin, carry in, allows Full Adders to be chained together
--Outputs: S, a vector of the output, the sum of A and B
--         Cout, carry bit of the addition of A and B
entity FA is 
	port(Af: in std_logic;
	     Bf: in std_logic;
		  Cinf: in std_logic;
		  Sf: out std_logic;
		  Coutf: out std_logic);
		  
end entity FA;

--SOP expression for sum and carry outputs
architecture DATAFLOW of FA is 
begin

Sf <= Af xor Bf xor Cinf;
Coutf <= (Af and Bf) or (Af and Cinf) or (Bf and Cinf);

end architecture DATAFLOW;