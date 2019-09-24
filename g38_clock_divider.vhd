library IEEE ;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.numeric_std.all;
entity g38_clock_divider is
Port (enable : in std_logic ;
reset :  in std_logic ;
clk :  in std_logic ;
en_out : out std_logic );
end g38_clock_divider;

architecture arch_g38_clock_divider of g38_clock_divider is
signal count : integer range 0 to 50000000 :=50000000;
begin

process (clk)
begin
if reset='0' then 
count<=50000000;
else
if (clk'EVENT and clk='1') then
if enable='1' then
if count=0 then
count<=50000000;
else
count<=count-1;
end if;
else
count<=count;
end if;
end if;
end if;
end process;

process (count)
begin
if count=0 then
en_out<='1';
else 
en_out<='0';
end if;
end process;


end arch_g38_clock_divider;