

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.STD_LOGIC_ARITH.all;





entity debouncing is


    Port ( clk     : in  STD_LOGIC; -- input clock signal
        bouncy     : in  STD_LOGIC; -- initial (not yet debounced) input button press signal
        debounced  : out  STD_LOGIC); -- debounced output button press signal


end debouncing;





architecture Behavioral of debouncing is


    signal ctr : unsigned (23 downto 0) := (others => '0');


begin


    clocking : process (CLK)
    begin

        -- clocked process: increment "ctr" with every rising edge clock signal
        if rising_edge(CLK) then
            debounced<='0';
            -- after "btn(1)" hast been pressed (i.e. set to 1) once, this if statement only evaluates to true once "ctr" overflows
            -- note that as "ctr" is starting at 0 the first if statement initially always evaluates to true and can only evaluate to false if "btn(1)" is pressed (if "ctr" and "bouncy" both evaluate to "0" then "ctr" will not be incremented!)
            -- once that happens the counter starts to increment and the "ctr=0" case can only be evaluated as true once "ctr" overflows at 2^{24}
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

