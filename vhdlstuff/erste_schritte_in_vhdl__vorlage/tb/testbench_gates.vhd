
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
  test_gate: entity work.and_gate
    port map (
      -- Assign signals to the inputs/outputs of the DUT.
    );

  -- stimulus proces
  tb: process
  begin
    wait for 250 ns;
    a<='1';
    b<='1';
    wait for 250 ns;
    -- Include the remaining test signal scenarios.
    wait;
  end process tb;

end;
