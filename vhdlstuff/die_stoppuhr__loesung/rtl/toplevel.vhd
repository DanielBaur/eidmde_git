

-- --------------------------------------------
-- libraries
-- --------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity toplevel is

    port(
        clkin                : in std_logic; -- 50MHz clock signal
        BTN                  : in std_logic_vector(3 downto 0); -- buttons including the start_stop and reset buttons
        DISABLE_BlOCK        : inout std_logic_vector(3 downto 0); -- encoded output signal indicating the currently illuminated digit of the seven segment display
        SEVEN_SEG_DIGIT      : out   std_logic_vector(6 downto 0); -- output signal encoding the digit to be displayed on the seven segment display
        DECIMAL_POINT        : out   std_logic); -- output signal indicating whether or not the decimal point of the seven segment display needs to be illuminated

end toplevel;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture Behavioral of toplevel is

    signal clk_10hz_enable   : std_logic;
    signal bcd_out           : std_logic_vector(15 downto 0);

    signal debounced         : std_logic;

    signal reset_clk_scaler  : std_logic;

begin


    -- instantiate the "debouncing" module
    -- (only relevant for exercise "Eine bessere Stoppuhr")
    --debouncer : entity work.debouncing
    --port map (
    --    CLK              => clkin,
    --    bouncy           => BTN(1),
    --    debounced        => debounced);


    -- resetting "reset_clk_scaler" to reset the enabled clock signal with every button press
	 -- (only relevant for exercise "Eine bessere Stoppuhr", otherwise just set "RST" in "scale_clock" to "btn(0)")
    --reset_clk_scaler <= debounced or btn(0);


    -- instantiate the "scale_clock" module
    -- making sure to correctly set "limit" to 4999999
    -- (50MHz/10Hz=5000000) but the "clk_en" signal still takes one cycle to relax back to "0", with a "limit" value of 5000000 the time between "clk_en" signals would be 5000000 clock cycles but not the periodicity
    clock_scaler : entity work.scale_clock
    generic map(
        limit => 4999999)
    port map (
        CLK_50MHZ        => clkin,
        RST              => btn(0),--reset_clk_scaler, -- (for "Eine erste Stoppuhr" use "btn(0)")
        CLK_10HZ_enable  => clk_10hz_enable);


    -- instantiate the "bcd_counter" module
    -- making sure to forward the "clk_10hz_enable" (the output from the "scale_clock" module) as that triggers the counter incrementation
    bcd_counter_1 : entity work.bcd_counter
    port map (
        CLK              => clkin,
        CLK_en           => clk_10hz_enable,
        RST              => BTN(0),
        start_stop       => debounced, -- (only relevant for exercise "Eine bessere Stoppuhr", if the "debounce" module is not implemented then the "start_stop" port will just be ignored
        BCD_OUT          => bcd_out);


    -- instantiate the "display_controller" module
    -- forwarding the scaled counter output "bcd_out"
    display_controller_1 : entity work.display_controller
    port map (
        COUNTER_INPUT    => bcd_out,
        LED_OUTPUT       => SEVEN_SEG_DIGIT,
        DECIMAL_POINT    => DECIMAL_POINT,
        DISABLE_LED      => DISABLE_BLOCK,
        CLK              => CLKIN,
        RST              => BTN(0));

end architecture;
