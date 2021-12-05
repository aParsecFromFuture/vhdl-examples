library IEEE;

use IEEE.std_logic_1164.all;

entity eDFF is
port(
  d: in std_logic;
  clk: in std_logic;
  q: out std_logic;
  qnot: out std_logic);
end eDFF;

architecture behv of eDFF is
signal mem: std_logic := '0';
begin
  q <= mem;
  qnot <= not(mem);
  process(clk) is
  begin
    if rising_edge(clk) then
      mem <= d;
    end if;
  end process;
end behv;
