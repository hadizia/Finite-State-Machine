library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.NUMERIC_STD.ALL ;
entity g38_multi_mode_counter is
Port (start : in std_logic ;
	stop : in std_logic;
	direction : in std_logic;
	reset : in std_logic ;
	clk : in std_logic ;
	HEX0 : out std_logic_vector (6 downto 0);
	HEX1 : out std_logic_vector (6 downto 0));
end g38_multi_mode_counter ;

architecture arch_g38_multi_mode_counter of g38_multi_mode_counter  is
component g38_FSM Port (enable : in std_logic ;
	direction : in std_logic;
	reset : in std_logic ;
	clk : in std_logic ;
	count : out std_logic_vector (3 downto 0));
end component;

component g38_button_memory port ( start : in std_logic  ;
	stop : in std_logic ;
	clk : in std_logic;
	reset : in std_logic;
	start_out : out std_logic;
	stop_out : out std_logic);
end component;

component g38_clock_divider Port (enable : in std_logic ;
	reset :  in std_logic ;
	clk :  in std_logic ;
	en_out : out std_logic );
end component;

component g38_hex_decoder Port (count : in std_logic_vector (3 downto 0);
	hex : out std_logic_vector (6 downto 0));
end component;
signal en_out : std_logic :='0';
signal count,tmp0,tmp1 : std_logic_vector (3 downto 0) :="0000";
signal start_out,stop_out : std_logic :='0';
signal enable,check : std_logic :='0';
begin
fsm : g38_FSM Port map(enable => en_out, direction => direction, reset => reset, clk => clk, count => count);
btn1 : g38_button_memory port map( start => start, stop => stop, clk => clk, reset => reset, start_out => start_out, stop_out => stop_out);
clk_div : g38_clock_divider Port map(enable => enable, reset => reset, clk => clk, en_out => en_out);
decoder1 : g38_hex_decoder Port map(count => tmp0, hex => HEX0);
decoder2 : g38_hex_decoder Port map(count => tmp1, hex => HEX1);


process (start_out,stop_out)
begin
if start_out='0' and stop_out='1' then
enable<='1';
check<='1';
elsif start_out='1' and stop_out='0' then
enable<='0';
else
if check='1' then
enable<='1';
else
enable<='0';
end if;
end if;
end process;

with count select tmp0 <= 
"0000" when "0000",
"0001" when "0001",
"0010" when "0010",
"0011" when "0011",
"0100" when "0100",
"0101" when "0101",
"0110" when "0110",
"0111" when "0111",
"1000" when "1000",
"1001" when "1001",
"0000" when "1010",
"0001" when "1011",
"0010" when "1100",
"0011" when "1101",
"0100" when "1110",
"0101" when "1111",
"0000" when others;

with count select tmp1 <= 
"0000" when "0000",
"0000" when "0001",
"0000" when "0010",
"0000" when "0011",
"0000" when "0100",
"0000" when "0101",
"0000" when "0110",
"0000" when "0111",
"0000" when "1000",
"0000" when "1001",
"0001" when "1010",
"0001" when "1011",
"0001" when "1100",
"0001" when "1101",
"0001" when "1110",
"0001" when "1111",
"0000" when others;

end arch_g38_multi_mode_counter ;