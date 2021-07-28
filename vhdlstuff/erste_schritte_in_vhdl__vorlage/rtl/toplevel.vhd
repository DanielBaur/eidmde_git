library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_MISC.all;
use IEEE.NUMERIC_STD.all;

entity toplevel is
  
  port (
    LEDS      : inout std_logic_vector (7 downto 0);
	 SWITCHES  : in    std_logic_vector (7 downto 0)
	 );

end entity toplevel;

architecture behav of toplevel is

--hier eventuell notwendige signale definieren


begin 


--hier bitte Schaltung a oder b instanzieren
--und mit SWITCHES und LEDS sinnvoll verbinden   


end architecture behav;
