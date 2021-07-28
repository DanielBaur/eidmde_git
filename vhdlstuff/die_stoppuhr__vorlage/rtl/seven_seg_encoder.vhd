library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_unsigned.all;

entity seven_seg_encoder is
  port (NUMBER_INPUT : in  unsigned (3 downto 0);
         LED_OUTPUT  : out std_logic_vector (6 downto 0));
end seven_seg_encoder;

architecture Behavioral of seven_seg_encoder is

begin
--7 Seg encoding
--
--Was muss an Stelle der Fragezeichen??????
--(Das mapping ist im .ucf dann spter als LED_OUTPUT <->(E14,G13,N15,P15,R16,F13,N16) gegeben )
--
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

