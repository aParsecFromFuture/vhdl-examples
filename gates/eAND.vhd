library IEEE;

use IEEE.std_logic_1164.all;

entity eAND is
port(
  x1: in std_logic;
  x2: in std_logic;
  y: out std_logic);
end eAND;

architecture behv of eAND is
begin
  y <= x1 and x2;
end behv;
