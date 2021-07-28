library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.STD_LOGIC_ARITH.all;

entity bcd_counter is
  
  port (
    CLK     : in    std_logic;          -- input clock
    CLK_en  : in    std_logic;
	 RST     : in    std_logic;          -- active high asynchronous reset
    start_stop: in std_logic;
	 BCD_OUT : inout std_logic_vector(15 downto 0));  -- output,  each set of 4 bits corresponds to one digit

end entity bcd_counter;

architecture counter of bcd_counter is

signal was_stopped : std_logic :='0';

begin
  
  bcd_counting : process (CLK, RST)
  begin  -- process bcd_counting
    if RST = '1' then                 -- asynchronous reset (active high)
      --BCD_OUT korrekt setzen

    elsif rising_edge(CLK) then  
      
		if clk_en='1' then
		
			if BCD_OUT (3 downto 0) = "1001" then
			  --BCD_OUT korrekt setzen
			  if BCD_OUT (7 downto 4) = "1001" then
				 --BCD_OUT korrekt setzen
				 if --.... then
					--BCD_OUT korrekt setzen
					if --.... then
					  --BCD_OUT korrekt setzen
					else
					  --BCD_OUT korrekt hochzaehlen
					end if;
				 else
					--BCD_OUT korrekt hochzaehlen
				 end if;
			  else
				 --BCD_OUT korrekt hochzaehlen
			  end if;
			else
			  --BCD_OUT korrekt hochzaehlen
			end if;
			
		end if;
	 
	 end if;
  end process bcd_counting;
end counter;