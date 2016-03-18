--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Schema.vhf
-- /___/   /\     Timestamp : 03/17/2016 12:46:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "F:/Project UKLADY/ISE/SudokuProjekt/Schema.vhf" -w "F:/Project UKLADY/ISE/SudokuProjekt/Schema.sch"
--Design Name: Schema
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Schema is
   port ( Clk_50MHz : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end Schema;

architecture BEHAVIORAL of Schema is
   signal XLXN_1    : std_logic_vector (2 downto 0);
   signal XLXN_2    : std_logic_vector (9 downto 0);
   signal XLXN_3    : std_logic_vector (8 downto 0);
   component background
      port ( clk : in    std_logic; 
             x   : in    std_logic_vector (9 downto 0); 
             y   : in    std_logic_vector (8 downto 0); 
             rgb : out   std_logic_vector (2 downto 0));
   end component;
   
   component VideoDrv
      port ( clk  : in    std_logic; 
             rgb  : in    std_logic_vector (2 downto 0); 
             rout : out   std_logic; 
             gout : out   std_logic; 
             bout : out   std_logic; 
             hs   : out   std_logic; 
             vs   : out   std_logic; 
             x    : out   std_logic_vector (9 downto 0); 
             y    : out   std_logic_vector (8 downto 0));
   end component;
   
begin
   XLXI_1 : background
      port map (clk=>Clk_50MHz,
                x(9 downto 0)=>XLXN_2(9 downto 0),
                y(8 downto 0)=>XLXN_3(8 downto 0),
                rgb(2 downto 0)=>XLXN_1(2 downto 0));
   
   XLXI_2 : VideoDrv
      port map (clk=>Clk_50MHz,
                rgb(2 downto 0)=>XLXN_1(2 downto 0),
                bout=>VGA_B,
                gout=>VGA_G,
                hs=>VGA_HS,
                rout=>VGA_R,
                vs=>VGA_VS,
                x(9 downto 0)=>XLXN_2(9 downto 0),
                y(8 downto 0)=>XLXN_3(8 downto 0));
   
end BEHAVIORAL;


