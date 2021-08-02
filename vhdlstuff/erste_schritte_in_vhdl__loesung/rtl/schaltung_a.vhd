
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

  or1 : entity work.or_gate
    port map (
      A => ab,
      B => c,
      C => abc);

  not1 : entity work.not_gate
    port map (
      A => D,
      B => nd);

  and1 : entity work.and_gate
    port map (
      A => A,
      B => B,
      C => ab);

  and2 : entity work.and_gate
    port map (
      A => abc,
      B => nd,
      C => abcd);
	
	y <= abcd;

end Behavioral;

