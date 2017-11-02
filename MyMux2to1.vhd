--Rock Boynton
--Date: 10/30/17
--Course: CE 1901-021
--Professor: Dr. Livingston
--Purpose: This is a 2 to 1 mux

library IEEE;
use IEEE.std_logic_1164.all;

--Inputs:  I0 bit
--         B0 bit
--         S-select bit
--Outputs: Y output
entity myMux2to1 is 
	port(I0: in std_logic_vector(3 downto 0);
	     I1: in std_logic_vector(3 downto 0);
		  S: in std_logic;
		  Y: out std_logic_vector(3 downto 0)
		  );
		  
end entity myMux2to1;

--with/select expression for multiplexar function
architecture DATAFLOW of myMux2to1 is 
begin

	with S select 
		Y <= I0 when '0',
			  I1 when '1';
	
end architecture DATAFLOW;