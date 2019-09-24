library IEEE;
use IEEE.std_logic_1164.all;

entity tb_g38_FSM is
end tb_g38_FSM;

architecture arch_tb_g38_FSM of tb_g38_FSM is

-- component declaration for the unit under test (uut)
component g38_FSM
	Port (enable : in std_logic ;
	direction : in std_logic;
	reset : in std_logic ;
	clk : in std_logic ;
	count : out std_logic_vector (3 downto 0));
end component;

--declare inputs and initialize them to zero.
signal enable_tb,reset_tb,clk_tb,direction_tb : std_logic :='0';

--declare outputs
signal count_tb : std_logic_vector (3 downto 0);

-- define the period of clock here.
-- It's recommended to use CAPITAL letters to define constants.
constant CLK_PERIOD : time := 10 ns;

begin 
-- instantiate the unit under test (uut)
uut : g38_FSM Port map(enable => enable_tb, direction => direction_tb, reset => reset_tb, clk => clk_tb, count => count_tb);

process
begin
wait for CLK_PERIOD/2;--wait for half clock cycle
clk_tb <= not clk_tb;
end process;

process
begin
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='0';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='1';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='0';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='0';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle
enable_tb<='1';
reset_tb<='1';
direction_tb<='0';
wait for CLK_PERIOD;--wait for clock cycle

end process;
end arch_tb_g38_FSM;



