<%--
    Document   : index
    Created on : 2009-nov-22, 14:07:27
    Author     : Murtaza
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import=" java.util.Collections"%>
<%@page import=" java.util.ArrayList"%>
<html>
    <head>
        <title> Exercise# 1 </title>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <meta content="sv" http-equiv="Content-Language" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />

    <style type="text/css">
        .style3 {
            text-align: center;
        }
        .style4 {
            border-width: 0;
            margin-center: 40px;
        }
        .style5 {
            border: 0 solid #FFFFFF;
            text-align: center;
            color: #0000FF;
        }
        .style6 {
            border: 0 solid #000000;
            text-align: center;
            color: #0000FF;
        }
        .style11 {
            text-align: center;
            border-width: 0;
            color: #FF2C00;
        }
        .style12 {
            text-align: center;
            color: #FF2C00;
            visibility:hidden;
        }

    </style>

    <script type="text/javascript">

        javascript:window.history.forward(1);

        function Column(e) {
            var ColNum = 1;
            if (navigator.userAgent.indexOf("MSIE") != -1) {
                if (event.srcElement.tagName == "TD") {
                    ColNum += event.srcElement.cellIndex;
                }
            } else {
                if (e.target == "[object HTMLTableCellElement]") {
                    ColNum += e.target.cellIndex;
                }
            }
            document.gui.thechar.value = ColNum;
        }
        function rindex(tno) {

            document.gui.tre.value = tno.rowIndex;
        }
    </script>
</head>
<%@ page language="java" %>
<body bgcolor="white" onclick="Column(event);" onload="swdStart('timer', 1)">
    <br><br>
    <%-- start of scriptlet --%>
    <%
        String word = null;
        String words = null;
String name = (String) session.getAttribute("named");
               System.out.println("id" + name); 
        try {
            String url = "jdbc:derby://localhost:1527/record";
            String user = "re";
            String password = "re";

            Connection con = DriverManager.getConnection(url, user, password);
            Statement st = con.createStatement();

            ResultSet rs = null;
            String sql = "SELECT * FROM recording ";
            rs = st.executeQuery(sql);
            String[] wordy = new String[152];
            String[] wording = new String[152];

            String[] best = new String[13];
            char[] first = new char[12];
            char[] sec = new char[12];
            char[] thr = new char[12];
            char[] four = new char[12];
            char[] five = new char[12];
            char[] six = new char[12];
            char[] seven = new char[12];
            char[] eight = new char[12];
            char[] nine = new char[12];
            char[] ten = new char[12];
            char[] elva = new char[12];
            char[] tolv = new char[12];
            int temp = 0;
            Random generator = new Random();

            temp = (generator.nextInt(4)) + 1;
            String[] listy = new String[13];
            int i = 1;
            while (rs.next()) {
                word = rs.getString("words");
                words = rs.getString("wording");
                wordy[i] = word;
                wording[i] = words;

                i = i + 1;
            }
            ArrayList<Integer> numbers = new ArrayList<Integer>();
            for (int p = 1; p < 150; p++) {
                numbers.add(p);
            }
            Collections.shuffle(numbers);

            int ri = 1;
            for (int j = 0; j < 12; j++) {
                ri = numbers.get(j);

                listy[j] = wordy[ri];
                best[j] = wording[ri];

            }

            first = best[0].toCharArray();
            sec = best[1].toCharArray();
            thr = best[2].toCharArray();
            four = best[3].toCharArray();
            five = best[4].toCharArray();
            six = best[5].toCharArray();
            seven = best[6].toCharArray();
            eight = best[7].toCharArray();
            nine = best[8].toCharArray();
            ten = best[9].toCharArray();
            elva = best[10].toCharArray();
            tolv = best[11].toCharArray();

    %>
    <form name ="gui" method ="post" action="exercise2.jsp">
        <center>
            <%switch (temp) {
                    case 1:%>
            <table cellpadding="0" cellspacing="0" class="style4" style="width: 645px; height: 309px" align="center" id="fir"  >
                <tr id="tr0" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="20"><%= ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="21"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="22"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="23"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="24"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="25"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="26"><%= eight[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="27"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="28"><%= eight[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="29"><%= eight[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data0(this, this.id)" id="30"><%=ten[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="31"><%=elva[4]%></td>
                    <td style="width: 25%; " class="style5" rowspan="24">&nbsp;</td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message0(this, this.id)" id="8" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''"><strong><%= listy[0]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr1" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="32"><%= ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="33"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="34"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="35"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="36"><%=ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="37"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="38"><%=ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="39"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="40"><%=ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="41"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="42"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="43"><%= seven[3]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message1(this, this.id)" id="9" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[1]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr2" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="44"><%= ten[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="45"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="46"><%= seven[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="47"><%= nine[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="48"><%= nine[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="49"><%= nine[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="50"><%= nine[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="51"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="52"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="53"><%= nine[5]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data4(this, this.id)" id="54"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="55"><%= elva[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message2(this, this.id)" id="10" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[2]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr3" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="56"><%= ten[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="57"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="58"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="59"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="60"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="61"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="62"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="63"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="64"><%= five[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="65"><%= five[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data6(this, this.id)" id="66"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" class="style11" rowspan="2" onclick="data6(this, this.id)" id="67"><%= thr[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message3(this, this.id)" id="11" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[3]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr4" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="68"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="69"><%= four[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="70"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="71"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="72"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="73"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="74"><%= thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="75"><%= thr[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="76"><%= thr[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="77"><%= elva[4]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data8(this, this.id)" id="78"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="79"><%= thr[1]%></td>
                    <td style="width: 41px; width: 25%; " class="style6" onclick="message4(this, this.id)" id="12" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout="this.bgColor = ''"><strong><%= listy[4]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr5" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="80"><%= ten[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="81"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="82"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="83"><%= tolv[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="84"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="85"><%= first[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="86"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="87"><%= four[2]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="88"><%= elva[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="89"><%= first[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="90"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="91"><%= thr[2]%></td>

                    <td style="width: 25%; height: 1px" class="style6" onclick="message5(this, this.id)" id="13" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[5]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr6" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="92"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="93"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="94"><%= seven[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="95"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="96"><%= five[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="97"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="98"><%= tolv[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="99"><%= elva[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="100"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="101"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="102"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="103"><%= thr[3]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message6(this, this.id)" id="14" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[6]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr7" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="104"><%= first[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="105"><%= nine[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="106"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="107"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="108"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="109"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="110"><%= elva[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="111"><%= thr[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="112"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="113"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="114"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="115"><%= thr[4]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message7(this, this.id)" id="15" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[7]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr8" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="116"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="117"><%= first[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="118"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="119"><%= tolv[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="120"><%= five[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="121"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="122"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="123"><%= four[0]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="124"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="125"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="126"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="127"><%= thr[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message8(this, this.id)" id="16" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[8]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr9" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="128"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="129"><%= nine[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="130"><%= first[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="131"><%= tolv[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="132"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="133"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="134"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="135"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="136"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="137"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="138"><%= nine[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="139"><%= thr[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message9(this, this.id)" id="17" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[9]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr10" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="140"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="141"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="142"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="143"><%= first[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="144"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="145"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="146"><%= six[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="147"><%= six[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="148"><%= six[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="149"><%= six[4]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data20(this, this.id)" id="150"><%= six[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="151"><%= six[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message10(this, this.id)" id="18" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[10]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr11" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="152"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="153"><%= elva[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="154"><%= seven[4]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="155"><%= thr[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="156"><%= first[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="157"><%= sec[5]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="158"><%= sec[5]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="159"><%= sec[4]%></td>
                    <td style="width: 41px;  height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="160"><%= sec[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="161"><%= sec[2]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data22(this, this.id)" id="162"><%= sec[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="163"><%= sec[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message11(this, this.id)" id="19" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[11]%></strong></td>
                </tr>
            </table>
            <% break;
                case 2:%>
            <table cellpadding="0" cellspacing="0" class="style4" style="width: 645px; height: 309px" align="center" id="fir"  >
                <tr id="tr0" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="20"><%=ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="21"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="22"><%= sec[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="23"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="24"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="25"><%= six[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="26"><%= eight[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="27"><%= nine[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="28"><%= eight[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="29"><%= nine[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data0(this, this.id)" id="30"><%=seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="31"><%=seven[5]%></td>
                    <td style="width: 25%; " class="style5" rowspan="24">&nbsp;</td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message0(this, this.id)" id="8" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''"><strong><%= listy[0]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr1" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="32"><%= ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="33"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="34"><%= sec[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="35"><%= sec[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="36"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="37"><%=ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="38"><%= six[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="39"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="40"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="41"><%=ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="42"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="43"><%= seven[4]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message1(this, this.id)" id="9" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[1]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr2" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="44"><%= ten[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="45"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="46"><%= sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="47"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="48"><%= elva[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="49"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="50"><%= nine[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="51"><%= six[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="52"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="53"><%= nine[5]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data4(this, this.id)" id="54"><%=sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="55"><%= seven[3]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message2(this, this.id)" id="10" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[2]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr3" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="56"><%= elva[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="57"><%= six[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="58"><%= sec[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="59"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="60"><%= elva[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="61"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="62"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="63"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="64"><%= six[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="65"><%= five[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data6(this, this.id)" id="66"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" class="style11" rowspan="2" onclick="data6(this, this.id)" id="67"><%= seven[2]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message3(this, this.id)" id="11" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[3]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr4" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="68"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="69"><%= four[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="70"><%= sec[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="71"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="72"><%= elva[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="73"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="74"><%= thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="75"><%= thr[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="76"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="77"><%= six[2]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data8(this, this.id)" id="78"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="79"><%= seven[1]%></td>
                    <td style="width: 41px; width: 25%; " class="style6" onclick="message4(this, this.id)" id="12" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout="this.bgColor = ''"><strong><%= listy[4]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr5" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="80"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="81"><%= ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="82"><%= sec[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="83"><%= eight[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="84"><%= elva[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="85"><%= eight[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="86"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="87"><%= four[1]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="88"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="89"><%= sec[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="90"><%= six[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="91"><%= seven[0]%></td>

                    <td style="width: 25%; height: 1px" class="style6" onclick="message5(this, this.id)" id="13" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[5]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr6" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="92"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="93"><%= ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="94"><%= sec[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="95"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="96"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="97"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="98"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="99"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="100"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="101"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="102"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="103"><%= six[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message6(this, this.id)" id="14" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[6]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr7" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="104"><%= five[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="105"><%= ten[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="106"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="107"><%= eight[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="108"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="109"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="110"><%= first[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="111"><%= thr[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="112"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="113"><%= sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="114"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="115"><%= thr[4]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message7(this, this.id)" id="15" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[7]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr8" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="116"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="117"><%= ten[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="118"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="119"><%= eight[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="120"><%= four[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="121"><%= first[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="122"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="123"><%= four[0]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="124"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="125"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="126"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="127"><%= ten[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message8(this, this.id)" id="16" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[8]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr9" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="128"><%= five[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="129"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="130"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="131"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="132"><%= first[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="133"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="134"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="135"><%= tolv[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="136"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="137"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="138"><%= tolv[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="139"><%= tolv[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message9(this, this.id)" id="17" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[9]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr10" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="140"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="141"><%= ten[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="142"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="143"><%= first[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="144"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="145"><%= thr[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="146"><%= thr[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="147"><%= thr[4]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="148"><%= thr[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="149"><%= thr[2]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data20(this, this.id)" id="150"><%= thr[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="151"><%= thr[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message10(this, this.id)" id="18" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[10]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr11" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="152"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="153"><%= ten[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="154"><%= first[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="155"><%= thr[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="156"><%= nine[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="157"><%= nine[1]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="158"><%= nine[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="159"><%= nine[3]%></td>
                    <td style="width: 41px;  height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="160"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="161"><%= nine[5]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data22(this, this.id)" id="162"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="163"><%= sec[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message11(this, this.id)" id="19" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[11]%></strong></td>
                </tr>
            </table>
            <% break;
                case 3:%>
            <table cellpadding="0" cellspacing="0" class="style4" style="width: 645px; height: 309px" align="center" id="fir"  >
                <tr id="tr0" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="20"><%=first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="21"><%= first[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="22"><%= first[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="23"><%= first[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="24"><%= first[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="25"><%= first[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="26"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="27"><%= ten[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="28"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="29"><%= ten[3]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data0(this, this.id)" id="30"><%=ten[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="31"><%=ten[5]%></td>
                    <td style="width: 25%; " class="style5" rowspan="24">&nbsp;</td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message0(this, this.id)" id="8" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''"><strong><%= listy[0]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr1" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="32"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="33"><%= thr[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="34"><%= thr[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="35"><%= thr[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="36"><%= thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="37"><%= thr[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="38"><%= thr[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="39"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="40"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="41"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="42"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="43"><%= seven[4]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message1(this, this.id)" id="9" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[1]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr2" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="44"><%= ten[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="45"><%= four[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="46"><%= sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="47"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="48"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="49"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="50"><%= nine[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="51"><%= nine[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="52"><%= nine[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="53"><%= nine[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data4(this, this.id)" id="54"><%=sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="55"><%= six[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message2(this, this.id)" id="10" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[2]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr3" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="56"><%= elva[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="57"><%= sec[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="58"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="59"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="60"><%= elva[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="61"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="62"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="63"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="64"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="65"><%= five[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data6(this, this.id)" id="66"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" class="style11" rowspan="2" onclick="data6(this, this.id)" id="67"><%= six[4]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message3(this, this.id)" id="11" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[3]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr4" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="68"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="69"><%= sec[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="70"><%= sec[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="71"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="72"><%= elva[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="73"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="74"><%= thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="75"><%= thr[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="76"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="77"><%= six[2]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data8(this, this.id)" id="78"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="79"><%= six[3]%></td>
                    <td style="width: 41px; width: 25%; " class="style6" onclick="message4(this, this.id)" id="12" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout="this.bgColor = ''"><strong><%= listy[4]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr5" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="80"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="81"><%= sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="82"><%= thr[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="83"><%= nine[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="84"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="85"><%= eight[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="86"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="87"><%= four[1]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="88"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="89"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="90"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="91"><%= six[2]%></td>

                    <td style="width: 25%; height: 1px" class="style6" onclick="message5(this, this.id)" id="13" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[5]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr6" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="92"><%= elva[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="93"><%= sec[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="94"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="95"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="96"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="97"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="98"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="99"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="100"><%= tolv[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="101"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="102"><%= eight[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="103"><%= six[1]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message6(this, this.id)" id="14" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[6]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr7" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="104"><%= elva[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="105"><%= sec[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="106"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="107"><%= eight[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="108"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="109"><%= seven[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="110"><%= first[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="111"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="112"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="113"><%= sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="114"><%= eight[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="115"><%= six[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message7(this, this.id)" id="15" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[7]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr8" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="116"><%= elva[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="117"><%= sec[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="118"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="119"><%= eight[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="120"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="121"><%= first[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="122"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="123"><%= four[0]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="124"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="125"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="126"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="127"><%= ten[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message8(this, this.id)" id="16" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[8]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr9" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="128"><%= elva[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="129"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="130"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="131"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="132"><%= first[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="133"><%= tolv[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="134"><%= elva[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="135"><%= sec[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="136"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="137"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="138"><%= eight[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="139"><%= tolv[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message9(this, this.id)" id="17" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[9]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr10" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="140"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="141"><%= ten[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="142"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="143"><%= first[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="144"><%= first[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="145"><%= thr[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="146"><%= thr[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="147"><%= nine[4]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="148"><%= thr[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="149"><%= seven[2]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data20(this, this.id)" id="150"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="151"><%= eight[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message10(this, this.id)" id="18" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[10]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr11" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="152"><%= four[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="153"><%= seven[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="154"><%= first[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="155"><%= five[5]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="156"><%= five[4]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="157"><%= five[3]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="158"><%= five[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="159"><%= five[1]%></td>
                    <td style="width: 41px;  height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="160"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="161"><%= nine[5]%></td>
                        <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data22(this, this.id)" id="162"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="163"><%= sec[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message11(this, this.id)" id="19" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[11]%></strong></td>
                </tr>
            </table>
            <% break;
                case 4:%>
            <table cellpadding="0" cellspacing="0" class="style4" style="width: 645px; height: 309px" align="center" id="fir"  >
                <tr id="tr0" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="20"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="21"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="22"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="23"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="24"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="25"><%= sec[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="26"><%=thr[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="27"><%=thr[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="28"><%=thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="29"><%=thr[3]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data0(this, this.id)" id="30"><%=thr[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="31"><%=thr[5]%></td>
                    <td style="width: 25%; " class="style5" rowspan="24">&nbsp;</td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message0(this, this.id)" id="8" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''"><strong><%= listy[0]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr1" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="32"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="33"><%= five[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="34"><%= eight[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="35"><%= eight[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="36"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="37"><%= eight[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="38"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="39"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="40"><%=thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="41"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="42"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="43"><%= elva[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message1(this, this.id)" id="9" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[1]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr2" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="44"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="45"><%= tolv[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="46"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="47"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="48"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="49"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="50"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="51"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="52"><%= sec[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="53"><%= nine[3]%></td>
                    <td style="height: 43px; width: 41px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="54"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="55"><%= elva[3]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message2(this, this.id)" id="10" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[2]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr3" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="56"><%= six[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="57"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="58"><%= first[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="59"><%= five[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="60"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="61"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="62"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="63"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="64"><%= sec[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="65"><%= six[5]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data6(this, this.id)" id="66"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" class="style11" rowspan="2" onclick="data6(this, this.id)" id="67"><%= ten[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message3(this, this.id)" id="11" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[3]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr4" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="68"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="69"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="70"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="71"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="72"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="73"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="74"><%= thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="75"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="76"><%= sec[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="77"><%= elva[2]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data8(this, this.id)" id="78"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="79"><%= ten[1]%></td>
                    <td style="width: 41px; width: 25%; " class="style6" onclick="message4(this, this.id)" id="12" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout="this.bgColor = ''"><strong><%= listy[4]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr5" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="80"><%= six[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="81"><%= tolv[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="82"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="83"><%= ten[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="84"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="85"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="86"><%= elva[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="87"><%= elva[0]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="88"><%= sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="89"><%= first[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="90"><%= elva[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="91"><%= ten[2]%></td>

                    <td style="width: 25%; height: 1px" class="style6" onclick="message5(this, this.id)" id="13" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[5]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr6" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="92"><%= six[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="93"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="94"><%= seven[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="95"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="96"><%= five[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="97"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="98"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="99"><%= elva[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="100"><%= sec[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="101"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="102"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="103"><%= ten[3]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message6(this, this.id)" id="14" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[6]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr7" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="104"><%= six[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="105"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="106"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="107"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="108"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="109"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="110"><%= elva[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="111"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="112"><%= sec[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="113"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="114"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="115"><%= ten[4]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message7(this, this.id)" id="15" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[7]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr8" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="116"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="117"><%= ten[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="118"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="119"><%= seven[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="120"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="121"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="122"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="123"><%= seven[0]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="124"><%= nine[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="125"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="126"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="127"><%= ten[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message8(this, this.id)" id="16" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[8]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr9" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="128"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="129"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="130"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="131"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="132"><%= four[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="133"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="134"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="135"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="136"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="137"><%= nine[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="138"><%= thr[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="139"><%= sec[2]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message9(this, this.id)" id="17" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[9]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr10" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="140"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="141"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="142"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="143"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="144"><%= first[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="145"><%= first[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="146"><%= first[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="147"><%= first[3]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="148"><%= first[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="149"><%= first[5]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data20(this, this.id)" id="150"><%= nine[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="151"><%= six[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message10(this, this.id)" id="18" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[10]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr11" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="152"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="153"><%= elva[5]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="154"><%= elva[4]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="155"><%= elva[3]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="156"><%= elva[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="157"><%= elva[1]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="158"><%= elva[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="159"><%= six[0]%></td>
                    <td style="width: 41px;  height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="160"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="161"><%= seven[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data22(this, this.id)" id="162"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="163"><%= nine[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message11(this, this.id)" id="19" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[11]%></strong></td>
                </tr>
            </table>
            <% break;
    default:%>
            <table cellpadding="0" cellspacing="0" class="style4" style="width: 645px; height: 309px" align="center" id="fir"  >
                <tr id="tr0" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="20"><%= five[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="21"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="22"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="23"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="24"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="25"><%= sec[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="26"><%=thr[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="27"><%=thr[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="28"><%=thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="29"><%=thr[3]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data0(this, this.id)" id="30"><%=thr[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data0(this, this.id)" id="31"><%=thr[5]%></td>
                    <td style="width: 25%; " class="style5" rowspan="24">&nbsp;</td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message0(this, this.id)" id="8" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''"><strong><%= listy[0]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr1" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="32"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="33"><%= five[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="34"><%= eight[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="35"><%= eight[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="36"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="37"><%= eight[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="38"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="39"><%= eight[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="40"><%=thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="41"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="42"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data2(this, this.id)" id="43"><%= elva[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message1(this, this.id)" id="9" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[1]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr2" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="44"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="45"><%= tolv[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="46"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="47"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="48"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="49"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="50"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="51"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="52"><%= sec[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="53"><%= nine[3]%></td>
                    <td style="height: 43px; width: 41px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="54"><%= ten[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data4(this, this.id)" id="55"><%= elva[3]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message2(this, this.id)" id="10" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[2]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr3" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="56"><%= six[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="57"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="58"><%= first[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="59"><%= five[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="60"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="61"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="62"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="63"><%= eight[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="64"><%= sec[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data6(this, this.id)" id="65"><%= six[5]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data6(this, this.id)" id="66"><%= elva[5]%></td>
                    <td style="width: 41px; height: 43px" class="style11" rowspan="2" onclick="data6(this, this.id)" id="67"><%= ten[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message3(this, this.id)" id="11" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[3]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr4" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="68"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="69"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="70"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="71"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="72"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="73"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="74"><%= thr[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="75"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="76"><%= sec[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="77"><%= elva[2]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data8(this, this.id)" id="78"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data8(this, this.id)" id="79"><%= ten[1]%></td>
                    <td style="width: 41px; width: 25%; " class="style6" onclick="message4(this, this.id)" id="12" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout="this.bgColor = ''"><strong><%= listy[4]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr5" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="80"><%= six[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="81"><%= tolv[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="82"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="83"><%= ten[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="84"><%= five[6]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="85"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="86"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="87"><%= first[0]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="88"><%= sec[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="89"><%= first[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="90"><%= elva[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data10(this, this.id)" id="91"><%= ten[2]%></td>

                    <td style="width: 25%; height: 1px" class="style6" onclick="message5(this, this.id)" id="13" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[5]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr6" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="92"><%= six[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="93"><%= tolv[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="94"><%= seven[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="95"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="96"><%= five[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="97"><%= six[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="98"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="99"><%= elva[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="100"><%= sec[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="101"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="102"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data12(this, this.id)" id="103"><%= ten[3]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message6(this, this.id)" id="14" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[6]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr7" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="104"><%= six[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="105"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="106"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="107"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="108"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="109"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="110"><%= elva[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="111"><%= nine[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="112"><%= sec[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="113"><%= six[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="114"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data14(this, this.id)" id="115"><%= ten[4]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message7(this, this.id)" id="15" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[7]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr8" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="116"><%= first[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="117"><%= ten[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="118"><%= seven[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="119"><%= seven[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="120"><%= seven[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="121"><%= seven[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="122"><%= seven[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="123"><%= seven[0]%></td>
                    <td style="width: 41px;height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="124"><%= nine[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="125"><%= tolv[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="126"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data16(this, this.id)" id="127"><%= ten[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message8(this, this.id)" id="16" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[8]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr9" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="128"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="129"><%= four[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="130"><%= four[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="131"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="132"><%= four[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="133"><%= four[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="134"><%= tolv[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="135"><%= four[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="136"><%= five[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="137"><%= nine[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="138"><%= thr[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data18(this, this.id)" id="139"><%= sec[2]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message9(this, this.id)" id="17" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[9]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr10" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="140"><%= five[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="141"><%= nine[5]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="142"><%= four[3]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="143"><%= five[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="144"><%= first[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="145"><%= first[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="146"><%= first[2]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="147"><%= first[3]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="148"><%= first[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="149"><%= first[5]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data20(this, this.id)" id="150"><%= nine[1]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data20(this, this.id)" id="151"><%= six[5]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message10(this, this.id)" id="18" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[10]%></strong></td>
                </tr>
                <tr>
                    <td style="width: 25%; height: 0px" class="style6"></td>
                </tr>
                <tr id="tr11" onclick="rindex(this)">
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="152"><%= eight[4]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="153"><%= elva[5]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="154"><%= elva[4]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="155"><%= elva[3]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="156"><%= elva[2]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="157"><%= elva[1]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="158"><%= elva[0]%></td>
                    <td style=" width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="159"><%= ten[0]%></td>
                    <td style="width: 41px;  height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="160"><%= tolv[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="161"><%= six[0]%></td>
                    <td style="height: 43px; width: 41px;" rowspan="2" class="style11" onclick="data22(this, this.id)" id="162"><%= sec[0]%></td>
                    <td style="width: 41px; height: 43px" rowspan="2" class="style11" onclick="data22(this, this.id)" id="163"><%= nine[0]%></td>
                    <td style="width: 25%; height: 1px" class="style6" onclick="message11(this, this.id)" id="19" onmouseover=" this.bgColor = '#FAEBD7'" onmouseout=" this.bgColor = ''" ><strong><%= listy[11]%></strong></td>
                </tr>
            </table>
            <%

                }
                //System.out.println(temp);
            %>
        </center>

        <script type="text/javascript">
            //var pre;
            //var txt=0;
            var to = null;
            var counter = 0;
            var memo = null;
            var time = 0;
            var count = 0;
            var z;
            var pressed = 0;
            var cross = 0;
            //pre=document.gui.secchar.id;

            function message0(e, m) {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");       //Get the id of selected table       
                    var y = x.rows[0];
                    var p = y.cells[13];
                    z = p.innerText;
                    cross = 1;
                    to = e.cellIndex;      // getting cell index
                    //whiter();
                    if (memo != z) {
                        document.gui.seco.value = z;                                // word has already found the save its value and chage color 
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";           // leave the color unchanged 
                    }


                    counter += 1;
                    pressed = 1;
                } else {                                                //word is not selected yet
                    // document.gui.first.value=z;
                    document.gui.seco.value = z;
                    //document.gui.hiddenBox.value=z;
                }
            }
            function message1(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[2];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    //document.gui.first.value=
                    // document.gui.secchar.value=
                    //document.gui.thechar.value=
                    //ocument.gui.hiddenBox.value=
                    //txt=e.rowIndex;
                    to = e.cellIndex;
                    // whiter();
                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else {
                    //document.gui.first.value=z;
                    document.gui.seco.value = z;
                }
            }
            function message2(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[4];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    //ocument.gui.first.value=
                    //ocument.gui.secchar.value=
                    //document.gui.thechar.value=
                    //document.gui.hiddenBox.value=
                    //txt=e.rowIndex;
                    to = e.cellIndex;
                    // whiter();
                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else { //document.gui.first.value=z;
                    document.gui.seco.value = z;
                }
            }
            function message3(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[6];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    //document.gui.first.value=
                    // document.gui.secchar.value= <
                    //document.gui.thechar.value=
                    // document.gui.hiddenBox.value=
                    //txt=e.rowIndex;
                    to = e.cellIndex;
                    //whiter();
                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else {
                    document.gui.seco.value = z;
                }
            }
            function message4(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[8];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    to = e.rowIndex;

                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else {
                    document.gui.seco.value = z;
                }
            }
            function message5(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[10];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    to = e.cellIndex;

                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else
                {
                    document.gui.seco.value = z;
                }
            }
            function message6(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[12];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    to = e.cellIndex;

                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }

                    counter += 1;
                    pressed = 1;
                } else {

                    document.gui.seco.value = z;
                }
            }
            function message7(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[14];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    to = e.cellIndex;

                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else {

                    document.gui.seco.value = z;

                }
            }
            function message8(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[16];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    to = e.cellIndex;

                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else {

                    document.gui.seco.value = z;

                }
            }
            function message9(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[18];
                    var p = y.cells[12];
                    z = p.innerText;
                    // whiter();
                    //document.gui.first.value=
                    // document.gui.secchar.value=
                    //document.gui.thechar.value=
                    // document.gui.hiddenBox.value=
                    //txt=e.rowIndex;
                    cross = 1;
                    to = e.cellIndex;
                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else {
                    // document.gui.first.value=z;
                    document.gui.seco.value = z;
                    //document.gui.hiddenBox.value=z;
                }
            }
            function message10(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[20];
                    var p = y.cells[12];
                    z = p.innerText;
                    // document.gui.first.value=
                    //  document.gui.secchar.value=
                    //  document.gui.thechar.value=
                    // document.gui.hiddenBox.value=
                    //txt=e.rowIndex;
                    cross = 1;
                    to = e.cellIndex;
                    //whiter();
                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }
                    counter += 1;
                    pressed = 1;
                } else
                {//document.gui.first.value=z;
                    document.gui.seco.value = z;
                    // document.gui.hiddenBox.value=z;
                }
            }
            function message11(e, m)
            {
                if (to == null && cross == 0) {
                    var x = document.getElementById("fir");
                    var y = x.rows[22];
                    var p = y.cells[12];
                    z = p.innerText;
                    cross = 1;
                    //document.gui.first.value=
                    // document.gui.secchar.value=
                    // document.gui.thechar.value=
                    // document.gui.hiddenBox.value=
                    //txt=e.rowIndex;
                    to = e.cellIndex;
                    //whiter();
                    if (memo != z) {
                        document.gui.seco.value = z;
                        document.getElementById(m).style.backgroundColor = "red";
                    } else {
                        document.getElementById(m).style.backgroundColor = "red";
                    }

                    counter += 1;
                    pressed = 1;
                } else {
                    //  document.gui.first.value=z;
                    document.gui.seco.value = z;

                }
            }
            function data0(c, d) {

                if (pressed == 1) {
                    var x, y, zo;
                    cross = 0;
                    var ind = c.cellIndex;
                    x = document.getElementById('tr0');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;
                    // document.gui.hiddenBox.value=zo;
                    count += 1;

                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data2(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;
                    x = document.getElementById('tr1');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;
                    //document.gui.hiddenBox.value=zo;

                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data4(c, d) {
                if (pressed == 1) {
                    var ind = c.cellIndex;
                    cross = 0;
                    var x, y, zo;
                    x = document.getElementById('tr2');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;

                    // document.gui.hiddenBox.value=zo;
                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data6(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    // var txt=c.rowIndex;
                    cross = 0;
                    x = document.getElementById('tr3');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;

                    // document.gui.hiddenBox.value=zo;
                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data8(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;
                    x = document.getElementById('tr4');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;

                    //document.gui.hiddenBox.value=zo;
                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data10(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;
                    x = document.getElementById('tr5');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;
                    //document.gui.hiddenBox.value=zo;

                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data12(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;

                    x = document.getElementById('tr6');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;


                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data14(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;
                    x = document.getElementById('tr7');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;


                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }

            function data16(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;
                    x = document.getElementById('tr8');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;
                    //document.gui.hiddenBox.value=zo;

                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");
            }
            function data18(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;

                    x = document.getElementById('tr9');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;


                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");

            }
            function data20(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;
                    x = document.getElementById('tr10');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;
                    // document.gui.hiddenBox.value=zo;

                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");

            }
            function data22(c, d) {
                if (pressed == 1) {
                    var x, y, zo;
                    var ind = c.cellIndex;
                    cross = 0;
                    x = document.getElementById('tr11');
                    y = x.getElementsByTagName("TD");
                    zo = y.item(ind).firstChild.data;
                    //document.gui.hiddenBox.value=zo;

                    count += 1;
                    compare(d, zo, count);
                } else
                    alert("Please first select one word from right column ! ");

            }
            var swdCycleTime = 50;

            // Functional Code
            var swd, swdObj, swdct, swdnow, swdcycle;
            var swdObjAry = new Array();
            function swdStart(id, ud) {
                swdObj = document.getElementById(id);
                swdObj.value = 0;
                swdnow = new Date();
                swdObj.now = swdnow.getTime();
                swdObj.ud = ud * 1000;
                swdObj.d = 0;
                if (!swdObj.c) {
                    swdObj.c = 1;
                    swdObjAry[swdObjAry.length] = swdObj;
                }
                if (swdObj.c == 2) {
                    swdObj.c = 1;
                }
            }
            function swdCycle() {
                swdcycle = new Date().getTime();
                for (swd0 = 0; swd0 < swdObjAry.length; swd0++) {
                    if (swdcycle > swdObjAry[swd0].now + swdObjAry[swd0].ud && swdObjAry[swd0].c == 1) {
                        swdObjAry[swd0].d++;
                        swdObjAry[swd0].now = swdObjAry[swd0].now + swdObjAry[swd0].ud;
                        swdObjAry[swd0].value = swdObjAry[swd0].d;
                    }
                }
            }
            function swdStop(id) {
                swdObj = document.getElementById(id);
                swdObj.c = 2;
            }

            setInterval('swdCycle()', swdCycleTime);
            //-->



        </script>

        <script type="text/javascript">
            var rowno;
            var right = 0;
            var helper = 0;
            var element = 0;
            var record = 0;
            var wrong = 0;
            var check = 0;
            var checker = 0;
            var oldy = null;
            var rec = 0;
            var fit = 1;
            var fir = 0;
            var mir = 1;





            var nir = 0;

            var pir = 0;


            var t = 1;
            var seq = 0;
            var noseq = 0;
            var correct = 0;
            var notcorrect = 0;
            var init;
            var correctwrd = 0;
            var wrongwrd = 0;

            var flag = 0;
            var choice = 0;
            var rank = 0;
            var mem = new Array();
            var tir = new Array();
            var col2 = new Array();
            var row2 = new Array();
            var letter = new Array();
            var recorder = new Array();
            var len = 0;

            function Create2DArray(rows) {
                var arr = [];

                for (var i = 0; i < rows; i = i + 2) {
                    arr[i] = [];
                }

                return arr;
            }




            function compare(element, c, count) {


                rowno = document.gui.tre.value;

                right = document.gui.thechar.value;
                rec = document.gui.seco.value;

                var arr = Create2DArray(24);
                var sum = 0;

                for (var rin = 0; rin < 24; rin = rin + 2) {
                    for (var con = 1; con <= 12; con++) {
                        arr[rin][con] = con + sum;

                    }
                    sum = sum + (con - 1);
                }

                recorder[rank] = arr[rowno][right];

                rank += 1;


                letter[0] = rec.charAt(0);



                if (c == letter[0] && check == 0) {
                    count = count - 1;
                    mem[0] = c;

                    document.getElementById(element).style.backgroundColor = "lightblue";

                    record += 1;
                    document.gui.first.value = record;
                    flag = 1;
                    right = 1;
                    count += 1;
                    check = 1;
                } else if (c != letter[0] && right != 1 && count < 1)
                {

                    count = count - 1;

                    document.getElementById(element).style.backgroundColor = "lightblue";

                    wrong += 1;
                    document.gui.hiddenBox.value = wrong;
                    count += 1;
                    right = 0;
                    check = 1;
                    flag = 0;

                } else {

                    count = count - 1;

                    document.getElementById(element).style.backgroundColor = "lightblue";

                    wrong += 1;
                    document.gui.hiddenBox.value = wrong;
                    count += 1;
                    right = 0;
                    check = 1;
                    flag = 0;
                    // t=0;
                }

                if (count > 1) {
                    if (record == checker) {
                        checker = 12;
                    } else {
                        checker = record;
                    }
                    count = count - 1;


                    pir = document.gui.thechar.value;
                    nir = document.gui.tre.value;

                    var ii = 0;
                    while (ii <= t) {
                        letter[ii] = rec.charAt(ii);

                        ii += 1;
                    }






                    if ((c == letter[t]) && right == 0) {
                        mem[t] = c;

                        document.getElementById(element).style.backgroundColor = "lightblue";
                        record += 1;
                        document.gui.first.value = record;
                        flag = 1;



                        if (mem[t] == letter[t]) {

                            if (count > 1) {

                                count += 1;
                            }
                        }
                        t += 1;
                    } else if ((c == letter[t]) && right == 1) {

                        mem[t] = c;
                        document.getElementById(element).style.backgroundColor = "lightblue";
                        record += 1;
                        document.gui.first.value = record;
                        flag = 1;
                        if (mem[t] == letter[t]) {
                            //col2[fit]=pir;
                            //row2[fit]=nir;

                            t += 1;
                        }



                    } else {
                        document.getElementById(element).style.backgroundColor = "lightblue";
                        // wrong+=1;
                        document.gui.hiddenBox.value = wrong;
                        flag = 0;
                        right = 0;
                        //count=count-1;
                    }


                }
                helper = element;
                choice = 1;


            }
            function betterMo() {

                document.gui.seco.value = rec;
                check = 0;
                count = 0;
                counter = 0;
                t = 1;
                cross = 0;
                right = 0;
                for (var n = 8; n <= 163; n++) {
                    document.getElementById(n).style.backgroundColor = "white";
                }
            }

            function undo() {

                document.getElementById(helper).style.backgroundColor = "white";
                //wrong=wrong-1;
                document.gui.hiddenBox.value = wrong;
                count = count - 1;
                cross = 0;

                if (flag == 1) {
                    if (t > 1) {
                        t = t - 1;
                        record = record - 1;
                        document.gui.first.value = record;
                    } else {
                        t = 1;
                        record = record - 1;
                        document.gui.first.value = record;
                    }
                } else {

                    document.gui.hiddenBox.value = wrong;
                }
            }
            var wrongee = 0;
            var dumm = null;
            var x = new Array(5);


            function confirmation() {


                if (rec == 0) {
                    betterMo();
                } else {
                    len = rec.length;

                    dumm = rec.charAt(len - 1);
                    for (var u = 1; u <= len; u++) {


                        if (mem[u - 1] == letter[u - 1] && ((mem[u - 1] != null) || (letter[u - 1] != null))) {
                            correct += 1;

                        } else {


                            notcorrect += 1;


                        }

                    }
                    if (counter < 12) {

                        for (init = 1; init <= len - 2; init++) {

                            if (init == (len - 2)) {
                                x[init] = (recorder[init]) - (recorder[init - 1]);
                            } else {
                                x[init] = (recorder[init + 1]) - (recorder[init]);
                            }


                            if (init > 1) {


                                if ((x[init]) == (x[init - 1])) {

                                    seq += 1;

                                } else {
                                    noseq += 1;

                                }
                            }
                        }



                        if (correct == (len) && choice == 1 && seq == (len - 3) && noseq <= 1) {

                            correctwrd += 1;
                            //alert("correctwrd 1=" + correctwrd);


                        } else {
                            wrong += 1;
                            wrongee = 0;
                        }
                        init = 0;
                        rank = 0;
                        correct = 0;
                        notcorrect = 0;
                        pressed = 0;
                        seq = 0;
                        noseq = 0;
                        to = null;
                        memo = document.gui.seco.value;
                        choice = 0;
                        time = 1;
                        //counter+=1;
                        check = 0;
                        count = 0;
                        right = 0;
                        fit = 1;
                        t = 1;

                        for (var p = 1; p <= len; p++) {
                            mem[p] = null;

                            letter[p] = null;
                        }
                        //choice=0;
                        //whiter();
                    } else {

                        if (correct == (len) && choice == 1) {
                            correctwrd += 1;
                            // alert("correctwrd 2=" + correctwrd);
                            correct = 0;
                            notcorrect = 0;

                        } else {
                            wrong += 1;
                            correct = 0;
                            notcorrect = 0;
                        }
                        swdStop('timer');
                        time = document.gui.secchar.value;

                        if (correctwrd <= 12) {


                            wrong = (12 - correctwrd);
                        } else {
                            correctwrd = 0;
                            wrong = (12 - correctwrd);
                        }
                        time = parseInt(time) + 60;
                        if (time >= 60) {
                            min = time / 60;
                            min = parseInt(min);
                            secd = time % 60;
                            alert(" Your score for this excercise ?\n\n Correct Answers:   " + correctwrd + "\n Wrong Answers:    " + wrong + "\n Time:            " + min + " minute  " + secd + " sec ");
                        } else {
                            alert(" Your score for this excercise ?\n  Correct Words: " + correctwrd + "\n  Wrong Words: " + wrong + "\n  Time: " + time + "sec")

                        }
                        var select = Math.floor(Math.random() * 6);
 alert(select);
                        switch (select + 1) {


                            case 1 :
                                window.location.href('exercise2_1_7.jsp?wrong[]=' + [correctwrd, wrong, time]);
                                break;
                            case 2 :
                                window.location.href('exercise2_1_8.jsp?wrong[]=' + [correctwrd, wrong, time]);
                                break;
                            case 3 :
                                window.location.href('exercise2_1_9.jsp?wrong[]=' + [correctwrd, wrong, time]);
                                break;
                            case 4:
                                window.location.href('exercise2_1_10.jsp?wrong[]=' + [correctwrd, wrong, time]);
                                break;
                            case 5 :
                                window.location.href('exercise2_1_11.jsp?wrong[]=' + [correctwrd, wrong, time]);
                                break;
                            case 6 :
                                window.location.href('exercise2_1_12.jsp?wrong[]=' + [correctwrd, wrong, time]);
                                break;
                            default :
                                window.location.href('exercise2.jsp?wrong[]=' + [correctwrd, wrong, time]);
                                break;

                        }

                    }
                }
            }




            function whiter() {
                for (var y = 20; y <= 83; y++) {
                    document.getElementById(y).style.backgroundColor = "white";

                }
            }


        </script>


        &nbsp;<br /><br />
        <input name="first" style="width: 112px; height: 24px" type="text" align="left"  class="style12"  /><BR><input name= "hiddenBox" class="style12" style="width: 112px; height: 24px " type="text" />
        <br /><input name="secchar"  class="style12" style="width: 112px; height: 24px" type="text"  id="timer" onkeypress="return false;
                " value=" "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="style12" value="Reload Page" name ="button3">
        <center><input name="Button1" style="width: 90px; height: 32px" type="button" value="Clear" onclick="betterMo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input name="Reset1" style="width: 89px; height: 33px" type="button" value="UNDO" onclick="undo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()"/>
        </center><br /><input name="thechar" class="style12" style="width: 112px; height: 24px" type="text"   /><br /><input name="thetest" class="style12" style="width: 112px; height: 24px" type="text"   /><br /><input name="seco" class="style12" style="width: 112px; height: 24px" type="text" /><br /><input name="tre" class="style12" style="width: 112px; height: 24px" type="text" /><input name="wrongchar" class="style12" type="text" value=""   /><br />


    </form>
</body>
<%
        con.close();
    } catch (Exception sqlEx) {
        System.out.println(sqlEx);
    }
%>
</html>