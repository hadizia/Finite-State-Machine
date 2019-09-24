library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.NUMERIC_STD.ALL ;
entity g38_button_memory is 
Port ( start : in std_logic  ;
	stop : in std_logic ;
	clk : in std_logic;
	reset : in std_logic;
	start_out : out std_logic;
	stop_out : out std_logic);
end g38_button_memory ;

architecture arch_g38_button_memory of g38_button_memory is
signal start_out_temp, stop_out_temp : std_logic :='0';

begin

process (clk)
begin
if reset='0' then 
start_out_temp<='1';
stop_out_temp<='1';
else
if (clk'EVENT and clk='1') then
if start='0' and stop='1' then
start_out_temp<='0';
stop_out_temp<='1';
elsif start='1' and stop='0' then
start_out_temp<='1';
stop_out_temp<='0';
else
start_out_temp<=start_out_temp;
stop_out_temp<=stop_out_temp;
end if;
end if; 
end if;
end process;

with start_out_temp select start_out <= 
'0' when '0',
'1' when '1',
'1' when others;

with stop_out_temp select stop_out <= 
'0' when '0',
'1' when '1',
'1' when others;

end arch_g38_button_memory;

