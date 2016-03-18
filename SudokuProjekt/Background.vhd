----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:03 01/18/2016 
-- Design Name: 
-- Module Name:    lab11_image - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity background is
	port
		(
			clk : in std_logic;
			x : in std_logic_vector(9 downto 0);
         y : in std_logic_vector(8 downto 0);
			rgb : out std_logic_vector(2 downto 0)
		);
end background;

architecture Behavioral of background is
signal clk_2 : std_logic;


signal xint : integer range 0 to 640;
signal yint : integer range 0 to 480;

signal status : integer range 0 to 1 := 1;

--signal counterx1 : integer range 0 to 640 := 0;
--signal counterx2 : integer range 180 to 640 := 180;

signal clock : integer range 0 to 1000000 := 0;

begin
  xint <= to_integer(unsigned(x));
  yint <= to_integer(unsigned(y));
		
process (clk)
    begin
        if rising_edge(clk) then
				if clock = 500000-1 then
					clock <= 0;
					clk_2 <= not clk_2;
	          else
				   clock <= clock + 1;
			   end if;
        end if;
    end process;
		
		
--process(x,y, clk_2)
--	begin
--	  if rising_edge(clk_2) then
--			if counterx2 = 639 then
--			  status <= 0;
--			else
--			  if counterx1 = 1 then
--			    status <= 1;
--			  end if;
--	      end if;
--
--			if status = 0 then
--				counterx1 <= counterx1 - 1;
--				counterx2 <= counterx2 - 1;
--			  else
--			    counterx1 <= counterx1 + 1;
--			    counterx2 <= counterx2 + 1;
--			end if;	
--	end if;		
--end process;


process(xint, yint)
	begin
			if xint > 180 and xint < 480 and
 			   yint > 80 and yint < 380 then
				rgb <= "000";
				-----tutaj trzeba podzieliæ ten du¿y kwadrat na 9 malych, i wpisaæ w ka¿dym kwadracie jakieœ liczby
				-----potem podl¹czymy modul do shematy ktury by generowa³ nam 9 liczb
			else
				rgb <= "111";
			end if;
end process;


end Behavioral;