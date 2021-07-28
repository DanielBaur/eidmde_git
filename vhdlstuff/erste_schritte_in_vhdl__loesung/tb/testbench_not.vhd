-- TestBench Template 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_not is
end testbench_not;

architecture behavior of testbench_not is

  signal a: std_logic := '0';
  signal output : std_logic := '0';
begin

  -- Entity Instantiation
  not_gate_1: entity work.not_gate
    port map (
      A => a,
      B => output);

  
  -- Stimulus
  tb: process 
	begin
	
	a<='1';
	wait for 20 ns;
	a<='0';
	wait for 20 ns;
	a<='1';
	wait for 20 ns;
   a<='0';     
    wait;                               -- will wait forever
  end process tb;
  --  End Test Bench 

end;

