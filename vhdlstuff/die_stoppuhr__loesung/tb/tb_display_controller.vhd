
-- --------------------------------------------
-- libraries
-- --------------------------------------------

library ieee;
use ieee.std_logic_1164.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity display_controller_tb is
end display_controller_tb;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture behavior of display_controller_tb is

  --Inputs
  signal counter_input : std_logic_vector (15 downto 0):= (others => '0');
  signal led_output    : std_logic_vector (6 downto 0);
  signal disable_led   : std_logic_vector (3 downto 0);
  signal decimal_point : std_logic:= '0';
  signal clk           : std_logic;
  signal reset         : std_logic:= '1';
  signal enable        : std_logic:= '1';

  -- Clock period definitions 
  constant CLK_period : time := 20 ns;
  
begin

  uut : entity work.display_controller
    port map (
      COUNTER_INPUT => counter_input,
      LED_OUTPUT    => led_output,
      DISABLE_LED   => disable_led,
      DECIMAL_POINT => decimal_point,
      CLK           => clk,
      rst           => reset);


  -- clock process definitions
  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;


  -- Stimulus process
  stim_proc : process
  begin
    -- hold reset state for 100 ns.
    -- apply hex inputs to counter (equivalent to digits)
    wait for 100 ns;
    RESET        <= '0';
    counter_input <= x"0001";
    wait for CLK_period*5000;
    counter_input <= x"0009";
    wait for CLK_period*5000;
    counter_input <= x"0010";
    wait for CLK_period*5000;
    counter_input <= x"0089";
    wait for CLK_period*5000;
    counter_input <= x"0255";
    wait for CLK_period*5000;
    counter_input <= x"8888";
    wait for CLK_period*5000;

    -- insert stimulus here 

    wait;
  end process;

end;
