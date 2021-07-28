

-- ----------------------------------------
-- libraries
-- ----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.NUMERIC_STD.all;



-- ----------------------------------------
-- entity
-- ----------------------------------------

entity toplevel is
  
  port (
    LEDS : inout std_logic_vector (7 downto 0);
    SWITCHES : in std_logic_vector (7 downto 0));

end entity toplevel;



-- ----------------------------------------
-- architecture
-- ----------------------------------------

architecture behav of toplevel is

  signal out_val : std_logic; -- You might find this useful for the bonus task...

begin

  -- Instantiate your 'schaltung_X' entity here.

end architecture behav;
