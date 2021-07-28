
-- ----------------------------------------
-- libraries
-- ----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



-- ----------------------------------------
-- entity
-- ----------------------------------------

entity testbench_schaltung is
end testbench_schaltung;



-- ----------------------------------------
-- architecture
-- ----------------------------------------

architecture behavior of testbench_schaltung is

  signal test_A, test_B, test_C, test_D   : std_logic := '0';
  signal output_a, output_b               : std_logic;

begin

  -- DUT entities
  my_schaltung_a : entity work.schaltung_a
    port map (
      A => test_A,
      B => test_B,
      C => test_C,
      D => test_D,
      Y => output_a);

  my_schaltung_b : entity work.schaltung_b
    port map (
      A => test_A,
      B => test_B,
      C => test_C,
      D => test_D,
      Y => output_b);

  --stimulus process
  stim_proc : process
  begin

    wait for 60 ns;
    test_A <= '1';
    test_B <= '0';
    test_C <= '0';
    test_D <= '0';
    wait for 60 ns;
    test_A <= '0';
    test_B <= '1';
    test_C <= '0';
    test_D <= '0';
    wait for 60 ns;
    test_A <= '0';
    test_B <= '0';
    test_C <= '1';
    test_D <= '0';
    wait for 60 ns;
    test_A <= '0';
    test_B <= '0';
    test_C <= '0';
    test_D <= '1';

    wait for 60 ns;
    test_A <= '1';
    test_B <= '1';
    test_C <= '0';
    test_D <= '0';
    wait for 60 ns;
    test_A <= '1';
    test_B <= '0';
    test_C <= '1';
    test_D <= '0';
    wait for 60 ns;
    test_A <= '1';
    test_B <= '0';
    test_C <= '0';
    test_D <= '1';
    wait for 60 ns;
    test_A <= '0';
    test_B <= '1';
    test_C <= '1';
    test_D <= '0';
    wait for 60 ns;
    test_A <= '0';
    test_B <= '1';
    test_C <= '0';
    test_D <= '1';
    wait for 60 ns;
    test_A <= '0';
    test_B <= '0';
    test_C <= '1';
    test_D <= '1';

    wait for 60 ns;
    test_A <= '1';
    test_B <= '1';
    test_C <= '1';
    test_D <= '0';
    wait for 60 ns;
    test_A <= '1';
    test_B <= '1';
    test_C <= '0';
    test_D <= '1';
    wait for 60 ns;
    test_A <= '1';
    test_B <= '0';
    test_C <= '1';
    test_D <= '1';
    wait for 60 ns;
    test_A <= '0';
    test_B <= '1';
    test_C <= '1';
    test_D <= '1';

    wait for 60 ns;
    test_A <= '1';
    test_B <= '1';
    test_C <= '1';
    test_D <= '1';

    wait;

  end process;

end architecture behavior;
