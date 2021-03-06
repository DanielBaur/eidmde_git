
-- ----------------------------------------
-- libraries
-- ----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;



-- ----------------------------------------
-- entity
-- ----------------------------------------

entity not_gate is
   port (A : in  std_logic;
         B : out std_logic);
end not_gate;



-- ----------------------------------------
-- architecture
-- ----------------------------------------

architecture Behavioral of not_gate is

begin
  
  B <= not A;

end Behavioral;

