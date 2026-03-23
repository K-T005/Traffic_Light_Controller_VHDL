LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


ENTITY fanaria IS
    PORT ( clk, reset : IN  STD_LOGIC;
           a_red, a_yellow, a_green      : OUT STD_LOGIC;
           b_red, b_yellow, b_green      : OUT STD_LOGIC 
           );
END ENTITY fanaria;

ARCHITECTURE fsm_fan OF fanaria IS


TYPE state_type IS (s_a_green, s_a_yellow, s_b_green, s_b_yellow);
SIGNAL current_state: state_type := s_a_green;
SIGNAL timer: integer RANGE 0 TO 15  := 0;

CONSTANT t_a_green : integer := 10;
CONSTANT t_a_yellow : integer := 3;
CONSTANT t_b_green : integer := 6;
CONSTANT t_b_yellow : integer := 3;

BEGIN

process (clk, reset)
begin
  if reset = '1' then
    current_state <= s_a_green;
    timer <= 0;
    
elsif rising_edge(clk) then
  case current_state is
  
   when s_a_green =>
   --an einai ftasei sta oria i alliws 9 sec
    if timer = t_a_green - 1 then                 
     current_state <= s_a_yellow;
     timer <= 0;
    else
     timer <= timer + 1;
    end if;

--an einai ftasei sta oria i alliws 2 sec
   when s_a_yellow =>
    if timer = t_a_yellow - 1 then                 
      current_state <= s_b_green;
      timer <= 0;
    else
      timer <= timer + 1;
    end if;

   when s_b_green =>
    if timer = t_b_green - 1 then               
     current_state <= s_b_yellow;
     timer <= 0;
    else
     timer <= timer + 1;
    end if;

   when s_b_yellow =>
    if timer = t_b_yellow - 1 then               
     current_state <= s_a_green;
     timer <= 0;
    else
    timer <= timer + 1;
   end if;
  end case; 
 end if;
end process;


a_green  <= '1' when current_state = s_a_green else '0';
a_yellow <= '1' when current_state = s_a_yellow else '0';
a_red    <= '1' when (current_state = s_b_green or current_state = s_b_yellow) else '0';


b_green  <= '1' when current_state = s_b_green else '0';
b_yellow <= '1' when current_state = s_b_yellow else '0';
b_red    <= '1' when (current_state = s_a_green or current_state = s_a_yellow) else '0';

END ARCHITECTURE fsm_fan;
