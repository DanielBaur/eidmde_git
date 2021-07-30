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
  LED_OUTPUT <= "0000001" when NUMBER_INPUT = 0 else 
                "1001111" when NUMBER_INPUT = 1 else
                "0010010" when NUMBER_INPUT = 2 else
                "0000110" when NUMBER_INPUT = 3 else
                "1001100" when NUMBER_INPUT = 4 else
                "0100100" when NUMBER_INPUT = 5 else
                "0100000" when NUMBER_INPUT = 6 else
                "0001111" when NUMBER_INPUT = 7 else
                "0000000" when NUMBER_INPUT = 8 else
                "0000100" when NUMBER_INPUT = 9 else
                "0001000" when NUMBER_INPUT = 10 else
                "1100000" when NUMBER_INPUT = 11 else
                "0110001" when NUMBER_INPUT = 12 else
                "1000010" when NUMBER_INPUT = 13 else
                "0110000" when NUMBER_INPUT = 14 else
                "0111000" when NUMBER_INPUT = 15 else
                "1111111";
end Behavioral;
