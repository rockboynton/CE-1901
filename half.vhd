<<<<<<< HEAD
library IEEE;
use IEEE.std_logic_1164.all;

entity half is 
	port(Ah: in std_logic;
	     Bh: in std_logic;
		  Sh: out std_logic;
		  Coh: out std_logic);
		  
end entity half;

architecture DATAFLOW of half is 
begin

Sh <= Ah xor Bh;
Coh <= ah and Bh;

end architecture DATAFLOW;
=======
library IEEE;
use IEEE.std_logic_1164.all;

entity half is 
	port(Ah: in std_logic;
	     Bh: in std_logic;
		  Sh: out std_logic;
		  Coh: out std_logic);
		  
end entity half;

architecture DATAFLOW of half is 
begin

Sh <= Ah xor Bh;
Coh <= ah and Bh;

end architecture DATAFLOW;
>>>>>>> 483d8a660b53a8121545cab67aed86e0a34316f0
