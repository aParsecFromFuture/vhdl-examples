library IEEE;

use IEEE.std_logic_1164.all;

entity eXOR is
port(
  x1: in std_logic;
  x2: in std_logic;
  y: out std_logic);
end eXOR;

architecture behv of eXOR is
begin
  y <= x1 xor x2;
end behv;
