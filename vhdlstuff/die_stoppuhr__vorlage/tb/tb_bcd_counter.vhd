library ieee;
use ieee.std_logic_1164.all;

entity tb_bcd_counter is
end tb_bcd_counter;

architecture behavior of tb_bcd_counter is

  --Inputs
  signal clk,clk_en   : std_logic := '0';
  signal reset : std_logic := '1';
  signal start_stop : std_logic := '0';

  --Outputs
  signal bcd_out : std_logic_vector(15 downto 0);

  -- Clock period definitions
  constant CLK_period : time := 20 ns;
  constant CLK_en_time : time:= 100 ns;
  
begin

  --Instantiate the Unit Under Test (UUT)
  uut : entity work.bcd_counter port map (
    CLK => clk,
    CLK_en => clk_en,
	 rst    => reset,
    start_stop => start_stop,
	 BCD_OUT  => bcd_out
    );

  -- Clock process definitions
  CLK_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;
  
   -- Clock process definitions
  CLK_en_process : process
  begin
    clk_en <= '0';
    wait for CLK_en_time+clk_period/2;
    clk_en <= '1';
    wait for clk_period/2;
	 
  end process;

  

  -- Stimulus process
  stim_proc : process
  begin
    reset <= '1';
    wait for 50 ns;
    reset <= '0';
    wait for 500 ns;
	 start_stop<='1';
	 wait for clk_period/2;
	 start_stop<='0';
	 wait for (200 ns+clk_period/2);
	 start_stop<='1';
	 wait for clk_period/2;
	 start_stop<='0';
	 
	 
	 wait;
  end process;

end;
