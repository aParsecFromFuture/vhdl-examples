library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity eCounter is
port(
  r: in std_logic;
  clk: in std_logic;
  y: out std_logic_vector(7 downto 0));
end eCounter;

architecture behv of eCounter is
signal mem: std_logic_vector(7 downto 0) := "00000000";
begin
  y <= mem;
  process(clk) is
  begin
    if rising_edge(clk) then
      if r = '1' then
        mem <= "00000000";
      else
        mem <= std_logic_vector(unsigned(mem) + 1);
      end if;
    end if;
  end process;
end behv;
