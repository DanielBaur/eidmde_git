
-- --------------------------------------------
-- libraries
-- --------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_unsigned.all;



-- --------------------------------------------
-- entity
-- --------------------------------------------

entity seven_seg_encoder is
  port (NUMBER_INPUT : in  unsigned (3 downto 0); -- input number (from 0 to 15) to be displayed onto the seven segment display
         LED_OUTPUT  : out std_logic_vector (6 downto 0)); -- decoded information forwarded to the the FPGA in order to display the input decimal number on the seven segment display
end seven_seg_encoder;



-- --------------------------------------------
-- architecture
-- --------------------------------------------

architecture Behavioral of seven_seg_encoder is

begin
  -- seven segment display encoding (information retrieved from the Spartan3 manual)
  LED_OUTPUT <= "?" when NUMBER_INPUT = 0 else 
                "?" when NUMBER_INPUT = 1 else
                "?" when NUMBER_INPUT = 2 else
                "?" when NUMBER_INPUT = 3 else
                "?" when NUMBER_INPUT = 4 else
                "?" when NUMBER_INPUT = 5 else
                "?" when NUMBER_INPUT = 6 else
                "?" when NUMBER_INPUT = 7 else
                "?" when NUMBER_INPUT = 8 else
                "?" when NUMBER_INPUT = 9 else
                "?" when NUMBER_INPUT = 10 else
                "?" when NUMBER_INPUT = 11 else
                "?" when NUMBER_INPUT = 12 else
                "?" when NUMBER_INPUT = 13 else
                "?" when NUMBER_INPUT = 14 else
                "?" when NUMBER_INPUT = 15 else
                "?";

end Behavioral;

