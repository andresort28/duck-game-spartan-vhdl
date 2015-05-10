<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK_50MHZ" />
        <signal name="VGA_RED" />
        <signal name="VGA_GREEN" />
        <signal name="VGA_BLUE" />
        <signal name="VGA_HSYNC" />
        <signal name="VGA_VSYNC" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12(9:0)" />
        <signal name="XLXN_13(9:0)" />
        <signal name="XLXN_16(15:0)" />
        <signal name="XLXN_17(2:0)" />
        <signal name="ROT_B" />
        <signal name="ROT_A" />
        <signal name="XLXN_24" />
        <signal name="PS2_CLK" />
        <signal name="PS2_DATA" />
        <signal name="XLXN_28(9:0)" />
        <signal name="XLXN_29(9:0)" />
        <signal name="XLXN_30" />
        <signal name="SW0" />
        <signal name="XLXN_53" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <port polarity="Input" name="CLK_50MHZ" />
        <port polarity="Output" name="VGA_RED" />
        <port polarity="Output" name="VGA_GREEN" />
        <port polarity="Output" name="VGA_BLUE" />
        <port polarity="Output" name="VGA_HSYNC" />
        <port polarity="Output" name="VGA_VSYNC" />
        <port polarity="Input" name="ROT_B" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="BiDirectional" name="PS2_CLK" />
        <port polarity="BiDirectional" name="PS2_DATA" />
        <port polarity="Input" name="XLXN_30" />
        <port polarity="Input" name="SW0" />
        <blockdef name="Clk_div_25MHz">
            <timestamp>2012-10-23T1:26:12</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VGA_SYNC">
            <timestamp>2012-10-23T1:26:7</timestamp>
            <rect width="336" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <rect width="64" x="400" y="-108" height="24" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="reader">
            <timestamp>2012-11-22T19:57:20</timestamp>
            <line x2="0" y1="544" y2="544" x1="64" />
            <rect width="64" x="0" y="404" height="24" />
            <line x2="0" y1="416" y2="416" x1="64" />
            <rect width="64" x="0" y="468" height="24" />
            <line x2="0" y1="480" y2="480" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <rect width="256" x="64" y="-320" height="896" />
        </blockdef>
        <blockdef name="mymemory">
            <timestamp>2012-10-24T16:9:15</timestamp>
            <rect width="512" x="32" y="32" height="640" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="MouseRefComp">
            <timestamp>2012-11-22T9:20:43</timestamp>
            <rect width="304" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="368" y="-236" height="24" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="Clk_div_25MHz" name="XLXI_1">
            <blockpin signalname="CLK_50MHZ" name="clk" />
            <blockpin signalname="XLXN_56" name="clk_25MHz" />
        </block>
        <block symbolname="VGA_SYNC" name="XLXI_2">
            <blockpin signalname="XLXN_56" name="clock_25Mhz" />
            <blockpin signalname="XLXN_9" name="red" />
            <blockpin signalname="XLXN_10" name="green" />
            <blockpin signalname="XLXN_11" name="blue" />
            <blockpin signalname="VGA_RED" name="red_out" />
            <blockpin signalname="VGA_GREEN" name="green_out" />
            <blockpin signalname="VGA_BLUE" name="blue_out" />
            <blockpin signalname="VGA_HSYNC" name="horiz_sync_out" />
            <blockpin signalname="VGA_VSYNC" name="vert_sync_out" />
            <blockpin signalname="XLXN_12(9:0)" name="pixel_row(9:0)" />
            <blockpin signalname="XLXN_13(9:0)" name="pixel_column(9:0)" />
        </block>
        <block symbolname="reader" name="XLXI_3">
            <blockpin signalname="XLXN_56" name="clk" />
            <blockpin signalname="SW0" name="reset" />
            <blockpin signalname="ROT_B" name="rot_a" />
            <blockpin signalname="ROT_A" name="rot_b" />
            <blockpin signalname="XLXN_30" name="shot" />
            <blockpin signalname="XLXN_12(9:0)" name="row(9:0)" />
            <blockpin signalname="XLXN_13(9:0)" name="col(9:0)" />
            <blockpin signalname="XLXN_17(2:0)" name="datain(2:0)" />
            <blockpin signalname="XLXN_28(9:0)" name="xpos(9:0)" />
            <blockpin signalname="XLXN_29(9:0)" name="ypos(9:0)" />
            <blockpin signalname="XLXN_9" name="R" />
            <blockpin signalname="XLXN_10" name="G" />
            <blockpin signalname="XLXN_11" name="B" />
            <blockpin signalname="XLXN_16(15:0)" name="addr(15:0)" />
        </block>
        <block symbolname="mymemory" name="XLXI_4">
            <blockpin signalname="XLXN_16(15:0)" name="addra(15:0)" />
            <blockpin signalname="XLXN_56" name="clka" />
            <blockpin signalname="XLXN_17(2:0)" name="douta(2:0)" />
        </block>
        <block symbolname="MouseRefComp" name="XLXI_5">
            <blockpin signalname="XLXN_56" name="CLK" />
            <blockpin signalname="XLXN_24" name="RESOLUTION" />
            <blockpin signalname="XLXN_53" name="RST" />
            <blockpin signalname="XLXN_24" name="SWITCH" />
            <blockpin name="LEFT" />
            <blockpin name="MIDDLE" />
            <blockpin name="NEW_EVENT" />
            <blockpin name="RIGHT" />
            <blockpin signalname="XLXN_28(9:0)" name="XPOS(9:0)" />
            <blockpin signalname="XLXN_29(9:0)" name="YPOS(9:0)" />
            <blockpin name="ZPOS(3:0)" />
            <blockpin signalname="PS2_CLK" name="PS2_CLK" />
            <blockpin signalname="PS2_DATA" name="PS2_DATA" />
        </block>
        <block symbolname="gnd" name="XLXI_6">
            <blockpin signalname="XLXN_24" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="SW0" name="I" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2608" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <branch name="CLK_50MHZ">
            <wire x2="544" y1="816" y2="816" x1="496" />
        </branch>
        <branch name="VGA_RED">
            <wire x2="3104" y1="752" y2="752" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="752" name="VGA_RED" orien="R0" />
        <branch name="VGA_GREEN">
            <wire x2="3104" y1="816" y2="816" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="816" name="VGA_GREEN" orien="R0" />
        <branch name="VGA_BLUE">
            <wire x2="3104" y1="880" y2="880" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="880" name="VGA_BLUE" orien="R0" />
        <branch name="VGA_HSYNC">
            <wire x2="3104" y1="944" y2="944" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="944" name="VGA_HSYNC" orien="R0" />
        <branch name="VGA_VSYNC">
            <wire x2="3104" y1="1008" y2="1008" x1="3072" />
        </branch>
        <iomarker fontsize="28" x="3104" y="1008" name="VGA_VSYNC" orien="R0" />
        <instance x="2000" y="1168" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_9">
            <wire x2="2608" y1="880" y2="880" x1="2384" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2496" y1="960" y2="960" x1="2384" />
            <wire x2="2496" y1="960" y2="1008" x1="2496" />
            <wire x2="2608" y1="1008" y2="1008" x1="2496" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2496" y1="1040" y2="1040" x1="2384" />
            <wire x2="2496" y1="1040" y2="1136" x1="2496" />
            <wire x2="2608" y1="1136" y2="1136" x1="2496" />
        </branch>
        <branch name="XLXN_12(9:0)">
            <wire x2="1920" y1="640" y2="1008" x1="1920" />
            <wire x2="2000" y1="1008" y2="1008" x1="1920" />
            <wire x2="3088" y1="640" y2="640" x1="1920" />
            <wire x2="3088" y1="640" y2="1072" x1="3088" />
            <wire x2="3088" y1="1072" y2="1072" x1="3072" />
        </branch>
        <branch name="XLXN_13(9:0)">
            <wire x2="1936" y1="656" y2="1072" x1="1936" />
            <wire x2="2000" y1="1072" y2="1072" x1="1936" />
            <wire x2="3360" y1="656" y2="656" x1="1936" />
            <wire x2="3360" y1="656" y2="1136" x1="3360" />
            <wire x2="3360" y1="1136" y2="1136" x1="3072" />
        </branch>
        <branch name="XLXN_17(2:0)">
            <wire x2="2000" y1="1136" y2="1136" x1="1984" />
            <wire x2="1984" y1="1136" y2="1376" x1="1984" />
            <wire x2="2544" y1="1376" y2="1376" x1="1984" />
            <wire x2="2544" y1="1376" y2="1904" x1="2544" />
            <wire x2="2544" y1="1904" y2="1904" x1="2480" />
        </branch>
        <branch name="ROT_B">
            <wire x2="2000" y1="1200" y2="1200" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1200" name="ROT_B" orien="R180" />
        <branch name="ROT_A">
            <wire x2="2000" y1="1264" y2="1264" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1264" name="ROT_A" orien="R180" />
        <branch name="XLXN_16(15:0)">
            <wire x2="1824" y1="1792" y2="1904" x1="1824" />
            <wire x2="1904" y1="1904" y2="1904" x1="1824" />
            <wire x2="2400" y1="1792" y2="1792" x1="1824" />
            <wire x2="2400" y1="1120" y2="1120" x1="2384" />
            <wire x2="2400" y1="1120" y2="1792" x1="2400" />
        </branch>
        <instance x="1904" y="1824" name="XLXI_4" orien="R0">
        </instance>
        <instance x="736" y="1840" name="XLXI_6" orien="R0" />
        <branch name="PS2_CLK">
            <wire x2="1440" y1="1536" y2="1536" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1536" name="PS2_CLK" orien="R0" />
        <branch name="PS2_DATA">
            <wire x2="1440" y1="1600" y2="1600" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1600" name="PS2_DATA" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="2000" y1="1712" y2="1712" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1712" name="XLXN_30" orien="R180" />
        <branch name="SW0">
            <wire x2="560" y1="944" y2="944" x1="448" />
            <wire x2="2000" y1="944" y2="944" x1="560" />
            <wire x2="560" y1="944" y2="976" x1="560" />
        </branch>
        <iomarker fontsize="28" x="448" y="944" name="SW0" orien="R180" />
        <branch name="XLXN_29(9:0)">
            <wire x2="1680" y1="1408" y2="1408" x1="1408" />
            <wire x2="1680" y1="1408" y2="1648" x1="1680" />
            <wire x2="2000" y1="1648" y2="1648" x1="1680" />
        </branch>
        <branch name="XLXN_28(9:0)">
            <wire x2="1696" y1="1344" y2="1344" x1="1408" />
            <wire x2="1696" y1="1344" y2="1584" x1="1696" />
            <wire x2="2000" y1="1584" y2="1584" x1="1696" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="864" y1="1712" y2="1712" x1="800" />
            <wire x2="976" y1="1328" y2="1328" x1="864" />
            <wire x2="864" y1="1328" y2="1648" x1="864" />
            <wire x2="880" y1="1648" y2="1648" x1="864" />
            <wire x2="864" y1="1648" y2="1712" x1="864" />
            <wire x2="880" y1="1568" y2="1648" x1="880" />
            <wire x2="976" y1="1568" y2="1568" x1="880" />
            <wire x2="976" y1="1248" y2="1328" x1="976" />
        </branch>
        <instance x="976" y="1632" name="XLXI_5" orien="R0">
        </instance>
        <instance x="592" y="976" name="XLXI_10" orien="M90" />
        <branch name="XLXN_53">
            <wire x2="560" y1="1200" y2="1408" x1="560" />
            <wire x2="976" y1="1408" y2="1408" x1="560" />
        </branch>
        <instance x="544" y="848" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_56">
            <wire x2="928" y1="624" y2="720" x1="928" />
            <wire x2="992" y1="720" y2="720" x1="928" />
            <wire x2="992" y1="720" y2="816" x1="992" />
            <wire x2="960" y1="624" y2="624" x1="928" />
            <wire x2="960" y1="624" y2="816" x1="960" />
            <wire x2="960" y1="816" y2="1088" x1="960" />
            <wire x2="976" y1="1088" y2="1088" x1="960" />
            <wire x2="1216" y1="816" y2="816" x1="960" />
            <wire x2="1216" y1="816" y2="880" x1="1216" />
            <wire x2="1504" y1="880" y2="880" x1="1216" />
            <wire x2="1776" y1="880" y2="880" x1="1504" />
            <wire x2="2000" y1="880" y2="880" x1="1776" />
            <wire x2="1504" y1="880" y2="896" x1="1504" />
            <wire x2="1584" y1="896" y2="896" x1="1504" />
            <wire x2="1584" y1="896" y2="2096" x1="1584" />
            <wire x2="1904" y1="2096" y2="2096" x1="1584" />
            <wire x2="992" y1="816" y2="816" x1="928" />
            <wire x2="2608" y1="752" y2="752" x1="1776" />
            <wire x2="1776" y1="752" y2="880" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="496" y="816" name="CLK_50MHZ" orien="R180" />
    </sheet>
</drawing>