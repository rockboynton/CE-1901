--Rock Boynton
--Date: 10/25/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is the component for a seven-segment decoder that outputs a hexidecimal digit

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  A, a vector of the unsigned binary code
--         E, an enable, active LOW
--Outputs: Y, a vector of the output, each bit corresponding to a part of the seven segment decoder
--            as defined by the DE-10 lite manual
entity SEG7DEC is 
	port(
		A: in std_logic_vector(3 downto 0);	
		G: in std_logic;
		Y: out std_logic_vector(7 downto 0)
);
end entity SEG7DEC;

--Uses a with/select (mux) for each bit on the output bus Y
--Uses another mux for the enable bit (active LOW)
architecture DATAFLOW of SEG7DEC is 

	signal SEGMENT : std_logic_vector(7 downto 0) := "00000000"; 
	
begin
			  
	with A select 
		SEGMENT(7) <= '1' when others; --decimal point always off
		
	with A select 
		SEGMENT(6) <= '1' when "0000"|"0001"|"0111",
				        '0' when others;
				 
	with A select  
		SEGMENT(5) <= '1' when "0001"|"0010"|"0011"|"1100"|"1101",
				        '0' when others;
				 
	with A select  
		SEGMENT(4) <= '1' when "0001"|"0011"|"0100"|"0101"|"0111"|"1001",
				        '0' when others;	
			
	with A select  
		SEGMENT(3) <= '1' when "0001"|"0100"|"0111"|"1010"|"1111",
				        '0' when others;
				  
	with A select  
		SEGMENT(2) <= '1' when "0010"|"1100"|"1110"|"1111",
				        '0' when others;
				  
	with A select  
		SEGMENT(1) <= '1' when "0101"|"0110"|"1011"|"1100"|"1110"|"1111",
				        '0' when others;
				  
	with A select  
		SEGMENT(0) <= '1' when "0001"|"0100"|"1011"|"1100"|"1101",
				        '0' when others;
				  
	with G select 
		Y <= SEGMENT when '0',
			  "11111111" when others;
				
end architecture DATAFLOW;