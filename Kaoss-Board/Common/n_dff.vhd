library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.all;

entity n_dff is 

generic (
	N : positive := 1);
Port (
	CLK 	 : in  STD_LOGIC;
	RESET  : in  STD_LOGIC;
	ENABLE : in  STD_LOGIC;
	D 		 : in  STD_LOGIC_VECTOR(N-1 downto 0); 
	Q  	 : out STD_LOGIC_VECTOR(N-1 downto 0));
end n_dff;

architecture Behavioral of n_dff is
begin

Generate_DFF : for I in 0 to N-1 generate
	DFFs : entity dff port map(CLK, RESET, ENABLE, D(I), Q(I));
end generate;

end Behavioral;