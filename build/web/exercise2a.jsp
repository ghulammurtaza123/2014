<%--
    Document   : exercise2
    Created on : 2010-Mar-08, 09:45:57
    Author     : Murtaza
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.*"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import="java.sql.*"%>
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


    <%@ page language="java" %>
    <%
    //String old_Wrong[]=new String[];
        int tidd = 0;
        String old_Wrong[] = request.getParameterValues("wrong[]");

    //System.out.println(old_Wrong[0]);
        StringTokenizer st = new StringTokenizer(old_Wrong[0], ",");

        String correct_wrd = st.nextToken();
        String wrong_wrd = st.nextToken();
        String old_time = st.nextToken();
        String name = (String) session.getAttribute("named");
    //System.out.println(name);
        tidd = Integer.parseInt(old_time);

    // Remember to change the next line with your own environment 
        try {
            String url = "jdbc:derby://localhost:1527/record";
            String user = "re";
            String password = "re";

            Connection con = DriverManager.getConnection(url, user, password);
            String sql2 = "SELECT * FROM result ";

            PreparedStatement pStmt2 = con.prepareStatement(sql2, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

            ResultSet rs2 = pStmt2.executeQuery();
            rs2.moveToInsertRow();
            // updating values in insert row
            rs2.updateString("time", old_time);
            rs2.updateString("correct", correct_wrd);
            rs2.updateString("wrong", wrong_wrd);
            rs2.updateString("exercise", "Exercise#2");
            rs2.updateString("name", name);
            // inserting row in resultset & into database
            rs2.insertRow();

            // row_No = tidd =Integer.parseInt(old_time); rs.getRow();
            System.out.println("Row has been updated");
            con.close();
        } catch (Exception sqlEx) {
            System.out.println(sqlEx);
        }

    %>
    <body bgcolor= "white" onload="Coords()" id="canvas" style="overflow:hidden;position:relative;">
        <BR><br><br><br>
        <big style="color: rgb(255, 71, 22);">
        </big>
        <script language="JavaScript">
            javascript:window.history.forward(1);
        </script>
        <form name ="gui" method ="post" action="exercise2b.jsp">
            <ul
                style="font-weight: bold; color: rgb(255, 71, 22); font-size: 16px ">
                <li
                    style=" position:relative; margin-left: 203px; width: 1144px; " id="1" onclick="message0(this.id)" ><big>A</big></li>
                <li
                    style=" position:relative; margin-left: 798px; width: 549px;" id="14" onclick="message0(this.id)"><big>N</big></li>
                <li
                    style="margin-left: 596px; width: 991px;" id="17" onclick="message0(this.id)"><big>Q</big></li>
                <li
                    style="margin-left: 514px; width: 1003px;" id="18" onclick="message0(this.id)"><big>R</big></li>
                <li
                    style="margin-left: 474px; width: 1003px;" id="20" onclick="message0(this.id)"><big>T</big></li>
                <li
                    style="margin-left: 475px; width: 1012px;"  class="style12"></li><big><font size="102" color="black" style="margin-left: 475px;" id="0" onclick="message0(this.id)">.</font></big>
                <li
                    style="margin-left: 248px; width: 765px;" id="3" onclick="message0(this.id)"><big>C</big></li>
                <li
                    style="margin-left: 702px; width: 765px;" id="16" onclick="message0(this.id)"><big>P</big></li>
                <li
                    style="margin-left: 534px; width: 1003px;" id="19" onclick="message0(this.id)"><big>S</big></li>


                <li
                    style="margin-left: 213px; width: 894px;" id="2" onclick="message0(this.id)"><big>B&nbsp;</big></li>
                <li
                    style="margin-left: 778px; width: 569px;" id="15" onclick="message0(this.id)"><big>O</big></li>
                <li
                    style="margin-left: 369px; width: 948px;" id="5" onclick="message0(this.id)"><big>E</big></li>
            </ul>
            <big style="color: rgb(255, 71, 22);" ></big>
            <ul
                style="font-weight: bold; color: rgb(255, 71, 22);">
                <li
                    style="margin-left: 311px; width: 1036px;" id="4" onclick="message0(this.id)"><big>D</big></li>
                <li
                    style="margin-left: 628px; width: 729px;" id="10" onclick="message0(this.id)"><big>J&nbsp;</big></li>
                <li
                    style="margin-left: 802px; width: 635px;" id="12" onclick="message0(this.id)"><big>L&nbsp;
                        &nbsp;</big></li>
                <li
                    style="margin-left: 485px; width: 812px;" id="8" onclick="message0(this.id)"><big>H</big></li>
                <li
                    style="margin-left: 406px; width: 881px;" id="6" onclick="message0(this.id)"><big>F</big></li>
            </ul>
            <big style="color: rgb(255, 71, 22);"></big>
            <ul
                style="font-weight: bold; color: rgb(255, 71, 22);">
                <li
                    style="margin-left: 838px; width: 509px;" id="11" onclick="message0(this.id)"><big>K</big></li>
                <li
                    style="margin-left: 951px; width: 396px;" id="13" onclick="message0(this.id)"><big>M</big></li>
                <li
                    style="margin-left: 480px; width: 867px;" id="9" onclick="message0(this.id)"><big>I</big></li>
                <li
                    style="margin-left: 273px; width: 1114px;" id="7" onclick="message0(this.id)"><big>G&nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</big></li>
            </ul>

            <script type="text/javascript">
                //var pre;
                //var txt=0;
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
                var tempY = 0;
                var t = 0;
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
                        xaxis = tempX - 24;
                        yaxis = tempY - 11;
                        return true;
                    }
                }
                // xaxis=document.gui.MouseX.value;
           //yaxis=document.gui.MouseY.value;
                function message0(m) {
                    // if(to == null){
                    //var x = document.getElementById("fir");
           //var y= x.rows[0];
           //var p=y.cells[0];
           // z=p.innerText;
           //txt=e.rowIndex;
                    //to=e.cellIndex;
                    if (memo != z) {
                        helper = 0;
                        oldmemmem = oldmem;
                        var gr = new jsGraphics(document.getElementById("canvas"));
                        //Create jsColor object
                        var col = new jsColor("blue");
                        //Create jsPen object
                        var pen = new jsPen(col, 2);
                        //Draw a Line between 2 points

                        var pt1 = new jsPoint(oldx[t], oldy[t]);
                        var pt2 = new jsPoint(xaxis, yaxis);
                        gr.drawLine(pen, pt1, pt2);
                        t += 1;
                        //xaxis=xaxis+11;
                        //yaxis=yaxis-6;
                        oldx[t] = xaxis;
                        oldy[t] = yaxis;


                        //alert(oldmem);
                        switch (m) {
                            case '0':

                                if ((tempY >= 258 && tempY <= 278) && (tempX >= 520 && tempX <= 540) && (oldmem == '20')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '2':

                                if ((tempY >= 344 && tempY <= 375) && (tempX >= 257 && tempX <= 277) && (oldmem == '1')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '3':


                                if ((tempY >= 280 && tempY <= 305) && (tempX >= 290 && tempX <= 310) && (oldmem == '2')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '4':
                                if ((tempY >= 428 && tempY <= 455) && (tempX >= 355 && tempX <= 375) && (oldmem == '3')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '5':
                                if ((tempY >= 390 && tempY <= 415) && (tempX >= 415 && tempX <= 435) && (oldmem == '4')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '6':
                                if ((tempY >= 513 && tempY <= 543) && (tempX >= 452 && tempX <= 472) && (oldmem == '5')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '7':
                                if ((tempY >= 616 && tempY <= 646) && (tempX >= 317 && tempX <= 337) && (oldmem == '6')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '8':
                                if ((tempY >= 495 && tempY <= 520) && (tempX >= 530 && tempX <= 551) && (oldmem == '7')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '9':
                                if ((tempY >= 600 && tempY <= 625) && (tempX >= 522 && tempX <= 542) && (oldmem == '8')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '10':
                                if ((tempY >= 453 && tempY <= 473) && (tempX >= 672 && tempX <= 692) && (oldmem == '9')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '11':
                                if ((tempY >= 554 && tempY <= 579) && (tempX >= 885 && tempX <= 905) && (oldmem == '10')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '12':
                                if ((tempY >= 472 && tempY <= 499) && (tempX >= 845 && tempX <= 865) && (oldmem == '11')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '13':
                                if ((tempY >= 580 && tempY <= 602) && (tempX >= 998 && tempX <= 1018) && (oldmem == '12')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '14':
                                if ((tempY >= 120 && tempY <= 140) && (tempX >= 844 && tempX <= 864) && (oldmem == '13')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '15':
                                if ((tempY >= 371 && tempY <= 391) && (tempX >= 824 && tempX <= 844) && (oldmem == '14')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '16':
                                if ((tempY >= 306 && tempY <= 326) && (tempX >= 745 && tempX <= 765) && (oldmem == '15')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '17':
                                if ((tempY >= 144 && tempY <= 164) && (tempX >= 640 && tempX <= 660) && (oldmem == '16')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '18':
                                if ((tempY >= 166 && tempY <= 186) && (tempX >= 558 && tempX <= 579) && (oldmem == '17')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '19':
                                if ((tempY >= 328 && tempY <= 349) && (tempX >= 578 && tempX <= 598) && (oldmem == '18')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            case '20':
                                if ((tempY >= 186 && tempY <= 208) && (tempX >= 518 && tempX <= 538) && (oldmem == '19')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                    flag = 0;
                                }
                                break;
                            default:
                                wrongwrd += 1;
                                flag = 0;

                        }
                        oldmem = m;
                    } else {
                        oldx[t] = xaxis;
                        oldy[t] = tempY;

                        oldmem = m;
                        memo = 1;
                    }
                    count += 1;
                    document.gui.ett.value = correctwrd;
                    document.gui.tvo.value = wrongwrd;
                    //  // document.write(//%=four%>);
                    // count+=1;
           //if(z == document.gui.ett.value){
           //correctwrd+=1;
           //flag=1;
           //}
           //else{
                    //   wrongwrd+=1;
                    //}
                    //document.gui.sec.value= m;
           //document.getElementById(m).style.backgroundColor="pink";
           //}
           //else{
                    // document.getElementById(m).style.backgroundColor="pink";
           //}
           //alert(xaxis);
           //alert(yaxis);
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
                    var clock = 0;
                    swdObj.d = clock;
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
                    memo = null;
                    time = 0;
                    count = 0;
                    z = null;
                    correctwrd = 0;
                    wrongwrd = 0;
                    flag = 0;
                    for (var i = 1; i <= 12; i++) {
                        document.getElementById(i).style.backgroundColor = "white";
                    }
                }
                function undo() {
          //helper=document.gui.sec.value;   // document.gui.thechar.value= helper;
          //document.getElementById(helper).style.backgroundColor="white";
                    //alert(oldx[t]);
                    // alert(oldy[t]);
                    //  alert(oldx[t-1]);
                    // alert(oldy[t-1]);
                    if (helper == 0) {
                        var gr = new jsGraphics(document.getElementById("canvas"));
                        //Create jsColor object
                        var col = new jsColor("white");
                        //Create jsPen object
                        var pen = new jsPen(col, 2);
                        //Draw a Line between 2 points
                        var pt1 = new jsPoint(oldx[t - 1], oldy[t - 1]);
                        var pt2 = new jsPoint(oldx[t], oldy[t]);
                        gr.drawLine(pen, pt1, pt2);

                        oldx[t] = oldx[t - 1];
                        oldy[t] = oldy[t - 1];
                        oldmem = oldmemmem;
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
                    }
          //count=count+1;
                }
                function confirmation() {
                    count - count - 1;
                    if (count >= 18) {
                        swdStop('timer');
                        time = document.gui.secchar.value;
                        correctwrd = correctwrd + 1;
                        wrongwrd = wrongwrd - 1;

                        alert(" Your score for this excercise ?\n\n Total Attempts:       " + count + "\n Correct Attempts:   " + correctwrd + "\n Wrong Attempts:     " + wrongwrd + "\n Time:                        " + time + "  sec")
                        window.location.href('exercise2b.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
                        //document.gui.button2.click();
                    } else {
                        alert(" Please! Complete the Path ?");
                    }

                }

                function whiter() {
                    for (var y = 1; y <= 12; y++) {
                        document.getElementById(y).style.backgroundColor = "white";
                    }
                }
            </script>
            <input name="first" class="style12" style="width: 112px; height: 24px" type="text" align="left" /><input name= "hiddenBox"  class="style12" style="width: 112px; height: 24px " type="text" />
            <input name="secchar"  class="style12" style="width: 112px; height: 24px" type="text"  id="timer" onkeypress="return false;
        " value=" "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="style12" value="Reload Page" name ="button2">
            <center>
                <input name="Button1" class="style12" style="width: 90px; height: 32px" type="button" value="CLEAR" onclick="betterMo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="Reset1" style="width: 89px; height: 33px" type="button" value="UNDO" onclick="undo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()"/></center>
            <input name="ett" style="width: 112px; height: 24px" type="text" align="left" class="style12"/>
            <input name="tvo" style="width: 112px; height: 24px" type="text" align="left" class="style12"/>
            <input type="text" name="MouseX" value="0" size="4"  class="style12"><br>
            <input type="text" name="MouseY" value="0" size="4" class="style12"><br>

        </form>
    </body>
</html>