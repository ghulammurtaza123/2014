




<%--
    Document   : exercise2
    Created on : 2010-Mar-08, 09:45:57
    Author     : Murtaza
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exercise 2</title>
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
        <script type="text/JavaScript" src="jsDraw2D.js" ></script>
    </head>

    <body background=" " onload="Coords()"  style="overflow:hidden;position:absolute;background-repeat:no-repeat;background-position:-174px -20px;" id="body1" >
        <script language="JavaScript">
            javascript:window.history.forward(1);
        </script>
    <canvas id="myCanvas" width="1300" height="500"  > </canvas>
        <%@ page language="java" %>
        <%
        //String old_Wrong[]=new String[];

            int tidd = 0;
            String old_Wrong[] = request.getParameterValues("wrong[]");

            StringTokenizer st = new StringTokenizer(old_Wrong[0], ",");

            String correct_wrd = st.nextToken();
            String wrong_wrd = st.nextToken();
            String old_time = st.nextToken();

            String name = (String) session.getAttribute("named");

            try {
                String url = "jdbc:derby://localhost:1527/record";
                String user = "re";
                String password = "re";

                Connection con = DriverManager.getConnection(url, user, password);
                String sql2 = "SELECT * FROM " + name;

                PreparedStatement pStmt2 = con.prepareStatement(sql2, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

                ResultSet rs2 = pStmt2.executeQuery();
                rs2.moveToInsertRow();
                // updating values in insert row
                rs2.updateString("times", old_time);
                rs2.updateString("correct", correct_wrd);
                rs2.updateString("wrong", wrong_wrd);
                rs2.updateString("exercise", "Exercise#2");
                rs2.updateString("name", name);
                tidd = Integer.parseInt(old_time);                     // inserting row in resultset & into database
                rs2.insertRow();

                // row_No = rs.getRow();
                System.out.println("Row has been updated");
                con.close();
            } catch (Exception sqlEx) {
                System.out.println(sqlEx);
            }

        %> 
    <form name ="gui" method ="post" action="select-exercise.jsp">

        <p> <img style="Z-INDEX: 108; POSITION: absolute; TOP: 103px; LEFT: 593px" id="9" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/I.jpg" width="39" height="35">
            <img style="Z-INDEX: 120; POSITION: absolute; TOP: 448px; LEFT: 266px" id="1" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/A.jpg" width="45" height="40">

            <img style="Z-INDEX: 101; POSITION: absolute; TOP:  457px; LEFT: 384px" id="2" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/B.jpg" width =45 height=40>
            <img style="Z-INDEX: 102; POSITION: absolute; TOP: 366px; LEFT: 406px" id="3" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/C.jpg" width="39" height="39">
            <img style="Z-INDEX: 103; POSITION: absolute; TOP: 281px; LEFT: 410px" id="4" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/D.jpg" width="36" height="35">
            <img style="Z-INDEX: 104; POSITION: absolute; TOP: 180px; LEFT: 415px" id="5" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/E.jpg" width="41" height="39" >
            <img style="Z-INDEX: 105; POSITION: absolute; TOP: 89px; LEFT: 431px" id="6" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/F.jpg" width="37" height="38">
            <img style="Z-INDEX: 106; POSITION: absolute; TOP: 17px; LEFT: 464px" id="7" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/G.jpg" width="35" height="35">
            <img style="Z-INDEX: 107; POSITION: absolute; TOP: 19px; LEFT: 580px" id="8" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/H.jpg" width="39" height="43">
            <img style="Z-INDEX: 109; POSITION: absolute; TOP: 188px; LEFT: 600px" id="10" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/J.jpg" width="31" height="35">
            <img style="Z-INDEX: 110; POSITION: absolute; TOP: 284px; LEFT: 597px" id="11" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/K.jpg" width="33" height="35">
            <img style="Z-INDEX: 111; POSITION: absolute; TOP: 374px; LEFT: 595px" id="12" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/L.jpg" width="33" height="41">
            <img style="Z-INDEX: 112; POSITION: absolute; TOP: 443px; LEFT: 587px" id="13" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/M.jpg" width="39" height="39">
            <img style="Z-INDEX: 115; POSITION: absolute; TOP: 445px; LEFT: 683px" id="14" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/N.jpg" width="35" height="41"> 
            <img style="Z-INDEX: 114; POSITION: absolute; TOP: 437px; LEFT: 775px" id="15" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/O.jpg" width="35" height="41">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </p>

        <script type="text/javascript">
            var total = 15;
            var to = null;
            var memo = null;
            var time = 0;
            var count = 0;
            var z = null;
            var xaxis;
            var yaxis;
            var oldx = new Array(30);
            var oldy = new Array(30);
            var oldmem;
            var tempX = 0;
            var oldmemmem = 0;
            var seq = new Array();
            var val = 0;
            var init = 1;
            var seqnum = new Array();
            var tempY = 0;
            var t = 0;
            var canvas;
            var ctx;

            var temp = new Array();
            var num = 1;
            var finalseq = new Array();
            var numbr = 1;
            for (var k = 1; k <= 15; k++) {
                seq[k] = 0;
            }
            var flag = 0;
            var correctwrd = 0;
            var wrongwrd = 0;
       //<script language="JScript" type="text/jscript">




            function Coords()
            {
                var IE = document.all ? true : false;
                if (!IE)
                    document.captureEvents(Event.MOUSEMOVE)
                document.onmousemove = getMouseXY;
                swdStart('timer', 1);
                function getMouseXY(e) {
                    if (IE) { // grab the x-y pos.s if browser is IE
                        tempX = event.clientX + document.body.scrollLeft;
                        tempY = event.clientY + document.body.scrollTop;
                    } else {  // grab the x-y pos.s if browser is NS
                        tempX = e.pageX;
                        tempY = e.pageY;
                    }
                    if (tempX < 0) {
                        tempX = 0;
                    }
                    if (tempY < 0) {
                        tempY = 0;
                    }
                    document.gui.MouseX.value = tempX;
                    document.gui.MouseY.value = tempY;
                    xaxis = tempX - 14;
                    yaxis = tempY - 10;
                    return true;
                }
            }



            function helperr(m) {

                helper = 0;
                oldmemmem = oldmem;

                canvas = document.getElementById("myCanvas");
                if (canvas.getContext) {

                    ctx = canvas.getContext("2d");                // Get the context.


                    ctx.strokeStyle = "black";
                    ctx.lineWidth = "2";
       // Use a bevel corner.

                    // alert(xaxis);
                    // alert(yaxis);
       // Use a round corner.             
                    ctx.beginPath();
                    ctx.lineJoin = "round";
                    ctx.moveTo(oldx[t], oldy[t]);
                    ctx.lineTo(xaxis, yaxis);

                    ctx.stroke();
                    //ctx.fillStyle=blue;

       // Annotate each corner.       


       // Stretch the image a bit.

                }
                // var col = new jsColor("blue");
                //Create jsPen object
                // var pen = new jsPen(col,2);
                //Draw a Line between 2 points


                //gr.beginPath();
                // gr.drawLine(pen,pt1,pt2);
                t += 1;
                //xaxis=xaxis+11;
                //yaxis=yaxis-6;
                oldx[t] = xaxis;
                oldy[t] = yaxis;

       //alert(m);
                //  alert(oldmem);
                switch (m) {
                    case '1':

                        if (oldmem == '15') {
                            correctwrd += 1;
                            flag = 1;

                            //alert(correctwrd);
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[1] = " ";
                        }
                        break;
                    case '2':

                        if (oldmem == '1') {


                            correctwrd += 1;
                            flag = 1;
                            seq[1] = 1;
                            seq[2] = 2;


                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[2] = " ";
                        }
                        break;
                    case '3':


                        if (oldmem == '2') {
                            correctwrd += 1;
                            flag = 1;
                            seq[3] = 3;


                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[3] = " ";
                        }
                        break;
                    case '4':
                        if (oldmem == '3') {
                            correctwrd += 1;
                            flag = 1;
                            seq[4] = 4;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[4] = " ";
                        }
                        break;
                    case '5':
                        if (oldmem == '4') {
                            correctwrd += 1;
                            flag = 1;
                            seq[5] = 5;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[5] = " ";
                        }
                        break;
                    case '6':
                        if (oldmem == '5') {
                            correctwrd += 1;
                            flag = 1;
                            seq[6] = 6;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[6] = " ";
                        }
                        break;
                    case '7':
                        if (oldmem == '6') {
                            correctwrd += 1;
                            flag = 1;
                            seq[7] = 7;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[7] = " ";
                        }
                        break;
                    case '8':
                        if (oldmem == '7') {
                            correctwrd += 1;
                            flag = 1;
                            seq[8] = 8;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[8] = " ";
                        }
                        break;
                    case '9':
                        if (oldmem == '8') {
                            correctwrd += 1;
                            flag = 1;
                            seq[9] = 9;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[9] = " ";
                        }
                        break;
                    case '10':
                        if (oldmem == '9') {
                            correctwrd += 1;
                            flag = 1;
                            seq[10] = 10;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[10] = " ";
                        }
                        break;
                    case '11':
                        if (oldmem == '10') {
                            correctwrd += 1;
                            flag = 1;
                            seq[11] = 11;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[11] = " ";
                        }
                        break;
                    case '12':
                        if (oldmem == '11') {
                            correctwrd += 1;
                            flag = 1;
                            seq[12] = 12;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[12] = " ";
                        }
                        break;
                    case '13':
                        if (oldmem == '12') {
                            correctwrd += 1;
                            flag = 1;
                            seq[13] = 13;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[13] = " ";
                        }
                        break;
                    case '14':
                        if (oldmem == '13') {
                            correctwrd += 1;
                            flag = 1;
                            seq[14] = 14;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[14] = " ";
                        }
                        break;
                    case '15':
                        val = count + 1;

                        if ((oldmem == '14') && (val == total)) {
                            correctwrd += 1;
                            flag = 1;
                            seq[15] = 15;
                            ctx.clearRect(0, 0, canvas.width, canvas.height);
                            document.body.background = "data/exercise_2/pisa2.jpg";



                        } else if (oldmem == '14') {
                            correctwrd += 1;
                            flag = 1;
                            seq[15] = 15;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[15] = " ";
                        }
                        // count=count-1;}
                        break;
                    default:
                    //wrongwrd+=1;
                    // flag=0;
                }
                oldmem = m;

                memo = 1;

                count += 1;
                document.gui.ett.value = correctwrd;
                document.gui.tvo.value = wrongwrd;
            }
            function sequence() {


                for (var j = 2; j <= val; j++) {
                    if ((seq[j] != " ")) {
                        seq[j - 1] = seq[j] - 1;
                        //seqnum[j]=seq[j];

                    }
                }

                for (var i = 0; i < seq.length; i++)
                {

                    ArrayVal = seq[i];
                    for (var jj = i + 1; jj < seq.length; jj++)
                    {
                        if ((seq[jj] == ArrayVal) && (ArrayVal >= 1))
                            seq[jj] = '-';

                    }


                }
                var charseq = new Array(" ", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z");
       //var sequem=seq.join(" ");

                //var sequencee=sequem.split('-') //split using blank space as delimiter

                var limit = (seq.length) - 1;
                for (var i = 0; i < limit; i++) {

                    if (seq[i + 1] != " ") {

                        //charseq[i] =sequencee[i] 
                        finalseq[num] = charseq[i + 1];
                    } else {
                        finalseq[num] = " ";
                    }







                    num = num + 1;


                }
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
            var helper = 0;


            function betterMo() {
                //document.gui.sec.value=rec;
                to = null;
                // memo=null;
                time = 0;
                count = 0;
                z = null;
                correctwrd = 0;
                wrongwrd = 0;
                flag = 0;
                ctx.clearRect(0, 0, canvas.width, canvas.height);
            }
            function undo() {


                if (helper == '0') {






                    ctx.lineWidth = "20";
                    ctx.strokeStyle = "white";
                    // Use a bevel corner.            
                    ctx.beginPath();
                    ctx.lineJoin = "round";
                    ctx.moveTo(oldx[t - 1], oldy[t - 1]);
                    ctx.lineTo(oldx[t], oldy[t]);

                    ctx.stroke();


                    oldx[t] = oldx[t - 1];
                    oldy[t] = oldy[t - 1];
                    oldmem = oldmemmem;


                }




                if (flag == 1) {

                    if (correctwrd >= 1) {
                        correctwrd = correctwrd - 1;
                        document.gui.ett.value = correctwrd;
                    } else {
                        document.gui.ett.value = correctwrd;
                    }
                } else {
                    if (wrongwrd >= 1) {
                        wrongwrd = wrongwrd - 1;
                        document.gui.tvo.value = wrongwrd;
                    } else {
                        document.gui.tvo.value = wrongwrd;
                    }
                    helper = 1;
                }

                count = count - 1;
            }
            function ask() {
                count = count - 1;
                sequence();

                time = document.gui.secchar.value;
                time = parseInt(time) + 60;
                wrongwrd = 14 - correctwrd;

                if (time >= 60) {
                    min = time / 60;
                    min = parseInt(min);
                    secd = time % 60;



                    alert(" Your score for this excercise ?\n\n Correct Sequences:   " + finalseq + "\n Wrong Attempts:    " + wrongwrd + "\n Time:            " + min + " minute  " + secd + " sec ");
                } else {
                    alert(" Your score for this excercise ?\n\n Correct Attempts:   " + correctwrd + "\n Wrong Attempts:    " + wrongwrd + "\n Time:                 " + time + " sec");
                }
            }
            function confirmation() {

                if (count >= 15) {
                    swdStop('timer');
                    ask();



                } else {
                    var answer = confirm("Do you want to skip remaining exercise");
                    if (answer) {
                        swdStop('timer');


                        document.body.background = "data/exercise_2/pisa2.jpg";
                        ask();

                    }
                }
                var select = Math.floor(Math.random() * 5);

                switch (select + 1) {


                    case 1 :
                        window.location.href('exercise2_1_13.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
                        break;
                    case 2 :
                        window.location.href('exercise2_1_14.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
                        break;
                    case 3 :
                        window.location.href('exercise2_1_15.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
                        break;
                    case 4:
                        window.location.href('exercise2_1_16.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
                        break;
                    case 5 :
                        window.location.href('exercise2_1_17.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
                        break;
                    default :
                        window.location.href('exercise2_1.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
                        break;


                    }
            }

        </script>
        <center><input name="Reset1" style="width: 89px; height: 33px" type="button" value="UNDO" onclick="undo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()"/></center>
        <input name="first" class="style12" style="width: 112px; height: 24px" type="text" align="left" /><input name= "hiddenBox"  class="style12" style="width: 112px; height: 24px " type="text" />
        <input name="secchar"  class="style12" style="width: 112px; height: 24px" type="text"  id="timer" onkeypress="return false;
        " value=" "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="style12" value="Reload Page" name ="button2">

        <input name="Button1" class="style12" style="width: 90px; height: 32px" type="button" value="CLEAR" onclick="betterMo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <input type="text" name="MouseX" value="0" size="4"  class="style12">
        <input type="text" name="MouseY" value="0" size="4" class="style12" >
        <input name="ett" style="width: 112px; height: 24px" type="text" align="left" class="style12" />
        <input name="tvo" style="width: 112px; height: 24px" type="text" align="left" class="style12"/>

    </form>
</body>
</html>