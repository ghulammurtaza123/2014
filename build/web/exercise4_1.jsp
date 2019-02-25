<%--
    Document   : exercise4
    Created on : 2010-jan-20, 00:10:24
    Author     : Murtaza
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*"%>
<%@page import="java.util.Properties.*"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<html>

    <head>
        <title> Exercise# 4 </title>

        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


    <meta content="sv" http-equiv="Content-Language" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <!-- #BeginEditable "doctitle" -->

    <!-- #EndEditable -->
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
            border: 0.5px solid #000000;
            text-align: center;

            color: #0000FF;
        }
        .style11 {
            text-align: center;
            color: #FF2C00;
        }
        .style12 {
            text-align: center;
            color: #FF2C00;
            visibility:hidden;

        }


    </style>

</head>
<%@ page language="java" %>
<body background="nat.jpg" onload="swdStart('timer', 1)"  >
    <br><br>
    <script language="JavaScript">
        javascript:window.history.forward(1);
    </script>
    <%
        String sqr = null;
        String crc = null;
        String dsgn1 = null;
        String dsgn2 = null;
        String temp1 = null;
        String temp2 = null;
        String temp3 = null;
        String temp4 = null;
        String temp5 = null;
        String temp6 = null;
        String temp7 = null;
        String temp8 = null;
        int temp9 = 0;

        try {
            String url = "jdbc:derby://localhost:1527/record";
            String user = "re";
            String password = "re";

            Connection con = DriverManager.getConnection(url, user, password);
            Statement st = con.createStatement();

            ResultSet rs = null;
            String sql = "SELECT * FROM recording ";
            rs = st.executeQuery(sql);
            String[] values = new String[14];
            //String[] art=new String[101];

            String[] square = new String[151];
            String[] circle = new String[151];
            String[] design1 = new String[151];
            String[] design2 = new String[151];
            String qust = "data/qst.jpg";
            int one = 0;

            int i = 0;
            while (rs.next()) {
                sqr = rs.getString("square");
                square[i] = sqr;
                crc = rs.getString("circle");
                circle[i] = crc;
                dsgn1 = rs.getString("design1");
                design1[i] = dsgn1;
                dsgn2 = rs.getString("design2");
                design2[i] = dsgn2;

                i = i + 1;
            }
            Random generator = new Random();

            one = generator.nextInt(6);

            System.out.println(one);
            switch (one) {
                case 1:

                    temp1 = circle[3];
                    temp2 = design2[0];
                    temp3 = square[1];
                    temp4 = design1[3];
                    temp5 = design1[2];
                    temp6 = circle[1];
                    temp7 = design2[1];
                    temp8 = square[3];
                    temp9 = 8;
                    square[2] = circle[3];
                    values[0] = "sport1";
                    design1[0] = design2[0];
                    values[1] = "dsgn21";
                    circle[0] = square[1];
                    values[2] = "sqr1";
                    design2[3] = design1[3];
                    values[3] = "dsgn1";
                    design2[2] = design1[2];
                    values[4] = "dsgn2";
                    square[0] = circle[1];
                    values[5] = "sport2";
                    circle[1] = design2[1];
                    values[8] = "dsgn22";
                    design1[1] = qust;
                    values[6] = "dsgn22";
                    qust = square[3];
                    values[7] = "sqr2";

                    break;
                case 2:
                    temp1 = circle[3];
                    temp2 = design1[0];
                    temp3 = square[1];
                    temp4 = design2[3];
                    temp5 = design2[3];
                    temp6 = circle[1];
                    temp7 = design1[1];
                    temp8 = square[3];
                    temp9 = 4;

                    square[2] = circle[3];
                    values[0] = "sport1";
                    design1[0] = design1[0];
                    values[1] = "dsgn1";
                    circle[0] = square[1];
                    values[2] = "sqr1";
                    circle[3] = design2[3];
                    values[8] = "dsgn21";
                    design2[3] = qust;
                    values[3] = "dsgn22";
                    design2[2] = design2[2];
                    values[4] = "dsgn22";
                    square[0] = circle[1];
                    values[5] = "sport2";
                    design1[1] = design1[1];
                    values[6] = "dsgn2";
                    qust = square[3];
                    values[7] = "sqr2";

                    break;
                case 3:

                    temp1 = square[0];
                    temp2 = design2[0];
                    temp3 = square[1];
                    temp4 = design1[3];
                    temp5 = design1[2];
                    temp6 = circle[3];
                    temp7 = design2[1];
                    temp8 = circle[2];
                    temp9 = 1;
                    circle[1] = circle[3];
                    values[8] = "sport1";
                    square[2] = qust;
                    values[0] = "sport1";
                    design1[0] = design2[0];
                    values[1] = "dsgn21";
                    circle[0] = square[1];
                    values[2] = "sqr1";
                    design2[3] = design1[3];
                    values[3] = "dsgn1";
                    design2[2] = design1[2];
                    values[4] = "dsgn2";
                    square[0] = square[0];
                    values[5] = "sport1";
                    design1[1] = design2[1];
                    values[6] = "dsgn22";
                    qust = circle[2];
                    values[7] = "sport2";

                    break;
                case 4:

                    temp1 = circle[3];
                    temp2 = design1[0];
                    temp3 = circle[0];
                    temp4 = design2[3];
                    temp5 = design2[2];
                    temp6 = square[0];
                    temp7 = design1[1];
                    temp8 = square[3];
                    temp9 = 2;
                    square[2] = circle[3];
                    values[0] = "sport1";
                    circle[1] = design1[0];
                    values[8] = "dsgn1";
                    design1[0] = qust;
                    values[1] = "dsgn1";
                    circle[0] = circle[0];
                    values[2] = "sport2";
                    design2[3] = design2[3];
                    values[3] = "dsgn2";
                    design2[2] = design2[2];
                    values[4] = "dnsg22";
                    square[0] = square[0];
                    values[5] = "sqr1";
                    design1[1] = design1[1];
                    values[6] = "dsgn2";
                    qust = square[3];
                    values[7] = "sqr2";

                    break;
                case 5:

                    temp1 = square[2];
                    temp2 = design1[0];
                    temp3 = circle[0];
                    temp4 = design2[3];
                    temp5 = design2[2];
                    temp6 = circle[1];
                    temp7 = design1[1];
                    temp8 = square[3];

                    temp9 = 7;
                    square[2] = square[2];
                    values[0] = "sqr1";
                    design1[0] = design1[0];
                    values[1] = "dsgn1";
                    circle[0] = circle[0];
                    values[2] = "sport1";
                    design2[3] = design2[3];
                    values[3] = "dsgn21";
                    design2[2] = design2[2];
                    values[4] = "dsgn22";
                    square[0] = qust;
                    values[5] = "sport2";
                    design1[1] = design1[1];
                    values[6] = "dsgn2";
                    qust = square[3];
                    values[7] = "sqr2";
                    circle[1] = circle[1];
                    values[8] = "sport2";
                    break;
                case 6:
                    temp1 = circle[3];
                    temp2 = design2[0];
                    temp5 = square[0];
                    temp3 = design1[3];
                    temp4 = design1[2];
                    temp8 = square[1];
                    temp6 = design2[1];
                    temp7 = circle[2];
                    temp9 = 3;
                    square[2] = circle[3];
                    values[0] = "sport1";
                    design1[0] = design2[0];
                    values[1] = "dsgn21";
                    circle[0] = qust;
                    values[2] = "sqr2";
                    design2[3] = design1[3];
                    values[3] = "dsgn1";
                    design2[2] = design1[2];
                    values[4] = "dsgn2";
                    square[0] = square[0];
                    values[5] = "sqr1";
                    design1[1] = design2[1];
                    values[6] = "dsgn22";
                    qust = circle[2];
                    values[7] = "sport2";
                    circle[1] = square[1];
                    values[8] = "sport2";
                    break;
                default:
                    temp1 = square[2];
                    temp2 = design1[0];
                    temp3 = circle[0];
                    temp4 = design2[3];
                    temp5 = design2[2];
                    temp6 = square[0];
                    temp7 = design1[1];
                    temp8 = circle[2];
                    temp9 = 9;
                    square[2] = square[2];
                    values[0] = "sqr1";
                    design1[0] = design1[0];
                    values[1] = "dsgn1";
                    circle[0] = circle[0];
                    values[2] = "sport1";
                    design2[3] = design2[3];
                    values[3] = "dsgn21";
                    design2[2] = design2[2];
                    values[4] = "dnsg22";
                    square[0] = square[0];
                    values[5] = "sqr2";
                    design1[1] = design1[1];
                    values[6] = "dsgn2";
                    qust = qust;
                    values[7] = "sport2";
                    circle[1] = circle[2];
                    values[8] = "sport2";
            }


    %>

    <form name ="gui" method ="post" action="select-exercise.jsp">

        <TABLE background="white" cellspacing="5" border="2" class="style4" align="center" name="mem">

            <TR>
                <TD><IMG src=<%=square[2]%> width="100" height="100" id="1" name=<%=values[0]%>></TD>
                <td><IMG src=<%=design1[0]%> width="100" height="100" id="2" name=<%=values[1]%>></td>
                <td><IMG src=<%=circle[0]%> width="100" height="100" id="3" name=<%=values[2]%>></td>
                <TD rowSpan=9 class="style12"></TD>
                <TD class="style12"></TD>
                <TD class="style12"></TD>
                <TD class="style12"></TD>
                <TD class="style12"></TD>
                <TD class="style12"></TD>
            </TR><TR>
                <td><IMG src=<%=design2[3]%> width="100" height="100" id="4" name=<%=values[3]%>></td>
                <td><IMG src="data/main.JPG" width="100" height="100" id="5" name=<%=values[9]%>></td>
                <td><IMG src=<%=design2[2]%> width="100" height="100" id="6" name=<%=values[4]%>></td>
                <TD width="100" height="100" class="style12"></TD>
                <TD class="style12"></TD>

                <TD><IMG src=<%=temp3%> width="100" height="100" id="30" onclick="data1(this.id, this.name)" name=<%=values[2]%>></td>
                <TD class="style12"></TD>
                <TD><IMG src=<%=temp1%> width="100" height="100" id="10" onclick="data1(this.id, this.name)" name=<%=values[0]%>></td>
            </TR><TR>
                <td><IMG src=<%=square[0]%> width="100" height="100" id="7"  name=<%=values[5]%>></td>
                <td><IMG src=<%=design1[1]%> width="100" height="100" id="8"  name=<%=values[6]%>></td>
                <td><IMG src=<%=qust%>  width="100" height="100" id="9" onclick="data1(this.id, this.name)" name=<%=values[7]%>></td>
                <TD width="100" height="100" class="style12"></TD>
                <TD><IMG src=<%=temp2%> width="100" height="100" id="20" onclick="data1(this.id, this.name)" name=<%=values[1]%>></td>
                <TD class="style12"></TD>
                <TD class="style12"></TD>
                <TD class="style12"><IMG src=<%=temp4%> width="100" height="100" id="40" onclick="data1(this.id, this.name)" name=<%=values[3]%>></td>
                <TD class="style12"></TD>
            </TR><TR>
                <TD colSpan=3 rowSpan=6 class="style12"></TD>
                <TD width="100" height="100" class="style12"></TD>
                <TD  class="style12"></TD>
                <TD class="style12"></TD>
                <TD><IMG src=<%=temp8%> width="100" height="100" id="90" onclick="data1(this.id, this.name)" name=<%=values[7]%>></TD>
                <TD class="style12"></TD>
                <TD><IMG src=<%=temp7%> width="100" height="100" id="80" onclick="data1(this.id, this.name)" name=<%=values[6]%>></TD>
            </TR><TR>
                <TD width="100" height="100" class="style12"></TD>
                <TD><IMG src=<%=temp5%> width="100" height="100" id="60" onclick="data1(this.id, this.name)" name=<%=values[4]%>></TD>
                <TD class="style12"></TD>
                <TD class="style12"></TD>
                <TD><IMG src=<%=temp6%> width="100" height="100" id="70" onclick="data1(this.id, this.name)" name=<%=values[5]%>></TD>
                <TD class="style12"></TD>
            </TR><TR>
                <TD width="100" height="100" class="style12"></TD>
                <TD class="style12"></TD>
                <TD class="style12"></TD>
                <TD ><IMG src="data/main.JPG" width="100" height="100" id="50" onclick="data1(this.id, this.name)" name=<%=values[9]%>></TD>
                <TD class="style12"></TD>
            </TR>

        </TABLE>

















        <script type="text/javascript">
            //var pre;
            //var txt=0;


            var to = null;
            var imgi = new Array();
            var memo = 1;

            var trick = 0;
            var count = 0;
            var z = new Array();
            var oldname = null;



            //pre=document.gui.secchar.id;


            function data1(d, naam) {
                //var rowind=c.rowIndex;

                //var txt=c.rowIndex;
       // var ind=c.cellIndex;
                imgi[memo] = document.getElementById(d).src;
                document.gui.thechar.value = imgi[memo];

       //if(to==null){
                oldname = document.getElementById(<%=temp9%>).name;

                document.getElementById(<%=temp9%>).src = imgi[memo];
                document.gui.tre.value = naam;
                compare();
                //   to=1;

                // }
                // else{

                //  document.getElementById(<=temp9>).src=imgi[memo];

       //compare();
                //}

                // document.getElementById(d).src=imgi[memo];
                //  oldname=naam;


                //alert(naam);
                //x = document.getElementById('a');
                //y= {x.getElementsByTagName("TD");
                //zo=y.item(ind).firstChild.data;
                //document.gui.hiddenBox.value=zo;

                count += 1;
                z[memo] = d;
                document.gui.sec.value = d;
                //if(count==2){

                // }
                memo += 1;
                trick += 1;
            }

            //fresh=document.gui.hiddenBox.value;

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






        </script>


        <script type="text/javascript">
            var rightimg;
            var helper = 0;
            var recordnew = 0;
            var time = 0;
            var correctwrd = 0;
            var wrongwrd = 0;
            var counter = 0;
            var flag = 0;
            var omissions = 0;
            var mem = new Array();

            var dum = null;
            var wrongee = 0;
            function compare() {

      //alert(oldname);
                dumm = document.gui.tre.value;

                //alert(dumm);
                //alert(oldname);



                if (oldname != dumm) {
                    wrongee += 1;
                    flag = 0;

                } else {
                    correctwrd += 1;
                    flag = 1;
                }



                to = null;

                //memo=document.gui.sec.value;
                // timing=1;
                counter += 1;
                // alert( counter);
                //check=0;
                // count=0;
                //right=0;

                //whiter();
                //  alert( counter);
            }




            //alert("correct="+oldname+"wrong="+dumm);


            function omit() {

                omissions = 1;


                confirmation();

            }


            function betterMo() {


                wrongee = 0;
                correctwrd = 0;
                counter = 0;
                to = null;
                oldname = null;
                memo = 1;
                count = 0;


                document.getElementById(<%=temp9%>).src = "data/qst.jpg";


            }



            function confirmation() {

                dumm = document.gui.tre.value;

                //alert(dumm);
                //alert(oldname);



                /* if(oldname!=dumm){
                 wrongee+=1;
                 flag=0;
                 alert( wrongee);
                 }
                 else{
                 correctwrd+=1;
                 flag=1;
                 }*/

                swdStop('timer');
                time = document.gui.secchar.value;
                time = parseInt(time) + 60;
                if (time >= 60) {
                    min = time / 60;
                    min = parseInt(min);
                    secd = time % 60;

                    alert(" Your score for this excercise ?\n\n Omissions   " + omissions + "\n Wrong Answers:    " + wrongee + "\n Time:            " + min + " minute  " + secd + " sec ");
                } else {
                    alert(" Your score for this excercise ?\n\n  Omissions:   " + omissions + "\n Wrong Answers:    " + wrongee + "\n Time:                 " + time + " sec");
                }

                document.gui.button2.click();
            }

        </script>




        <input name="secchar" class="style12" style="width: 112px; height: 24px" type="text"  id="timer" onkeypress="return false;
        " value=" "/><input type="submit" class="style12" value="Reload Page" name ="button2">
        <br /><br /><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Button1" style="width: 90px; height: 32px" type="button" value="Match" onclick="confirmation()" />
            <input name="Reset1" style="width: 89px; height: 33px" type="button" value="Reset" onclick="betterMo()" />
            <input name="ommit" style="width: 89px; height: 33px" type="button" value="Omission" onclick="omit()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center><input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()" class="style12" />
        <br /><input name="thechar" class="style12" style="width: 112px; height: 24px" type="text"  /><br /><input name="sec" class="style12" style="width: 112px; height: 24px" type="text" /><br /><input name="tre" class="style12" style="width: 112px; height: 24px" type="text" /></form>
</body>

<%
        con.close();
    } catch (Exception sqlEx) {
        System.out.println(sqlEx);
    }
%>
</html>



