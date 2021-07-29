
-- ----------------------------------------
-- libraries
-- ----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



-- ----------------------------------------
-- entity
-- ----------------------------------------

entity testbench_gates is
end testbench_gates;



-- ----------------------------------------
-- architecture
-- ----------------------------------------

architecture behavior of testbench_gates is

  signal a,b: std_logic := '0';
  signal output : std_logic := '0';

begin

  -- DUT entity
  -- Instead of 'work.and_gate' insert the logic gate you'd like to simulate: e.g., 'work.xor_gate'.
  test_gate: entity work.xor_gate
    port map (
      A => a,
      B => b,
      C => output);

  -- stimulus proces
  tb: process
  begin
    a<='1';
    b<='1';
    wait for 200 ns;
    a<='1';
    b<='0';
    wait for 200 ns;
    a<='0';
    b<='1';
    wait for 200 ns;
    a<='0';
    b<='0';
    wait for 200 ns;
    wait;
  end process tb;

end;
