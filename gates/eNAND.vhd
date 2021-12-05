library IEEE;

use IEEE.std_logic_1164.all;

entity eNAND is
port(
  x1: in std_logic;
  x2: in std_logic;
  y: out std_logic);
end eNAND;

architecture behv of eNAND is
begin
  y <= not(x1 and x2);
end behv;
