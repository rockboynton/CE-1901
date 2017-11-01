--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Full Adder component 

library IEEE;
use IEEE.std_logic_1164.all;

entity CLA4 is 
	port(Af: in std_logic_vector(3 downto 0);
	     Bf: in std_logic_vector(3 downto 0);
		  Cinf: in std_logic;
		  Sf: out std_logic_vector(3 downto 0);
		  Coutf: out std_logic);
		  
end entity CLA4;

architecture STRUCTURAL of CLA4 is 

signal G : std_logic_vector(3 downto 0);
signal P : std_logic_vector(3 downto 0);

	component RCA4 is
		generic (N : integer := 4);
		port(
			  A: in std_logic_vector(N-1 downto 0);
			  B: in std_logic_vector(N-1 downto 0);
			  Sel: in std_logic;
			  S: out std_logic_vector(N-1 downto 0);
			  Cout: out std_logic
	       );
	end component RCA4;
	
begin

	cla4 : RCA4 port map(
						A => Af,
						B => Bf,
						A => Af
						A => Af
						);
		  
		  
end architecture STRUCTURAL;
