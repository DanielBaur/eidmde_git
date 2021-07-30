
-- --------------------------------------------
-- libraries
-- --------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity scale_clock is

    generic(
        limit            : integer); -- this is the counter mentioned in the exercise specification that is supposed to actually "scale" the clock signal, the correct value will later be assigned within the toplevel module

    port (
        CLK_50MHZ        : in    std_logic; -- input clock signal triggering the main process
        RST              : in    std_logic; -- input reset signal indicating whether or not to reset the scaling counter
        CLK_10HZ_enable  : inout std_logic); -- scaled output clock signal

end scale_clock;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture Behavioral of scale_clock is

  signal count : unsigned(23 downto 0);

begin

    gen_clk : process (CLK_50MHZ, RST)
    begin

        -- reset "count" if reset signal is given
        if RST = '1' then
            CLK_10HZ_enable <= '0';
            count    <= (others => '0');

        -- otherwise, if 50MHz input clock signal is given...
        elsif rising_edge(clk_50Mhz) then

            -- ...check whether "limit" is reached (then forward the 10Hz signal) or,...
            if count = limit then
                count    <= (others => '0');
                CLK_10HZ_enable <= '1';
				-- ...if not, increment the counter
            else
                CLK_10HZ_enable <='0';
                count <= count + "1";
            end if;

        end if;

    end process gen_clk;

end Behavioral;
