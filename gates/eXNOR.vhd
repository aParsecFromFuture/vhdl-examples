library IEEE;

use IEEE.std_logic_1164.all;

entity eXNOR is
port(
  x1: in std_logic;
  x2: in std_logic;
  y: out std_logic);
end eXNOR;

architecture behv of eXNOR is
begin
  y <= not(x1 xor x2);
end behv;
