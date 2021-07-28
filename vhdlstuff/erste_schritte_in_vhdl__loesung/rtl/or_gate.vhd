
-- ----------------------------------------
-- libraries
-- ----------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;





-- ----------------------------------------
-- entity
-- ----------------------------------------


entity or_gate is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : out std_logic);
end or_gate;





-- ----------------------------------------
-- architecture
-- ----------------------------------------


architecture Behavioral of or_gate is

begin
  C <= A or B;

end Behavioral;

