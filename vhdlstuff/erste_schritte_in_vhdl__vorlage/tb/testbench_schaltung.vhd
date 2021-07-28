
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

  -- Simultaneously instantiate 'schaltung_b'.

  --stimulus process
  stim_proc : process
  begin

    wait for 60 ns;
    test_A <= '1';
    test_B <= '0';
    test_C <= '0';
    test_D <= '0';

    -- Insert remaining stimulus signals.

    wait;

  end process;

end architecture behavior;
