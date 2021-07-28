library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity toplevel is
  port(
    --clock 50MHz
    clkin : in std_logic;

    -- Buttons
    BTN : in std_logic_vector(3 downto 0);

    --7 Segment Display
    SEVEN_SEG_DIGIT : out   std_logic_vector(6 downto 0);
    DISABLE_BlOCK   : inout std_logic_vector(3 downto 0);
    DECIMAL_POINT   : out   std_logic);
end toplevel;

architecture Behavioral of toplevel is

  
  --geeignete Signale definieren
  
begin

  --Aufgabe 4--
  --Instanzieren der Module scale_clock, bcd_counter, display_controller
  -- + geeignete Verbindungen implementieren



  --Aufgabe 5--
  --Instanzieren Sie das debouncing modul und verbinden sie den Ausgang 
  --debounced mit dem start_stop Eingang des bcd_counters und den Eingang des Moduls mit einem unbelegten Button


end architecture;
