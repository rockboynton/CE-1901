--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Full Adder component 

library IEEE;
use IEEE.std_logic_1164.all;

entity CLC is 
	port(A: in std_logic_vector(7 downto 0);
	     B: in std_logic_vector(7 downto 0);
		  C: out std_logic_vector(7 downto 0));
		  
end entity CLC;

architecture DATAFLOW of CLC is 

signal G : std_logic_vector(7 downto 0);
signal P : std_logic_vector(7 downto 0);

begin

G <= A and B;
P <= A or B;

C(0) <= G(0);
C(1) <= G(1) + (P(1) and G(0))
C(2) <= G(2) + (P())

end architecture DATAFLOW;