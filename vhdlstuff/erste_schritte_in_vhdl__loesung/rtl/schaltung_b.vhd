
-- ----------------------------------------
-- libraries
-- ----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;



-- ----------------------------------------
-- entity
-- ----------------------------------------

entity schaltung_b is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : in  std_logic;
         D : in  std_logic;
         Y : out std_logic);
end schaltung_b;



-- ----------------------------------------
-- architecture
-- ----------------------------------------

architecture Behavioral of schaltung_b is

begin

  Y <= ((A and B) or C) and not D;

end Behavioral;

