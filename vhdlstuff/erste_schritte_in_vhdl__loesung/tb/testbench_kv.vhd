library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testbench_KV is
end testbench_KV;

architecture behavior of testbench_KV is
  --Stimulussignale
  signal test_A, test_B, test_C, test_D : std_logic := '0';
  --Ausgangssignale
  signal Output_a, Output_b, Output_c   : std_logic;

begin
  --Instanzierung der Schaltungen
  my_KV_a : entity work.KV_a
    port map (
      A => test_A,
      B => test_B,
      C => test_C,
      D => test_D,
      Y => Output_a);
		
  my_KV_b : entity work.KV_b
    port map (
      A => test_A,
      B => test_B,
      C => test_C,
      D => test_D,
      Y => Output_b);
		
  my_KV_c : entity work.KV_c
    port map (
      A => test_A,
      B => test_B,
      C => test_C,
      D => test_D,
      Y => Output_c);

  --stimulus process
  stim_proc : process
  begin

		test_D<='0';
		test_C<='0';
		test_B<='0';
		test_A<='0';
		wait for 20 ns;
		test_D<='0';
		test_C<='0';
		test_B<='0';
		test_A<='1';
		wait for 20 ns;
		test_D<='0';
		test_C<='0';
		test_B<='1';
		test_A<='0';
		wait for 20 ns;
		test_D<='0';
		test_C<='0';
		test_B<='1';
		test_A<='1';
		wait for 20 ns;
        
		test_D<='0';
		test_C<='1';
		test_B<='0';
		test_A<='0';
		wait for 20 ns;
		test_D<='0';
		test_C<='1';
		test_B<='0';
		test_A<='1';
		wait for 20 ns;
		test_D<='0';
		test_C<='1';
		test_B<='1';
		test_A<='0';
		wait for 20 ns;
		test_D<='0';
		test_C<='1';
		test_B<='1';
		test_A<='1';
		wait for 20 ns;  
		  
		test_D<='1';
		test_C<='0';
		test_B<='0';
		test_A<='0';
		wait for 20 ns;
		test_D<='1';
		test_C<='0';
		test_B<='0';
		test_A<='1';
		wait for 20 ns;
		test_D<='1';
		test_C<='0';
		test_B<='1';
		test_A<='0';
		wait for 20 ns;
		test_D<='1';
		test_C<='0';
		test_B<='1';
		test_A<='1';
		wait for 20 ns;  
		
		test_D<='1';
		test_C<='1';
		test_B<='0';
		test_A<='0';
		wait for 20 ns;
		test_D<='1';
		test_C<='1';
		test_B<='0';
		test_A<='1';
		wait for 20 ns;
		test_D<='1';
		test_C<='1';
		test_B<='1';
		test_A<='0';
		wait for 20 ns;
		test_D<='1';
		test_C<='1';
		test_B<='1';
		test_A<='1';
		wait for 20 ns;  
		  
                
    wait;
  end process;

end architecture behavior;
