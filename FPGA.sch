<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rx" />
        <signal name="clk" />
        <signal name="cs" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10(15:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="tx" />
        <signal name="endda" />
        <signal name="XLXN_24(15:0)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="led" />
        <port polarity="Input" name="rx" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="cs" />
        <port polarity="Output" name="tx" />
        <port polarity="Input" name="endda" />
        <port polarity="Output" name="led" />
        <blockdef name="tocpu">
            <timestamp>2016-8-9T16:51:13</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="coun">
            <timestamp>2016-8-9T16:51:21</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="Machine">
            <timestamp>2016-8-9T17:13:44</timestamp>
            <line x2="496" y1="32" y2="32" x1="432" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="496" y1="-416" y2="-416" x1="432" />
            <rect width="64" x="432" y="-300" height="24" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <rect width="64" x="432" y="-236" height="24" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-108" height="24" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
            <rect width="368" x="64" y="-448" height="512" />
        </blockdef>
        <block symbolname="tocpu" name="XLXI_1">
            <blockpin signalname="rx" name="rx" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="led" name="endops" />
            <blockpin signalname="XLXN_24(15:0)" name="tdata(15:0)" />
            <blockpin signalname="cs" name="cs" />
            <blockpin signalname="XLXN_7" name="clkr" />
            <blockpin signalname="tx" name="tx" />
            <blockpin name="count(1:0)" />
            <blockpin signalname="XLXN_10(15:0)" name="addru(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="datau(15:0)" />
            <blockpin name="dataout(7:0)" />
        </block>
        <block symbolname="coun" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="clkin" />
            <blockpin signalname="XLXN_6" name="clkout" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="cs" name="I0" />
            <blockpin signalname="clk" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="cs" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="endda" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="led" name="O" />
        </block>
        <block symbolname="Machine" name="XLXI_10">
            <blockpin signalname="XLXN_27" name="clk1" />
            <blockpin name="en" />
            <blockpin signalname="cs" name="ComENNot" />
            <blockpin signalname="XLXN_9" name="WriteFromCom" />
            <blockpin signalname="XLXN_10(15:0)" name="AddFromCom(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="DatFromCom(15:0)" />
            <blockpin name="z1" />
            <blockpin signalname="XLXN_25" name="ENDda" />
            <blockpin name="datadown(23:0)" />
            <blockpin name="Buss(15:0)" />
            <blockpin name="dummy(7:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="RIM(15:0)" />
            <blockpin name="Arima(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1328" y="352" name="XLXI_3" orien="R0">
        </instance>
        <instance x="800" y="960" name="XLXI_1" orien="R0">
        </instance>
        <branch name="rx">
            <wire x2="800" y1="544" y2="544" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="544" name="rx" orien="R180" />
        <branch name="clk">
            <wire x2="624" y1="672" y2="672" x1="576" />
            <wire x2="800" y1="672" y2="672" x1="624" />
            <wire x2="624" y1="272" y2="672" x1="624" />
            <wire x2="976" y1="272" y2="272" x1="624" />
        </branch>
        <iomarker fontsize="28" x="576" y="672" name="clk" orien="R180" />
        <instance x="976" y="400" name="XLXI_5" orien="R0" />
        <branch name="cs">
            <wire x2="976" y1="336" y2="336" x1="752" />
            <wire x2="752" y1="336" y2="432" x1="752" />
            <wire x2="1264" y1="432" y2="432" x1="752" />
            <wire x2="1264" y1="432" y2="544" x1="1264" />
            <wire x2="1456" y1="544" y2="544" x1="1264" />
            <wire x2="1456" y1="544" y2="688" x1="1456" />
            <wire x2="1456" y1="688" y2="736" x1="1456" />
            <wire x2="1616" y1="736" y2="736" x1="1456" />
            <wire x2="1872" y1="688" y2="688" x1="1456" />
            <wire x2="1872" y1="688" y2="720" x1="1872" />
            <wire x2="2288" y1="720" y2="720" x1="1872" />
            <wire x2="2304" y1="720" y2="720" x1="2288" />
            <wire x2="1328" y1="432" y2="432" x1="1264" />
            <wire x2="1264" y1="544" y2="544" x1="1184" />
            <wire x2="2192" y1="672" y2="672" x1="2176" />
            <wire x2="2176" y1="672" y2="688" x1="2176" />
            <wire x2="2288" y1="688" y2="688" x1="2176" />
            <wire x2="2304" y1="240" y2="240" x1="2192" />
            <wire x2="2496" y1="240" y2="240" x1="2304" />
            <wire x2="2192" y1="240" y2="672" x1="2192" />
            <wire x2="2288" y1="672" y2="688" x1="2288" />
            <wire x2="2304" y1="672" y2="672" x1="2288" />
            <wire x2="2304" y1="672" y2="720" x1="2304" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1280" y1="304" y2="304" x1="1232" />
            <wire x2="1280" y1="304" y2="320" x1="1280" />
            <wire x2="1328" y1="320" y2="320" x1="1280" />
        </branch>
        <instance x="1920" y="624" name="XLXI_6" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1920" y1="592" y2="592" x1="1888" />
        </branch>
        <instance x="1632" y="688" name="XLXI_7" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1840" y1="464" y2="464" x1="1520" />
            <wire x2="1520" y1="464" y2="560" x1="1520" />
            <wire x2="1632" y1="560" y2="560" x1="1520" />
            <wire x2="1840" y1="320" y2="320" x1="1712" />
            <wire x2="1840" y1="320" y2="464" x1="1840" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1408" y1="608" y2="608" x1="1184" />
            <wire x2="1408" y1="608" y2="624" x1="1408" />
            <wire x2="1632" y1="624" y2="624" x1="1408" />
        </branch>
        <instance x="1616" y="768" name="XLXI_8" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2016" y1="736" y2="736" x1="1840" />
            <wire x2="2016" y1="736" y2="784" x1="2016" />
            <wire x2="2288" y1="784" y2="784" x1="2016" />
            <wire x2="2336" y1="784" y2="784" x1="2288" />
            <wire x2="2336" y1="304" y2="784" x1="2336" />
            <wire x2="2496" y1="304" y2="304" x1="2336" />
        </branch>
        <branch name="XLXN_10(15:0)">
            <wire x2="1856" y1="800" y2="800" x1="1184" />
            <wire x2="1856" y1="800" y2="848" x1="1856" />
            <wire x2="2288" y1="848" y2="848" x1="1856" />
            <wire x2="2288" y1="848" y2="864" x1="2288" />
            <wire x2="2368" y1="864" y2="864" x1="2288" />
            <wire x2="2496" y1="368" y2="368" x1="2368" />
            <wire x2="2368" y1="368" y2="864" x1="2368" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="1792" y1="864" y2="864" x1="1184" />
            <wire x2="1792" y1="864" y2="912" x1="1792" />
            <wire x2="2288" y1="912" y2="912" x1="1792" />
            <wire x2="2416" y1="912" y2="912" x1="2288" />
            <wire x2="2416" y1="432" y2="912" x1="2416" />
            <wire x2="2496" y1="432" y2="432" x1="2416" />
        </branch>
        <branch name="tx">
            <wire x2="1216" y1="672" y2="672" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1216" y="672" name="tx" orien="R0" />
        <instance x="352" y="1040" name="XLXI_9" orien="R0" />
        <branch name="endda">
            <wire x2="352" y1="976" y2="976" x1="64" />
            <wire x2="64" y1="976" y2="1408" x1="64" />
            <wire x2="464" y1="1408" y2="1408" x1="64" />
        </branch>
        <iomarker fontsize="28" x="464" y="1408" name="endda" orien="R0" />
        <iomarker fontsize="28" x="1328" y="432" name="cs" orien="R0" />
        <instance x="2496" y="528" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_24(15:0)">
            <wire x2="704" y1="928" y2="1104" x1="704" />
            <wire x2="704" y1="1104" y2="1120" x1="704" />
            <wire x2="2976" y1="1120" y2="1120" x1="704" />
            <wire x2="800" y1="928" y2="928" x1="704" />
            <wire x2="3216" y1="832" y2="832" x1="2784" />
            <wire x2="2784" y1="832" y2="912" x1="2784" />
            <wire x2="2880" y1="912" y2="912" x1="2784" />
            <wire x2="2880" y1="896" y2="912" x1="2880" />
            <wire x2="2976" y1="896" y2="896" x1="2880" />
            <wire x2="2976" y1="896" y2="1120" x1="2976" />
            <wire x2="3232" y1="432" y2="432" x1="2992" />
            <wire x2="3232" y1="432" y2="816" x1="3232" />
            <wire x2="3232" y1="816" y2="816" x1="3216" />
            <wire x2="3216" y1="816" y2="832" x1="3216" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="352" y1="912" y2="912" x1="176" />
            <wire x2="176" y1="912" y2="1312" x1="176" />
            <wire x2="3056" y1="1312" y2="1312" x1="176" />
            <wire x2="3056" y1="656" y2="656" x1="2784" />
            <wire x2="3056" y1="656" y2="1264" x1="3056" />
            <wire x2="3056" y1="1264" y2="1312" x1="3056" />
            <wire x2="2784" y1="656" y2="720" x1="2784" />
            <wire x2="2976" y1="720" y2="720" x1="2784" />
            <wire x2="3072" y1="720" y2="720" x1="2976" />
            <wire x2="3072" y1="560" y2="560" x1="2992" />
            <wire x2="3072" y1="560" y2="720" x1="3072" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2496" y1="112" y2="112" x1="2064" />
            <wire x2="2064" y1="112" y2="160" x1="2064" />
            <wire x2="2096" y1="160" y2="160" x1="2064" />
            <wire x2="2096" y1="160" y2="448" x1="2096" />
            <wire x2="2160" y1="448" y2="448" x1="2096" />
            <wire x2="2160" y1="448" y2="592" x1="2160" />
            <wire x2="2160" y1="592" y2="592" x1="2144" />
        </branch>
        <branch name="led">
            <wire x2="592" y1="800" y2="800" x1="448" />
            <wire x2="624" y1="800" y2="800" x1="592" />
            <wire x2="624" y1="800" y2="944" x1="624" />
            <wire x2="592" y1="800" y2="864" x1="592" />
            <wire x2="688" y1="864" y2="864" x1="592" />
            <wire x2="624" y1="944" y2="944" x1="608" />
            <wire x2="688" y1="800" y2="864" x1="688" />
            <wire x2="800" y1="800" y2="800" x1="688" />
        </branch>
        <iomarker fontsize="28" x="448" y="800" name="led" orien="R180" />
    </sheet>
</drawing>