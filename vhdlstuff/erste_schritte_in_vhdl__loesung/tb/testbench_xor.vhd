-- TestBench Template 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_xor is
end testbench_xor;

architecture behavior of testbench_xor is

  signal a,b: std_logic := '0';
  signal output : std_logic := '0';
begin

  -- Entity Instantiation
  xor_gate_1: entity work.xor_gate
    port map (
      A => a,
      B => b,
      C => output);

  
  -- Stimulus
  tb: process 
	begin
	
	a<='1';
	b<='1';
	wait for 20 ns;
	a<='1';
	b<='0';
	wait for 20 ns;
	a<='0';
	b<='1';
	wait for 20 ns;
	a<='0';
	b<='0';
	wait for 20 ns;
        
    wait;                               -- will wait forever
  end process tb;
  --  End Test Bench 

end;
