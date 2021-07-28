library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testbench_KV is
end testbench_KV;

architecture behavior of testbench_KV is

  --Stimulussignale habe ich schon mal angelegt
  signal test_A, test_B, test_C, test_D : std_logic := '0';
  
  --Ausgangssignale definieren

begin

  --Instanzierung der Schaltungen KV_a, KV_b und evtl. KV_c
  -- und mit Stimulus- und Ausgangssignalen verbinden
 
 --stimulus process
 --das Eintragen der Tabelle habe ich uebernommen 
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
