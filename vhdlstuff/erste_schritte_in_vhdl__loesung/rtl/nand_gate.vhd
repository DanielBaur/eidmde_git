library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity nand_gate is
   port (A : in  std_logic;
         B : in  std_logic;
         C : out std_logic);
end nand_gate;

architecture Behavioral of nand_gate is

begin
  C <= A nand B;

end Behavioral;

