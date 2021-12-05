library IEEE;

use IEEE.std_logic_1164.all;

entity eOR is
port(
  x1: in std_logic;
  x2: in std_logic;
  y: out std_logic);
end eOR;

architecture behv of eOR is
begin
  y <= x1 or x2;
end behv;
