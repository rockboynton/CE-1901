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
		  Cin : in std_logic;
		  C: out std_logic_vector(7 downto 0));
		  
end entity CLC;

architecture DATAFLOW of CLC is 

signal G : std_logic_vector(7 downto 0);
signal P : std_logic_vector(7 downto 0);

begin

G <= A and B;
P <= (A or B) and (Cin&Cin&Cin&Cin&Cin&Cin&Cin&Cin);

C(0) <= G(0);
C(1) <= G(1) or (P(1) and G(0));
C(2) <= G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0));
C(3) <= G(3) or (P(3) and G(2)) or (P(3) and P(2) and G(1)) or (P(3) and P(2) and P(1) and G(0));
C(4) <= G(4) or (P(4) and G(3)) or (P(4) and P(3) and G(2)) or (P(4) and P(3) and P(2) and G(1)) or
					 (P(4) and P(3) and P(2) and P(1) and G(0));
C(5) <= G(5) or (P(5) and G(4)) or (P(5) and P(4) and G(3)) or (P(5) and P(4) and P(3) and G(2)) or
					 (P(5) and P(4) and P(3) and P(2) and G(1)) or (P(5) and P(4) and P(3) and P(2) and P(1) and G(0));
C(6) <= G(6) or (P(6) and G(5)) or (P(6) and P(5) and G(4)) or (P(6) and P(5) and P(4) and G(3)) or
					 (P(6) and P(5) and P(4) and P(3) and G(2)) or (P(6) and P(5) and P(4) and P(3) and P(2) and G(1)) or 
					 (P(6) and P(5) and P(4) and P(3) and P(2) and P(1) and G(0));
C(7) <= G(7) or (P(7) and G(6)) or (P(7) and P(6) and G(5)) or (P(7) and P(6) and P(5) and G(4)) or
					 (P(7) and P(6) and P(5) and P(4) and G(3)) or (P(7) and P(6) and P(5) and P(4) and P(3) and G(2)) or 
					 (P(7) and P(6) and P(5) and P(4) and P(3) and P(2) and G(1)) or 
					 (P(7) and P(6) and P(5) and P(4) and P(3) and P(2) and P(1) and G(0));
					 
end architecture DATAFLOW;