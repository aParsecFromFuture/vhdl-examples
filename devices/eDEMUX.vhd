library IEEE;

use IEEE.std_logic_1164.all;

entity eDEMUX is
port(
  x: in std_logic;
  s: in std_logic;
  y1: out std_logic;
  y2: out std_logic);
end eDEMUX;

architecture behv of eDEMUX is
begin
  y1 <= x when s = '0' else 'Z';
  y2 <= x when s = '1' else 'Z';
end behv;
