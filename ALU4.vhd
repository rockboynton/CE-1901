--Rock Boynton
--Date: 11/7/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the structural VHDL code for a 4-bit Arithmetic Logic Unit (ALU)

library ieee;
use ieee.std_logic_1164.all;

entity ALU4 is
	port(
			A, B : in std_logic_vector(3 downto 0); --operands
			S : in std_logic_vector(2 downto 0); --select, selects which operation to perform 
			F : out std_logic_vector(3 downto 0); -- 4 bit result of operation
			C, V : out std_logic --C, carry out bit if any; V, overflow indicator
	);
end entity ALU4;

--contains a ripple carry adder-subtractor(RCA4) to perform add and subtract operations
--also contains 4 multiplexars, each outputting a bit of the result, which depends on the selected operation
architecture STRUCTURAL of ALU4 is 

	component RCA4 is 
		port(
			  A: in std_logic_vector(3 downto 0);
		     B: in std_logic_vector(3 downto 0);
		     Sel: in std_logic;
		     S: out std_logic_vector(3 downto 0);
		     C4, C3: out std_logic
	   );
	end component RCA4;

	component Mux8to1 is
		port(
		     I: in std_logic_vector(7 downto 0);
		     S: in std_logic_vector(2 downto 0);
			  Y: out std_logic
		);
	end component Mux8to1;
		
	signal sum : std_logic_vector(3 downto 0); --signals from sum bits of the RCA to the multiplexars
	signal c3 : std_logic; --second most significant carry bit of the RCA4
	signal c4 : std_logic; --most significant carry bit of the RCA4 (AKA carry out)
	
begin 

	Adder : RCA4 
				port map(
					A     => A,
				   B     => B,
				   Sel   => S(0),
				   S     => sum,
				   C4    => c4,
					C3    => c3
				);
				
	GEN_MUX: for i in 0 to 3 generate
		Mux : Mux8to1
					port map(
						I(0) => sum(i),          -- add
						I(1) => sum(i),          -- subtract
						I(2) => A(i) and B(i),   -- bitwise AND
						I(3) => A(i) or B(i),    -- bitwise OR
						I(4) => A(i) nand B(i),  -- bitwise NAND
						I(5) => A(i) xor B(i),   -- bitwise XOR
						I(6) => '1',             -- outputs all bits to '1'
						I(7) => '0',             -- outputs all bits to '0'
						S    => S,               -- selection bits (inputted in circuit)
						Y    => F(i)             -- output of circuit
					);
	end generate GEN_MUX;
				
C <= c4;
V <= c3 xor c4;

end architecture STRUCTURAL;
