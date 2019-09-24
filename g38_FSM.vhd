library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.NUMERIC_STD.ALL ;
entity g38_FSM is
Port (enable : in std_logic ;
	direction : in std_logic;
	reset : in std_logic ;
	clk : in std_logic ;
	count : out std_logic_vector (3 downto 0));
end g38_FSM ;

architecture arch_g38_FSM  of g38_FSM  is

signal S0 : std_logic_vector (3 downto 0) :="0000";
signal S1 : std_logic_vector (3 downto 0) :="0001";
signal S2 : std_logic_vector (3 downto 0) :="0010";
signal S3 : std_logic_vector (3 downto 0) :="0011";
signal S4 : std_logic_vector (3 downto 0) :="0100";
signal S5 : std_logic_vector (3 downto 0) :="0101";
signal S6 : std_logic_vector (3 downto 0) :="0110";
signal S7 : std_logic_vector (3 downto 0) :="0111";
signal S8 : std_logic_vector (3 downto 0) :="1000";
signal S9 : std_logic_vector (3 downto 0) :="1001";
signal S10 : std_logic_vector (3 downto 0) :="1010";
signal S11 : std_logic_vector (3 downto 0) :="1011";
signal S12 : std_logic_vector (3 downto 0) :="1100";
signal S13 : std_logic_vector (3 downto 0) :="1101";
signal S14 : std_logic_vector (3 downto 0) :="1110";
signal S15 : std_logic_vector (3 downto 0) :="1111";
signal state : std_logic_vector (3 downto 0) :=S0;

begin
process(clk,reset)
begin
if reset='0' then 
if direction='1' then
state<=S1;
else
state<=S9;
end if;
else
if (clk'EVENT and clk='1') then
if enable='1' then
case state is 
when "0001" => 
	if direction='1' then
	state<=S2;
	else
	state<=S9;
	end if;
when "0010" => 
	if direction='1' then
	state<=S4;
	else
	state<=S1;
	end if;
when "0011" => 
	if direction='1' then
	state<=S6;
	else
	state<=S8;
	end if;
when "0100" => 
	if direction='1' then
	state<=S8;
	else
	state<=S2;
	end if;
when "0101" => 
	if direction='1' then
	state<=S10;
	else
	state<=S11;
	end if;
when "0110" => 
	if direction='1' then
	state<=S12;
	else
	state<=S3;
	end if;
when "0111" => 
	if direction='1' then
	state<=S14;
	else
	state<=S10;
	end if;
when "1000" => 
	if direction='1' then
	state<=S3;
	else
	state<=S4;
	end if;
when "1001" => 
	if direction='1' then
	state<=S1;
	else
	state<=S13;
	end if;
when "1010" =>
	if direction='1' then
	state<=S7;
	else
	state<=S5;
	end if;
when "1011" =>
	if direction='1' then
	state<=S5;
	else
	state<=S12;
	end if;
when "1100" =>
	if direction='1' then
	state<=S11;
	else
	state<=S6;
	end if;
when "1101" =>
	if direction='1' then
	state<=S9;
	else
	state<=S15;
	end if;
when "1110" =>
	if direction='1' then
	state<=S15;
	else
	state<=S7;
	end if;
when "1111" =>
	if direction='1' then
	state<=S13;
	else
	state<=S14;
	end if;
when others => state<=S1;
end case;
else
state<=state;
end if;
end if;
end if;
end process;

with state select count <= 
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
"1010" when "1010",
"1011" when "1011",
"1100" when "1100",
"1101" when "1101",
"1110" when "1110",
"1111" when "1111",
"0000" when others;

end arch_g38_FSM ;