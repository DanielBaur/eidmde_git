library IEEE;
use IEEE.STD_LOGIC_1164.all;

Library UNISIM;
use UNISIM.vcomponents.all;

entity KV_c is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : in  std_logic;
         D : in  std_logic;
         Y : out std_logic);
end KV_c;

architecture Behavioral of KV_c is



begin

   LUT4_D_inst : LUT4_L
   generic map (
      INIT => X"D559")
   port map (
      LO => Y, -- LUT local output
      I0 => A, -- LUT input
      I1 => B, -- LUT input
      I2 => C, -- LUT input
      I3 => D  -- LUT input
   );


end Behavioral;
