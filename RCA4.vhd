--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Structural VHDL for the Ripple Carry Adder(RCA)
--         implementation adding two 8-bit numbers.

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  A, a vector of the unsigned binary code, to be added to B
--         B, a vector of the unsigned binary code, to be added to A
--         Sel, 1 for subtraction, 0 for addition
--Outputs: S, a vector of the output, the sum of A and B
--         Cout, carry bit of the addition of A and B
entity RCA4 is
--	generic (N : integer := 4);
	port(
		  A: in std_logic_vector(3 downto 0);
		  B: in std_logic_vector(3 downto 0);
		  Sel: in std_logic;
		  S: out std_logic_vector(3 downto 0);
		  C4, C3: out std_logic
   );
		  
end entity RCA4;


architecture STRUCTURAL of RCA4 is 
	
	component FA is 
	port(Af: in std_logic;
		  Bf: in std_logic;
		  Cinf: in std_logic;
		  Sf: out std_logic;
		  Coutf: out std_logic);
	end component FA;
	
	signal c: std_logic_vector(3 downto 0); --signals of the internal carry bits
	signal Bee : std_logic_vector(3 downto 0); --uses an xor gate to decide whether B is positive or negative depending on sel input.
	
begin
	
Bee <= B xor (Sel&Sel&Sel&Sel);
	
	GEN_ADD_SUB: for i in 0 to 3 generate
	
		LOWERBITS: if i = 0 generate 
			FA1: FA port map (Af => A(i),
									Bf => Bee(i),
									Cinf => Sel,
									Sf => S(i),
									Coutf => C(i)
									);
		end generate LOWERBITS;
	
		UPPERBITS: if i > 0 generate 
			FAN: FA port map (Af => A(i),
									Bf => Bee(i),
									Cinf => C(i-1),
									Sf => S(i),
									Coutf => C(i)
									);
		end generate UPPERBITS;
		
end generate GEN_ADD_SUB;

C4 <= C(3);
C3 <= C(2);

end architecture STRUCTURAL;