library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity KV_b is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : in  std_logic;
         D : in  std_logic;
         Y : out std_logic);
end KV_b;

architecture Behavioral of KV_b is

begin
 Y<= (     (C) and (not A)                 ) 
  or (     (D) and (not A)                 ) 
  or ( (not B) and (not A)                 ) 
  or (     (D) and     (C) and (B)         ) 
  or ( (not D) and (not C) and (B) and (A) );
end Behavioral;

