----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:03 08/13/2024 
-- Design Name: 
-- Module Name:    flipflopD_subida - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity flipflopD_subida is
	port(	D, enable, clk : in std_logic;
			preset, clear : in std_logic;
			Q, Qb : out std_logic
	);
end flipflopD_subida;

architecture Behavioral of flipflopD_subida is

begin
	ffd : process(clk, preset, clear)
		variable estado : std_logic;
	begin
		if preset = '1' then
			estado := '1';
		elsif clear = '1' then
			estado := '0';
		elsif rising_edge(clk) and enable = '1' then
			estado := D;
		end if;
		
		Q <= estado;
		Qb <= not estado;
	end process;

end Behavioral;


