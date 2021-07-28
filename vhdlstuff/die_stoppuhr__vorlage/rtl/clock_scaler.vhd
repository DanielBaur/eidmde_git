library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity scale_clock is
  generic(
    limit : integer);
  port (
    CLK_50MHZ : in    std_logic;
    RST       : in    std_logic;
    CLK_10HZ_enable  : out std_logic);
end scale_clock;

architecture Behavioral of scale_clock is

  signal count : unsigned(23 downto 0);

begin

  gen_clk : process (CLK_50MHZ, RST)
  begin  -- process gen_clk
    if RST = '1' then
      CLK_10HZ_enable <= '0';
      count    <= (others => '0');
      
    elsif rising_edge(clk_50Mhz) then
      if count = limit then
        count    <= (others => '0');
        CLK_10HZ_enable <= '1';
      else
        CLK_10HZ_enable <='0';
		  count <= count + "1";
      end if;
      
    end if;
    
  end process gen_clk;

end Behavioral;
