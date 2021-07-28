

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
    LEDS      : inout std_logic_vector (7 downto 0);
	 SWITCHES  : in    std_logic_vector (7 downto 0));

end entity toplevel;



-- ----------------------------------------
-- architecture
-- ----------------------------------------

architecture behav of toplevel is

  signal out_val : std_logic;

begin

-- Comment/uncomment the following snippets in order to switch between implementing 'schaltung_a' or 'schaltung_b'.

--  my_schaltung_a : entity work.schaltung_a
--    port map (
--      A =>SWITCHES(0),
--      B =>SWITCHES(1),
--      C =>SWITCHES(2), 
--      D =>SWITCHES(3), 
--      Y =>out_val);
--  LEDS<=(others=>out_val);

  my_schaltung_b : entity work.schaltung_b
    port map (
      A =>SWITCHES(0),
      B =>SWITCHES(1),
      C =>SWITCHES(2), 
      D =>SWITCHES(3), 
      Y =>LEDS(4));

end architecture behav;
