library IEEE;

use IEEE.std_logic_1164.all;

entity eNOT is
port(
  x: in std_logic;
  y: out std_logic);
end eNOT;

architecture behv of eNOT is
begin
  y <= not(x);
end behv;
