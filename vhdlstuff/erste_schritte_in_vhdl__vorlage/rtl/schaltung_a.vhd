library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity schaltung_a is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : in  std_logic;
         D : in  std_logic;
         Y : out std_logic);
end schaltung_a;

architecture Behavioral of schaltung_a is
  --signale fuer verbindungen implementieren

begin

  --Die zuvor definierten Gatter werden einzeln
  --instanziert und mit den oben definierten
  --Signalen verbunden
  --alla:
  --
  --	<name> : entity work.and_gate
  --	port map (
  --  	A => A,
  --  	B => B,
  --  	C => <Signalname>);
  
  --etc.....
  
end Behavioral;

