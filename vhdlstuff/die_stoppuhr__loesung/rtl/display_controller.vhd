

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

    port (COUNTER_INPUT  : in    std_logic_vector (15 downto 0); -- counter input, later on provided by "bcd_counter"
        CLK              : in    std_logic; -- input clock signal
        RST              : in    std_logic; -- input reset signal
        DISABLE_LED      : inout std_logic_vector (3 downto 0); -- encoded output signal indicating the currently illuminated LED
        LED_OUTPUT       : out   std_logic_vector (6 downto 0); -- encoded output signal for one seven segment display digit
        DECIMAL_POINT    : out   std_logic); -- enoded output signal for the decimal point of the current led

end display_controller;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture Behavioral of display_controller is

  signal digit0, digit1, digit2, digit3 : std_logic_vector (3 downto 0);
  signal led_uncoded                    : unsigned (3 downto 0);
  signal ctr                            : unsigned (12 downto 0) := (others => '0');

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
            ctr           <= (others => '0');
            DISABLE_LED   <= "1110";
            DECIMAL_POINT <= '1';
            LED_UNCODED   <= (others => '0');

        -- clocked process: multiplexing the LED signal with every rising edge clock signal...
        elsif rising_edge(CLK) then
		      -- ...but only if the counter "ctr" just overflowed to "0"
				-- i.e. every digit is only displayed for 2^{13} clock cycles (remember: "ctr" goes up to 2^{13} then overflows)
            if (CTR = 0) then
				    -- depending on the current value of "disable_led" the next LED is chosen
                if (DISABLE_LED = "1110") then
                    DISABLE_LED   <= "1101";
                    DECIMAL_POINT <= '0';
                    led_uncoded   <= unsigned(digit1);
                elsif DISABLE_LED = "1101" then
                    DISABLE_LED   <= "1011";
                    DECIMAL_POINT <= '1';
                    led_uncoded   <= unsigned(digit2);
                elsif (DISABLE_LED = "1011") then
                    DISABLE_LED <= "0111";
                    led_uncoded <= unsigned(digit3);
                elsif DISABLE_LED = "0111" then
                    DISABLE_LED <= "1110";
                    led_uncoded <= unsigned(digit0);
                end if;
            end if;
            -- in any case "ctr" is incremented
            CTR <= CTR+1;
        end if;

    end process; -- end of process "clocking"

    -- Instantiating the seven segment encoder to output the multiplexed and encoded led signal vector.
    seven_seg_encoder_1 : entity work.seven_seg_encoder
    port map (
        NUMBER_INPUT => led_uncoded,
        LED_OUTPUT   => LED_OUTPUT);


end Behavioral;

