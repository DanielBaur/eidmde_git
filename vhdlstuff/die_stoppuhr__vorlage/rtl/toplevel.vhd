
-- --------------------------------------------
-- library
-- --------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity toplevel is
  port(
    clkin : in std_logic; -- 50MHz clock signal
    BTN : in std_logic_vector(3 downto 0); -- buttons including the start_stop and reset buttons
    SEVEN_SEG_DIGIT : out   std_logic_vector(6 downto 0); -- encoded output signal indicating the currently illuminated digit of the seven segment display
    DISABLE_BlOCK   : inout std_logic_vector(3 downto 0); -- output signal encoding the digit to be displayed on the seven segment display
    DECIMAL_POINT   : out   std_logic); -- output signal indicating whether or not the decimal point of the seven segment display needs to be illuminated
end toplevel;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture Behavioral of toplevel is

  -- HERE: Define useful signals to interconnect the individual modules.
  
begin

  -- HERE: Instantiate the modules 'bcd_counter', 'display_controller' and 'scale_clock' (dont't forget to set its generic limit)


  -- HERE: "Eine bessere Stoppuhr"
    -- Instantiate the 'debounced' module.
    -- Connect the 'debounced' output with 'start_stop' of 'bcd_counter'.
    -- Connect the 'debounced' input with an unoccupied button.
    -- Reset 'reset_clk_scaler'.

end architecture;
