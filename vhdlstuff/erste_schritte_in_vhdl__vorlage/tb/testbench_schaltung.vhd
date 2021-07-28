library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testbench_schaltung is
end testbench_schaltung;

architecture behavior of testbench_schaltung is
  --Stimulussignale
  signal test_A, test_B, test_C, test_D : std_logic := '0';
  --Ausgangssignale
  signal Output, Output_b               : std_logic;

begin
  --Instanzierung der Schaltungen
  my_schaltung_a : entity work.schaltung_a
    port map (
      A => test_A,
      B => test_B,
      C => test_C,
      D => test_D,
      Y => Output);
  my_schaltung_b : entity work.schaltung_b
    port map (
      A => test_A,
      B => test_B,
      C => test_C,
      D => test_D,
      Y => Output_b);

  --stimulus process
  stim_proc : process
  begin
    --Hier Testsignale setzen
	 -- siehe testbench_and......
    wait;
  end process;

end architecture behavior;
