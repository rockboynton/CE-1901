library ieee;
use ieee.std_logic_1164.all;

entity ALU4 is
	port(
			A, B : in std_logic_vector(3 downto 0);
			S : in std_logic_vector(2 downto 0);
			F : out std_logic_vector(3 downto 0);
			C, V : out std_logic
	);
end entity ALU4;


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
		
	signal sum : std_logic_vector(3 downto 0);
	signal c3 : std_logic;
	signal c4 : std_logic;
	
begin 

	Adder : RCA4 
				port map(
					A     => A,
				   B     => B,
				   Sel   => S(0),
				   S     => sum,
				   C4    => c4,
					C3    => c3
				   --might need C3 connected to something here not sure yet
				);
				
	GEN_MUX: for i in 0 to 3 generate
		Mux : Mux8to1
					port map(
						I(0) => sum(i),
						I(1) => sum(i),
						I(2) => A(i) and B(i),
						I(3) => A(i) or B(i),
						I(4) => A(i) nand B(i),
						I(5) => A(i) xor B(i),
						I(6) => '1',
						I(7) => '0',
						S    => S,
						Y    => F(i)
					);
	end generate GEN_MUX;
				
--	Mux1 : Mux8to1
--				port map(
--					I => 
--					S =>
--					Y =>
--				)
--				
--	Mux1 : Mux8to1
--				port map(
--					I => 
--					S =>
--					Y =>
--				)
--				
--	Mux1 : Mux8to1
--				port map(
--					I => 
--					S =>
--					Y =>
--				)
C <= c4;
V <= c3 xor c4;

end architecture STRUCTURAL;