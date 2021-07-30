


-- --------------------------------------------
-- libraries
-- --------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.STD_LOGIC_ARITH.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity bcd_counter is
  
    port (
        CLK         : in    std_logic; -- input clock signal
        CLK_en      : in    std_logic; -- clock enable signal, i.e. the input of "scale_clock" actually incrementing the counter
        RST         : in    std_logic; -- reset signal to reset the counter output
        start_stop  : in    std_logic; -- start/stop signal (only relevant for exercise "Eine bessere Stoppuhr")
        BCD_OUT     : inout std_logic_vector(15 downto 0));  -- output, each set of 4 bits corresponds to one digit

end entity bcd_counter;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture counter of bcd_counter is

    signal was_stopped : std_logic :='0'; -- (only relevant for exercise "Eine bessere Stoppuhr")

begin

    bcd_counting : process (CLK, RST)
    begin

        -- asynchronous reset: if "RST" equals "1" then reset "BCD_OUT" to "0000000000000000"
        if RST = '1' then

            -- HERE: Assign the resetted value to 'BCD_OUT'. (see "BCD Zähler", b) )

        -- clocked process: increment 'BCD_OUT' with every rising edge of the clock signal
        elsif rising_edge(CLK) then  

            -- only increment 'BCD_OUT' if 'CLK_en' is high
            if clk_en='1' then

                -- gradually incrementing the words of "BCD_OUT"
                -- but checking whether there is a decimal (!) overflow in one of the four ciphers
			    if BCD_OUT (3 downto 0) = "1001" then

			      -- HERE: set 'BCD_OUT' value

			      if BCD_OUT (7 downto 4) = "1001" then

				     -- HERE: set 'BCD_OUT' value

				     if -- HERE: define 'BCD_OUT' overflow condition

					    -- HERE: set 'BCD_OUT' value

					    if -- HERE: define 'BCD_OUT' overflow condition

					      -- HERE: set 'BCD_OUT' value

					    else

					      -- HERE: increment 'BCD_OUT' value

					    end if;

				     else

					    -- HERE: increment 'BCD_OUT' value

				     end if;

			      else

				     -- HERE: increment 'BCD_OUT' value

			      end if;

			    else

			      -- HERE: increment 'BCD_OUT' value

			    end if;
			    
            end if;
	 
        end if; -- corresponding to "if RST = '1' then" and "elsif rising_edge(CLK) then"

    end process bcd_counting;

end counter;
