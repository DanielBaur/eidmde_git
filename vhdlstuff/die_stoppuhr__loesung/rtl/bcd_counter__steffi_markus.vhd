

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;
use IEEE.STD_LOGIC_ARITH.all;





entity bcd_counter is


    port (
        CLK     : in    std_logic; -- input clock signal
        CLK_en  : in    std_logic; -- clock enable signal, i.e. the input of "scale_clock" actually incrementing the counter
        RST     : in    std_logic; -- reset signal to reset the counter output
        start_stop: in std_logic; -- start/stop signal (only relevant for exercise "Eine bessere Stoppuhr")
        BCD_OUT : inout std_logic_vector(15 downto 0)); -- counter output, each set of 4 bits corresponds to one digit


end entity bcd_counter;





architecture counter of bcd_counter is


    -- (only relevant for exercise "Eine bessere Stoppuhr")
    signal was_stopped : std_logic :='0';


begin

    bcd_counting : process (CLK, RST)
    begin

        -- asynchronous reset: if "RST" equals "1" then reset "BCD_OUT" to "0000000000000000"
        if RST = '1' then -- beginning of main "if"
            BCD_OUT <= (others => '0');

        -- clocked process: increment "BCD_OUT" with every rising edge clock signal
        elsif rising_edge(CLK) then -- beginning of main "elsif"
      
            -- checking the effect of pressing the "start_stop" button,
            -- i.e. was the stop watch supposed to measure (was_stopped='0') or to stop (was_stopped='1')
            -- (only relevant for exercise "Eine bessere Stoppuhr")
            -- (for "Eine erste Stoppuhr" you can in principle just leave this module as it is - "was_stopped" will evaluate to "0" and not affect anything)
            -- (otherwise just comment out both this block and the if statement "if was_stopped='0' then")
            if was_stopped='0' then
                if start_stop='1' then
                    was_stopped<='1';
                end if;
            else
                if start_stop='1' then
                    was_stopped<='0';
                end if;
            end if;

            -- check for a clock enable signal (i.e. "CLK_EN") to trigger incrementation,
            -- as "scale_clock" should make sure that the stop watch is counting in steps of 0.1s
            if clk_en='1' then

                -- make sure the stop watch is currently not in a "was_stopped" state
                -- (only relevant for exercise "Eine bessere Stoppuhr")
                if was_stopped='0' then

                    -- then gradually increment the bytes of "BCD_OUT"
                    -- but check whether there is a decimal (!) overflow in one of the four ciphers
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

                end if; -- "if clk_en='1' then"

            end if; -- "if was_stopped='0' then"

        end if; -- "if RST = '1' then"/"elsif rising_edge(CLK) then" (end of main "if")

    end process bcd_counting;


end counter;
