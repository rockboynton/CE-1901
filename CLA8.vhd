--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the CLA8 component 

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  A, a vector of the unsigned binary code, to be added to B
--         B, a vector of the unsigned binary code, to be added to A
--         Cin, carry in, allows CLAs to be chained together
--Outputs: S, a vector of the output, the sum of A and B
--         Cout, carry bit of the addition of A and B
entity CLA8 is 
	port(A: in std_logic_vector(7 downto 0);
	     B: in std_logic_vector(7 downto 0);
		  Cin: in std_logic;
		  S: out std_logic_vector(7 downto 0);
		  Cout: out std_logic);
		  
end entity CLA8;

architecture STRUCTURAL of CLA8 is 

	--partial adder outputs propogate and general signals for the carry lookahead logic below
	component PA is 
	port(Af: in std_logic;
	     Bf: in std_logic;
		  Cinf: in std_logic;
		  Sf: out std_logic;
		  G : out std_logic;
		  P : out std_logic);
	end component PA;
	
signal C1, C2, C3, C4, C5, C6, C7: std_logic; -- Internal carry bits
signal P,G: std_logic_vector(7 downto 0);	--Propogate, P, and Generate, G	

begin

	PA1: PA port map (Af   => A(0),
						   Bf   => B(0),
						   Cinf => Cin ,
						   Sf   => S(0),
						   G    => G(0),
						   P    => P(0));
	
	PA2: PA port map (Af   => A(1),
						   Bf   => B(1),
						   Cinf => C1  ,
						   Sf   => S(1),
						   G    => G(1),
						   P    => P(1));
	
	PA3: PA port map (Af   => A(2),
						   Bf   => B(2),
						   Cinf => C2  ,
						   Sf   => S(2),
						   G    => G(2),
						   P    => P(2));
									
	PA4: PA port map (Af   => A(3),
						   Bf   => B(3),
						   Cinf => C3  ,
						   Sf   => S(3),
						   G    => G(3),
						   P    => P(3));
									
	PA5: PA port map (Af   => A(4),
						   Bf   => B(4),
						   Cinf => C4  ,
						   Sf   => S(4),
						   G    => G(4),
						   P    => P(4));
									
	PA6: PA port map (Af   => A(5),
						   Bf   => B(5),
						   Cinf => C5  ,
						   Sf   => S(5),
						   G    => G(5),
						   P    => P(5));
									
	PA7: PA port map (Af   => A(6),
						   Bf   => B(6),
						   Cinf => C6  ,
						   Sf   => S(6),
						   G    => G(6),
						   P    => P(6));
							
	PA8: PA port map (Af   => A(7),
						   Bf   => B(7),
						   Cinf => C7  ,
						   Sf   => S(7),
						   G    => G(7),
						   P    => P(7));

C1 <= G(0);
C2 <= G(1) or (P(1) and G(0));
C3 <= G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0));
C4 <= G(3) or (P(3) and G(2)) or (P(3) and P(2) and G(1)) or (P(3) and P(2) and P(1) and G(0));
C5 <= G(4) or (P(4) and G(3)) or (P(4) and P(3) and G(2)) or (P(4) and P(3) and P(2) and G(1)) or
					 (P(4) and P(3) and P(2) and P(1) and G(0));
C6 <= G(5) or (P(5) and G(4)) or (P(5) and P(4) and G(3)) or (P(5) and P(4) and P(3) and G(2)) or
					 (P(5) and P(4) and P(3) and P(2) and G(1)) or (P(5) and P(4) and P(3) and P(2) and P(1) and G(0));
C7 <= G(6) or (P(6) and G(5)) or (P(6) and P(5) and G(4)) or (P(6) and P(5) and P(4) and G(3)) or
					 (P(6) and P(5) and P(4) and P(3) and G(2)) or (P(6) and P(5) and P(4) and P(3) and P(2) and G(1)) or 
					 (P(6) and P(5) and P(4) and P(3) and P(2) and P(1) and G(0));
Cout <= G(7) or (P(7) and G(6)) or (P(7) and P(6) and G(5)) or (P(7) and P(6) and P(5) and G(4)) or
					 (P(7) and P(6) and P(5) and P(4) and G(3)) or (P(7) and P(6) and P(5) and P(4) and P(3) and G(2)) or 
					 (P(7) and P(6) and P(5) and P(4) and P(3) and P(2) and G(1)) or 
					 (P(7) and P(6) and P(5) and P(4) and P(3) and P(2) and P(1) and G(0));
		  
end architecture STRUCTURAL;