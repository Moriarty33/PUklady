<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(2:0)" />
        <signal name="XLXN_2(9:0)" />
        <signal name="XLXN_3(8:0)" />
        <signal name="Clk_50MHz" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <blockdef name="background">
            <timestamp>2016-3-17T11:40:58</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="VideoDrv">
            <timestamp>2016-3-17T11:43:56</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="background" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_2(9:0)" name="x(9:0)" />
            <blockpin signalname="XLXN_3(8:0)" name="y(8:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="rgb(2:0)" />
        </block>
        <block symbolname="VideoDrv" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="clk" />
            <blockpin signalname="XLXN_1(2:0)" name="rgb(2:0)" />
            <blockpin signalname="VGA_R" name="rout" />
            <blockpin signalname="VGA_G" name="gout" />
            <blockpin signalname="VGA_B" name="bout" />
            <blockpin signalname="VGA_HS" name="hs" />
            <blockpin signalname="VGA_VS" name="vs" />
            <blockpin signalname="XLXN_2(9:0)" name="x(9:0)" />
            <blockpin signalname="XLXN_3(8:0)" name="y(8:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="1520" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2112" y="1440" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(2:0)">
            <wire x2="1824" y1="1360" y2="1360" x1="1536" />
            <wire x2="1824" y1="1360" y2="1408" x1="1824" />
            <wire x2="2112" y1="1408" y2="1408" x1="1824" />
        </branch>
        <branch name="XLXN_2(9:0)">
            <wire x2="1152" y1="1424" y2="1424" x1="1072" />
            <wire x2="1072" y1="1424" y2="1568" x1="1072" />
            <wire x2="2576" y1="1568" y2="1568" x1="1072" />
            <wire x2="2576" y1="1344" y2="1344" x1="2496" />
            <wire x2="2576" y1="1344" y2="1568" x1="2576" />
        </branch>
        <branch name="XLXN_3(8:0)">
            <wire x2="1152" y1="1488" y2="1488" x1="1088" />
            <wire x2="1088" y1="1488" y2="1600" x1="1088" />
            <wire x2="2512" y1="1600" y2="1600" x1="1088" />
            <wire x2="2512" y1="1408" y2="1408" x1="2496" />
            <wire x2="2512" y1="1408" y2="1600" x1="2512" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="1072" y1="992" y2="992" x1="1024" />
            <wire x2="1072" y1="992" y2="1024" x1="1072" />
            <wire x2="1072" y1="1024" y2="1360" x1="1072" />
            <wire x2="1152" y1="1360" y2="1360" x1="1072" />
            <wire x2="2112" y1="1024" y2="1024" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1024" y="992" name="Clk_50MHz" orien="R180" />
        <branch name="VGA_R">
            <wire x2="2528" y1="1024" y2="1024" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1024" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="2528" y1="1088" y2="1088" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1088" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="2528" y1="1152" y2="1152" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1152" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="2528" y1="1216" y2="1216" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1216" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="2528" y1="1280" y2="1280" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1280" name="VGA_VS" orien="R0" />
    </sheet>
</drawing>