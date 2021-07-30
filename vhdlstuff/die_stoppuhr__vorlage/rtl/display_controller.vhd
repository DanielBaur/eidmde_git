
-- --------------------------------------------
-- libraries
-- --------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity display_controller is
  port (COUNTER_INPUT : in    std_logic_vector (15 downto 0); -- counter input, later on provided by "bcd_counter"
        LED_OUTPUT    : out   std_logic_vector (6 downto 0); -- input clock signal
        DISABLE_LED   : inout std_logic_vector (3 downto 0); -- input reset signal
        DECIMAL_POINT : out   std_logic; -- encoded output signal indicating the currently illuminated LED
        CLK           : in    std_logic; -- encoded output signal for one seven segment display digit
        RST           : in    std_logic); -- enoded output signal for the decimal point of the current led

end display_controller;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture Behavioral of display_controller is

  signal digit0, digit1, digit2, digit3 : std_logic_vector (3 downto 0); -- These signals each represent one of the four decimal digits given by 'COUNTER_INPUT'.
  signal led_uncoded                    : unsigned (3 downto 0); -- 
  signal ctr                            : unsigned (12 downto 0) := (others => '0');  -- This counter will define for how long one segment will be illuminated

begin

  -- splitting the input 16 bit vector into separate digits
  digit0 <= COUNTER_INPUT (3 downto 0);
  digit1 <= COUNTER_INPUT (7 downto 4);
  digit2 <= COUNTER_INPUT (11 downto 8);
  digit3 <= COUNTER_INPUT (15 downto 12);

  -- multiplexing the four digits according to "ctr" onto each of the four segments
  clocking : process (CLK)
    
  begin

    -- reset "ctr", "disable_led", "decimal_point", "led_uncoded" if reset signal is given
    if RST = '1' then

      -- HERE: Assign resetted signal values.

    -- clocked process: multiplexing the LED signal with every rising edge clock signal...
    elsif rising_edge(CLK) then
        -- ...but only if the counter "ctr" just overflowed to "0"
        -- i.e. every digit is only displayed for 2^{13} clock cycles (remember: "ctr" goes up to 2^{13} then overflows)
        if (CTR = 0) then
	    -- depending on the current value of "disable_led" the next LED is chosen

		-- HERE: Assign 'DISABLE_LED', 'DECIMAL_POINT', and 'led_uncoded' correctly.
                -- HERE: I.e., switch to next segment once the counter overflows.
                -- HERE: Tip: "led_uncoded <= unsigned(digitX)"
    
        end if;

            -- in any case "ctr" is incremented
            CTR <= CTR+1;

    end if;

  end process; -- end of process "clocking"


  -- Instantiating the seven segment encoder to output the multiplexed and encoded led signal vector.
  -- HERE: Instantiating the seven segment encoder.
  
end Behavioral;

