--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.2
--  \   \         Application : sch2hdl
--  /   /         Filename : VGA_Proyect.vhf
-- /___/   /\     Timestamp : 11/22/2012 14:57:35
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -sympath D:/Desktop/VGA_Duck_FINAL/VGA_Duck_Nuevo/ipcore_dir -intstyle ise -family spartan3e -flat -suppress -vhdl D:/Desktop/VGA_Duck_FINAL/VGA_Duck_Nuevo/VGA_Proyect.vhf -w D:/Desktop/VGA_Duck_FINAL/VGA_Duck_Nuevo/VGA_Proyect.sch
--Design Name: VGA_Proyect
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

entity VGA_Proyect is
   port ( CLK_50MHZ : in    std_logic; 
          ROT_A     : in    std_logic; 
          ROT_B     : in    std_logic; 
          SW0       : in    std_logic; 
          XLXN_30   : in    std_logic; 
          VGA_BLUE  : out   std_logic; 
          VGA_GREEN : out   std_logic; 
          VGA_HSYNC : out   std_logic; 
          VGA_RED   : out   std_logic; 
          VGA_VSYNC : out   std_logic; 
          PS2_CLK   : inout std_logic; 
          PS2_DATA  : inout std_logic);
end VGA_Proyect;

architecture BEHAVIORAL of VGA_Proyect is
   attribute BOX_TYPE   : string ;
   signal XLXN_9    : std_logic;
   signal XLXN_10   : std_logic;
   signal XLXN_11   : std_logic;
   signal XLXN_12   : std_logic_vector (9 downto 0);
   signal XLXN_13   : std_logic_vector (9 downto 0);
   signal XLXN_16   : std_logic_vector (15 downto 0);
   signal XLXN_17   : std_logic_vector (2 downto 0);
   signal XLXN_24   : std_logic;
   signal XLXN_28   : std_logic_vector (9 downto 0);
   signal XLXN_29   : std_logic_vector (9 downto 0);
   signal XLXN_53   : std_logic;
   signal XLXN_56   : std_logic;
   component Clk_div_25MHz
      port ( clk       : in    std_logic; 
             clk_25MHz : out   std_logic);
   end component;
   
   component VGA_SYNC
      port ( clock_25Mhz    : in    std_logic; 
             red            : in    std_logic; 
             green          : in    std_logic; 
             blue           : in    std_logic; 
             red_out        : out   std_logic; 
             green_out      : out   std_logic; 
             blue_out       : out   std_logic; 
             horiz_sync_out : out   std_logic; 
             vert_sync_out  : out   std_logic; 
             pixel_row      : out   std_logic_vector (9 downto 0); 
             pixel_column   : out   std_logic_vector (9 downto 0));
   end component;
   
   component reader
      port ( clk    : in    std_logic; 
             reset  : in    std_logic; 
             rot_a  : in    std_logic; 
             rot_b  : in    std_logic; 
             shot   : in    std_logic; 
             row    : in    std_logic_vector (9 downto 0); 
             col    : in    std_logic_vector (9 downto 0); 
             datain : in    std_logic_vector (2 downto 0); 
             xpos   : in    std_logic_vector (9 downto 0); 
             ypos   : in    std_logic_vector (9 downto 0); 
             R      : out   std_logic; 
             G      : out   std_logic; 
             B      : out   std_logic; 
             addr   : out   std_logic_vector (15 downto 0));
   end component;
   
   component mymemory
      port ( addra : in    std_logic_vector (15 downto 0); 
             clka  : in    std_logic; 
             douta : out   std_logic_vector (2 downto 0));
   end component;
   
   component MouseRefComp
      port ( CLK        : in    std_logic; 
             RESOLUTION : in    std_logic; 
             RST        : in    std_logic; 
             SWITCH     : in    std_logic; 
             LEFT       : out   std_logic; 
             MIDDLE     : out   std_logic; 
             NEW_EVENT  : out   std_logic; 
             RIGHT      : out   std_logic; 
             XPOS       : out   std_logic_vector (9 downto 0); 
             YPOS       : out   std_logic_vector (9 downto 0); 
             ZPOS       : out   std_logic_vector (3 downto 0); 
             PS2_CLK    : inout std_logic; 
             PS2_DATA   : inout std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXI_1 : Clk_div_25MHz
      port map (clk=>CLK_50MHZ,
                clk_25MHz=>XLXN_56);
   
   XLXI_2 : VGA_SYNC
      port map (blue=>XLXN_11,
                clock_25Mhz=>XLXN_56,
                green=>XLXN_10,
                red=>XLXN_9,
                blue_out=>VGA_BLUE,
                green_out=>VGA_GREEN,
                horiz_sync_out=>VGA_HSYNC,
                pixel_column(9 downto 0)=>XLXN_13(9 downto 0),
                pixel_row(9 downto 0)=>XLXN_12(9 downto 0),
                red_out=>VGA_RED,
                vert_sync_out=>VGA_VSYNC);
   
   XLXI_3 : reader
      port map (clk=>XLXN_56,
                col(9 downto 0)=>XLXN_13(9 downto 0),
                datain(2 downto 0)=>XLXN_17(2 downto 0),
                reset=>SW0,
                rot_a=>ROT_B,
                rot_b=>ROT_A,
                row(9 downto 0)=>XLXN_12(9 downto 0),
                shot=>XLXN_30,
                xpos(9 downto 0)=>XLXN_28(9 downto 0),
                ypos(9 downto 0)=>XLXN_29(9 downto 0),
                addr(15 downto 0)=>XLXN_16(15 downto 0),
                B=>XLXN_11,
                G=>XLXN_10,
                R=>XLXN_9);
   
   XLXI_4 : mymemory
      port map (addra(15 downto 0)=>XLXN_16(15 downto 0),
                clka=>XLXN_56,
                douta(2 downto 0)=>XLXN_17(2 downto 0));
   
   XLXI_5 : MouseRefComp
      port map (CLK=>XLXN_56,
                RESOLUTION=>XLXN_24,
                RST=>XLXN_53,
                SWITCH=>XLXN_24,
                LEFT=>open,
                MIDDLE=>open,
                NEW_EVENT=>open,
                RIGHT=>open,
                XPOS(9 downto 0)=>XLXN_28(9 downto 0),
                YPOS(9 downto 0)=>XLXN_29(9 downto 0),
                ZPOS=>open,
                PS2_CLK=>PS2_CLK,
                PS2_DATA=>PS2_DATA);
   
   XLXI_6 : GND
      port map (G=>XLXN_24);
   
   XLXI_10 : INV
      port map (I=>SW0,
                O=>XLXN_53);
   
end BEHAVIORAL;


