
-- --------------------------------------------
-- libraries
-- --------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity tb_seven_seg is
end entity tb_seven_seg;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture behav of tb_seven_seg is

  -- inputs
  signal number_input : unsigned (3 downto 0);

  -- outputs
  signal led_output : std_logic_vector (6 downto 0);
  
begin  --architecture behav
  
  uut : entity work.seven_seg_encoder
    port map (
      NUMBER_INPUT => number_input,
      LED_OUTPUT   => led_output);

-- purpose: stim process
-- type   : combinational

  stim : process is
  begin  -- process stim
    number_input <= "0000";             --0
    wait for 10 ns;
    number_input <= "0001";             --1
    wait for 10 ns;
    number_input <= "0010";             --2
    wait for 10 ns;
    number_input <= "0011";             --3
    wait for 10 ns;
    number_input <= "0100";             --4
    wait for 10 ns;
    number_input <= "0101";             --5
    wait for 10 ns;
    number_input <= "0110";             --6
    wait for 10 ns;
    number_input <= "0111";             --7
    wait for 10 ns;
    number_input <= "1000";             --8
    wait for 10 ns;
    number_input <= "1001";             --9
    wait for 10 ns;
    number_input <= "1010";             --10
    wait for 10 ns;
    
  end process stim;
  
end architecture behav;
