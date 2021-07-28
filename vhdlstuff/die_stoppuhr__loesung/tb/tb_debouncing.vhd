LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_debouncing IS
END tb_debouncing;
 
ARCHITECTURE behavior OF tb_debouncing IS 
 
    COMPONENT debouncing
    PORT(
         clk : IN  std_logic;
         bouncy : IN  std_logic;
         debounced : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal bouncy : std_logic := '0';

 	--Outputs
   signal debounced : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: debouncing PORT MAP (
          clk => clk,
          bouncy => bouncy,
          debounced => debounced
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   
   stim_proc: process
   begin		
      
      wait for 102 ns;	
      bouncy<='1';
		wait for 4.5 ns;
		bouncy<='0';
		wait for 10.4 ns;
		bouncy<='1';
		wait for 3.5 ns;
		bouncy<='0';
		wait for 7.4 ns;
		bouncy<='1';
		wait for 3.5 ns;
      bouncy<='0';
		wait for 20 ms;
		bouncy<='1';
		wait for 4.5 ns;
		bouncy<='0';
		wait for 10.4 ns;
		bouncy<='1';
		wait for 3.5 ns;
		bouncy<='0';
		wait for 7.4 ns;
		bouncy<='1';
		wait for 3.5 ns;
      bouncy<='0';


      wait;
   end process;

END;
