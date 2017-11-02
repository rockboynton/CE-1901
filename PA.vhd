--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Full Adder component 

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  Af, a vector of the unsigned binary code, to be added to B
--         Bf, a vector of the unsigned binary code, to be added to A
--         Cinf, carry in, allows CLAs to be chained together
--Outputs: Sf, a vector of the output, the sum of A and B
--         G, Generate signal output('1' if PA generates a carry bit)
--         P, propogate signal output('1' if PA propogates a carry bit)
entity PA is 
	port(Af: in std_logic;
	     Bf: in std_logic;
		  Cinf: in std_logic;
		  Sf: out std_logic;
		  G : out std_logic;
		  P : out std_logic);
		  
end entity PA;

--SOP for all outputs 
architecture DATAFLOW of PA is 
begin

Sf <= Af xor Bf xor Cinf;
G <= Af and Bf;
P <= Af or Bf;

end architecture DATAFLOW;