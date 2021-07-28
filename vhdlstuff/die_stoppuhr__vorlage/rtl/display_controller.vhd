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
  --diesen counter benutzen um ein display segment fr eine gewisse Zeit eingeschaltet zu lassen (siehe Prozess)
  signal ctr                            : unsigned (12 downto 0) := (others => '0');

begin

  -- splitten des inputs
  digit0 <= COUNTER_INPUT (3 downto 0);
  digit1 <= COUNTER_INPUT (7 downto 4);
  digit2 <= COUNTER_INPUT (11 downto 8);
  digit3 <= COUNTER_INPUT (15 downto 12);

  --multiplex digits according to ctr
  clocking : process (CLK)
    
  begin
    if RST = '1' then
      --den asynchronen reset Zustand implementieren
      
    elsif rising_edge(CLK) then
      
		--den counter inkrementieren
		--nach Ablauf des counters:
		--  -nur das nchste display segment einschalten
		--  -den Dezimalpunkt setzen
		--  -led_uncoded(Input fr seven_seg_encoder) setzen
    
	 end if;
  end process;

 --den seven_seg_encoder instanzieren und led_uncoded drauf geben
  --der Ausgang ist dann direkt LED_OUTPUT

  
end Behavioral;

