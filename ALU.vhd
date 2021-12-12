library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity ALU is
 Port ( A, B : IN std_logic_vector (3 downto 0);
 C : IN std_logic_vector (1 downto 0); 
R : out std_logic_vector (7 downto 0));
end ALU;
architecture Behavioral of ALU is
BEGIN
with C SELECT
 R <= A * B when "00", 
 ("0000" & A) + ("0000" & B) when "01", 
 ("0000" & A) AND ("0000" & B) when "10", 
 ("0000" & A) OR ("0000" & B) when others; 
 end Behavioral;