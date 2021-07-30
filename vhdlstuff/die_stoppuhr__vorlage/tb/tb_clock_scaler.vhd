
-- --------------------------------------------
-- libraries
-- --------------------------------------------

library ieee;
use ieee.std_logic_1164.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity tb_clock_scaler is
end tb_clock_scaler;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture behavior of tb_clock_scaler is

  --Inputs
  signal clk_50Mhz : std_logic := '0';
  signal rst       : std_logic := '1';

  --Outputs
  signal clk_10Hz_enable : std_logic;

  -- Clock period definitions
  constant clk_50Mhz_period : time := 20 ns;
  
begin

  -- Instantiate the Unit Under Test (UUT)
  uut : entity work.scale_clock
    generic map(
      limit => 20)
    port map (
      CLK_50MHZ => clk_50MHz,
      RST       => rst,
      CLK_10HZ_enable  => clk_10Hz_enable
      );

  -- Clock process definitions
  clk_50Mhz_process : process
  begin
    clk_50MHz <= '0';
    wait for clk_50MHz_period/2;
    clk_50MHz <= '1';
    wait for clk_50MHz_period/2;
  end process;

  -- Stimulus process
  stim_proc : process
  begin
    -- hold reset state for 50 ns.
    rst <= '1';
    wait for 50 ns;
    rst <= '0';

    wait;
  end process;

end;



