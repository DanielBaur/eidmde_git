
-- ----------------------------------------
-- libraries
-- ----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;



-- ----------------------------------------
-- entity
-- ----------------------------------------

entity schaltung_a is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : in  std_logic;
         D : in  std_logic;
         Y : out std_logic);
end schaltung_a;



-- ----------------------------------------
-- architecture
-- ----------------------------------------

architecture Behavioral of schaltung_a is
  signal ab, abc, nd, abcd : std_logic;

begin

  and1 : entity work.and_gate
    port map (
      A => A,
      B => B,
      C => ab);

  -- Instantiate more gate entities in order to complete the logic of the circuit.

end Behavioral;

