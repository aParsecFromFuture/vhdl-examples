library IEEE;

use IEEE.std_logic_1164.all;

entity eTFF is
port(
  t: in std_logic;
  clk: in std_logic;
  q: out std_logic;
  qnot: out std_logic);
end eTFF;

architecture behv of eTFF is
signal mem: std_logic := '0';
begin
  q <= mem;
  qnot <= not(mem);
  process(clk) is
  begin
    if rising_edge(clk) then
      if t = '0' then
        mem <= mem;
      elsif t = '1' then
        mem <= not(mem);
      end if;
    end if;
  end process;
end behv;
