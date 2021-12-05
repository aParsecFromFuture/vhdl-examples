library IEEE;

use IEEE.std_logic_1164.all;

entity eJKFF is
port(
  j: in std_logic;
  k: in std_logic;
  clk: in std_logic;
  q: out std_logic;
  qnot: out std_logic);
end eJKFF;

architecture behv of eJKFF is
signal mem: std_logic := '0';
begin
  process(clk) is
  begin
    if rising_edge(clk) then
      if j = '0' and k = '0' then
        mem <= mem;
      elsif j = '0' and k = '1' then
        mem <= '0';
      elsif j = '1' and k = '0' then
        mem <= '1';
      elsif j = '1' and k = '1' then
        mem <= not(mem);
      else
        mem <= 'Z';
      end if;
    end if;
  end process;
end behv;
