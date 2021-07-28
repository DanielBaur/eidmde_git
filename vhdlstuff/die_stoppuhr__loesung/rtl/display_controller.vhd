library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity display_controller is
  port (COUNTER_INPUT : in    std_logic_vector (15 downto 0);
        LED_OUTPUT    : out   std_logic_vector (6 downto 0);
        DISABLE_LED   : inout std_logic_vector (3 downto 0);
        DECIMAL_POINT : out   std_logic;
        CLK           : in    std_logic;
        RST         : in    std_logic);

end display_controller;

architecture Behavioral of display_controller is

  signal digit0, digit1, digit2, digit3 : std_logic_vector (3 downto 0);
  signal led_uncoded                    : unsigned (3 downto 0);
  signal ctr                            : unsigned (12 downto 0) := (others => '0');

begin

  -- split input into digits
  digit0 <= COUNTER_INPUT (3 downto 0);
  digit1 <= COUNTER_INPUT (7 downto 4);
  digit2 <= COUNTER_INPUT (11 downto 8);
  digit3 <= COUNTER_INPUT (15 downto 12);

  --multiplex digits according to ctr
  clocking : process (CLK)
    
  begin
    if RST = '1' then
      ctr           <= (others => '0');
      DISABLE_LED   <= "1110";
      DECIMAL_POINT <= '1';
      LED_UNCODED   <= (others => '0');
      
    elsif rising_edge(CLK) then
      if (CTR = 0) then
        if (DISABLE_LED = "1110") then
          DISABLE_LED   <= "1101";
          DECIMAL_POINT <= '0';
          led_uncoded   <= unsigned(digit1);
        elsif DISABLE_LED = "1101" then
          DISABLE_LED   <= "1011";
          DECIMAL_POINT <= '1';
          led_uncoded   <= unsigned(digit2);
        elsif (DISABLE_LED = "1011") then
          DISABLE_LED <= "0111";
          led_uncoded <= unsigned(digit3);
        elsif DISABLE_LED = "0111" then
          DISABLE_LED <= "1110";
          led_uncoded <= unsigned(digit0);
        end if;
      end if;
      CTR <= CTR+1;
    end if;
  end process;

  seven_seg_encoder_1 : entity work.seven_seg_encoder
    port map (
      NUMBER_INPUT => led_uncoded,
      LED_OUTPUT   => LED_OUTPUT);

  
end Behavioral;

