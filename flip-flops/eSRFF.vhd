library IEEE;

use IEEE.std_logic_1164.all;

entity eSRFF is
port(
  s: in std_logic;
  r: in std_logic;
  clk: in std_logic;
  q: out std_logic;
  qnot: out std_logic);
end eSRFF;

architecture behv of eSRFF is
signal mem: std_logic := '0';
begin
  q <= mem;
  qnot <= not(mem);
  process(clk) is
  begin
    if rising_edge(clk) then
      if s = '0' and r = '0' then
        mem <= mem;
      elsif s = '0' and r = '1' then
        mem <= '0';
      elsif s = '1' and r = '0' then
        mem <= '1';
      else
        mem <= 'Z';
      end if;
    end if;
  end process;
end behv;
