LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY fanaria_tb IS
END ENTITY fanaria_tb;

ARCHITECTURE testb OF fanaria_tb IS

COMPONENT fanaria
PORT(
clk, reset : IN  STD_LOGIC;
a_red, a_yellow, a_green      : OUT STD_LOGIC;
b_red, b_yellow, b_green      : OUT STD_LOGIC 
);
END COMPONENT;

SIGNAL clk   : STD_LOGIC := '0';
SIGNAL reset : STD_LOGIC := '1';
SIGNAL a_red, a_yellow, a_green : STD_LOGIC;
SIGNAL b_red, b_yellow, b_green : STD_LOGIC;

CONSTANT clk_period : TIME := 10 ns;

BEGIN

DUT: fanaria
PORT MAP(
clk      => clk,
reset    => reset,
a_red    => a_red,
a_yellow => a_yellow,
a_green  => a_green,
b_red    => b_red,
b_yellow => b_yellow,
b_green  => b_green
);


clk_process : PROCESS
BEGIN
   clk <= '0';
   WAIT FOR clk_period / 2;
   clk <= '1';
   WAIT FOR clk_period / 2;
END PROCESS;


stim_process : PROCESS
BEGIN
   reset <= '1';
   WAIT FOR 20 ns;
   reset <= '0';
   
  WAIT FOR 600 ns;

  WAIT;
END PROCESS;
END ARCHITECTURE testb;
