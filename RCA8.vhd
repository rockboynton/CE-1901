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
--Outputs: S, a vector of the output, the sum of A and B
--         C, carry bit of the addition of A and B
entity RCA8 is
	port(
		  A: in std_logic_vector(7 downto 0);
		  B: in std_logic_vector(7 downto 0);
		  S: out std_logic_vector(7 downto 0);
		  C: out std_logic
);
		  
end entity RCA8;


architecture STRUCTURAL of RCA8 is 

	component HALFADDER is 
	port(Ah: in std_logic;
	     Bh: in std_logic;
		  Sh: out std_logic;
		  Coh: out std_logic);
	end component HALFADDER;
	
	component FULLADDER is 
	port(Af: in std_logic;
		  Bf: in std_logic;
		  Cif: in std_logic;
		  Sf: in std_logic;
		  Cof: out std_logic);
	end component FULLADDER;
	
	signal C: std_logic_vector(7 downto 0);
	signal S: std_logic_vector(7 downto 0);
	
	
begin

	half : HALFADDER
		port map (Ah => A(0),
				    Bh => B(0),
					 Sh => S(0),
					 Coh => C(0)
					 );
					 
	full1 : FULLADDER
		port map (Af => A(1),
					 Bf => B(1),
					 Cif => C(0),
					 Sf => S(1),
					 Cof => C(1)
					 );
		