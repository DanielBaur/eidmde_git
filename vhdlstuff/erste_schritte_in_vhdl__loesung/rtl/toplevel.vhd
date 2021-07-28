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


begin  
  
  my_kv_a : entity work.KV_a
    port map (
      A =>SWITCHES(0),
      B =>SWITCHES(1),
      C =>SWITCHES(2), 
  	   D =>SWITCHES(3), 
      Y =>LEDS(0)
  		);

  my_kv_b : entity work.KV_b
    port map (
    A =>SWITCHES(4),
    B =>SWITCHES(5),
    C =>SWITCHES(6), 
	 D =>SWITCHES(7), 
	 Y =>LEDS(4)
	 );


end architecture behav;
