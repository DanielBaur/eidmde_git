library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xor_gate is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : out std_logic);
end xor_gate;

architecture Behavioral of xor_gate is

begin
  
  C <= A xor B;

end Behavioral;

