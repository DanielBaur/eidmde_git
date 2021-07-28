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
      BCD_OUT <= (others => '0');
    elsif rising_edge(CLK) then  
      
		
		if was_stopped='0' then
			if start_stop='1' then
				was_stopped<='1';
			end if;
		else
			if start_stop='1' then
				was_stopped<='0';
			end if;
		end if;
		
		if clk_en='1' then
		
			if was_stopped='0' then
			
				if BCD_OUT (3 downto 0) = "1001" then
				  BCD_OUT(3 downto 0) <= "0000";
				  if BCD_OUT (7 downto 4) = "1001" then
					 BCD_OUT(7 downto 4) <= "0000";
					 if BCD_OUT (11 downto 8) = "1001" then
						BCD_OUT(11 downto 8) <= "0000";
						if BCD_OUT (15 downto 12) = "1001" then
						  BCD_OUT(15 downto 12) <= "0000";
						else
						  BCD_OUT(15 downto 12) <= BCD_OUT(15 downto 12) + '1';
						end if;
					 else
						BCD_OUT(11 downto 8) <= BCD_OUT(11 downto 8) + '1';
					 end if;
				  else
					 BCD_OUT(7 downto 4) <= BCD_OUT(7 downto 4) + '1';
				  end if;
				else
				  BCD_OUT(3 downto 0) <= BCD_OUT(3 downto 0) + '1';
				end if;
			
			end if;
			
		end if;
	 
	 end if;
  end process bcd_counting;
end counter;
