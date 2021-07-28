library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.STD_LOGIC_ARITH.all;

entity debouncing is
    Port ( clk : in  STD_LOGIC;
           bouncy : in  STD_LOGIC;
           debounced : out  STD_LOGIC);
end debouncing;

architecture Behavioral of debouncing is

signal ctr : unsigned (23 downto 0) := (others => '0');

begin

  clocking : process (CLK)
  begin
    
	 if rising_edge(CLK) then
      debounced<='0';
		if ctr=0 then
			if bouncy='1' then
				ctr<=ctr+1;
				debounced<='1';
			end if;
		else
			ctr<=ctr+1;
		end if;
	 
	 end if;
  end process;



end Behavioral;

