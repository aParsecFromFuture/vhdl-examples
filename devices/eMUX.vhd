library IEEE;

use IEEE.std_logic_1164.all;

entity eMUX is
port(
  x1: in std_logic;
  x2: in std_logic;
  s: in std_logic;
  y: out std_logic);
end eMUX;

architecture behv of eMUX is
begin
  with s select
    y <= x1 when '0',
         x2 when '1',
         'Z' when others;
end behv;
