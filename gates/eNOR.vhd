library IEEE;

use IEEE.std_logic_1164.all;

entity eNOR is
port(
  x1: in std_logic;
  x2: in std_logic;
  y: out std_logic);
end eNOR;

architecture behv of eNOR is
begin
  y <= not(x1 or x2);
end behv;
