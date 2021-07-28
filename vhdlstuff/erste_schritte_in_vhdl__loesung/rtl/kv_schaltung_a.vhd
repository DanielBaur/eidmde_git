library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity KV_a is
  port ( A : in  std_logic;
         B : in  std_logic;
         C : in  std_logic;
         D : in  std_logic;
         Y : out std_logic);
end KV_a;

architecture Behavioral of KV_a is

begin
Y<=	   ( (not D) and (not C) and (not B) and (not A) ) 
		or ( (not D) and (not C) and     (B) and     (A) ) 

		or ( (not D) and     (C) and (not B) and (not A) )
		or ( (not D) and     (C) and     (B) and (not A) )

		or (     (D) and (not C) and (not B) and (not A) )
		or (     (D) and (not C) and     (B) and (not A) )

		or (     (D) and     (C) and (not B) and (not A) )
		or (     (D) and     (C) and     (B) and (not A) )
		or (     (D) and     (C) and     (B) and     (A) );
		
end Behavioral;

