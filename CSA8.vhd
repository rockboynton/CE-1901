--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the Structural VHDL for the Carry-Select Adder (CSA)
--         implementation adding two 8-bit numbers.

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  A, a vector of the unsigned binary code, to be added to B
--         B, a vector of the unsigned binary code, to be added to A
--         Sel, 1 for subtraction, 0 for addition
--Outputs: S, a vector of the output, the sum of A and B
--         Cout, carry bit of the addition of A and B
entity CSA8 is
	port(
		  A: in std_logic_vector(7 downto 0);
		  B: in std_logic_vector(7 downto 0);
		  Cin: in std_logic;
		  S: out std_logic_vector(7 downto 0);
		  Cout: out std_logic
);
		  
end entity CSA8;


architecture STRUCTURAL of CSA8 is 

	component RCA4 is 
	port(
		  A: in std_logic_vector(3 downto 0);
		  B: in std_logic_vector(3 downto 0);
		  Sel: in std_logic;
		  S: out std_logic_vector(3 downto 0);
		  Cout: out std_logic
		 );
	end component RCA4;
	
	component MyMux2to1 is 
	port(
		  I0: in std_logic_vector(3 downto 0);
	     I1: in std_logic_vector(3 downto 0);
		  S: in std_logic;
		  Y: out std_logic_vector(3 downto 0)
		 );	  
	end component myMux2to1;
	
	component MyMux2to1_bit is 
	port(
		  I0: in std_logic;
	     I1: in std_logic;
		  S: in std_logic;
		  Y: out std_logic
		 );	  
	end component myMux2to1_bit;

	signal S1_0 : std_logic_vector(3 downto 0);
	signal S1_1 : std_logic_vector(3 downto 0);
	signal C1_0 : std_logic;
	signal C1_1 : std_logic;
	signal C3   : std_logic;
	signal S1   : std_logic_vector(3 downto 0);
	signal LowNibble : std_logic_vector(3 downto 0);
	
begin 

	RCA_LowNibble : RCA4 
		port map (
					 A    => A(3)&A(2)&A(1)&A(0),
					 B    => B(3)&B(2)&B(1)&B(0),
					 Sel  => Cin,
					 S    => LowNibble,
					 Cout => C3
					);

	RCA_HighNibble_0 : RCA4 
		port map (
					 A    => A(7)&A(6)&A(5)&A(4),
					 B    => B(7)&B(6)&B(5)&B(4),
					 Sel  => '0',
					 S    => S1_0,
					 Cout => C1_0
					);				
	
	RCA_HighNibble_1 : RCA4 
		port map (
					 A    => A(7)&A(6)&A(5)&A(4),
					 B    => B(7)&B(6)&B(5)&B(4),
					 Sel  => '1',
					 S    => S1_1,
					 Cout => C1_1
					);	
					
	MUXSum : MyMux2to1
		port map (
					 I0 => S1_0,
					 I1 => S1_1,
					 S  => C3,
					 Y  => S1
					);
					
	MUXCarry : MyMux2to1_bit
		port map (
					 I0 => C1_0,
					 I1 => C1_1,
					 S  => C3,
					 Y  => Cout
					);

S <= S1(3)&S1(2)&S1(1)&S1(0)&LowNibble(3)&LowNibble(2)&LowNibble(1)&LowNibble(0);

end architecture STRUCTURAL;