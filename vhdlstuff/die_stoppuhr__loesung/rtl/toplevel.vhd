library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity toplevel is
  port(
    --clock 50MHz
    clkin : in std_logic;

    -- Buttons
    BTN : in std_logic_vector(3 downto 0);

    --7 Segment Display
    SEVEN_SEG_DIGIT : out   std_logic_vector(6 downto 0);
    DISABLE_BlOCK   : inout std_logic_vector(3 downto 0);
    DECIMAL_POINT   : out   std_logic);
end toplevel;

architecture Behavioral of toplevel is

  signal led_buffer : std_logic_vector(6 downto 0);
  signal clk_10hz_enable   : std_logic;
  signal bcd_out    : std_logic_vector(15 downto 0);

  signal debounced  : std_logic;

  signal reset_clk_scaler : std_logic;

begin

  debouncer : entity work.debouncing
    port map (
      CLK     => clkin,
      bouncy     => BTN(1),
      debounced => debounced);


  reset_clk_scaler<=debounced or btn(0);
  
  -- counter scaling to tenth seconds
  clock_scaler : entity work.scale_clock
    generic map(
      limit => 5000000
		)
    port map (
      CLK_50MHZ => clkin,
      RST       => reset_clk_scaler,
      CLK_10HZ_enable  => clk_10hz_enable);

  bcd_counter_1 : entity work.bcd_counter
    port map (
      CLK     => clkin,
		CLK_en     => clk_10hz_enable,
      RST     => BTN(0),
      start_stop => debounced,
		BCD_OUT => bcd_out);


  display_controller_1 : entity work.display_controller
    port map (
      COUNTER_INPUT => bcd_out,
      LED_OUTPUT    => SEVEN_SEG_DIGIT,
      DECIMAL_POINT => DECIMAL_POINT,
      DISABLE_LED   => DISABLE_BLOCK,
      CLK           => CLKIN,
      RST           => BTN(0));


end architecture;
