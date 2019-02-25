<%--
    Document   : exercise2
    Created on : 2010-jan-08, 09:45:57
    Author     : Murtaza
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


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
    <%@ page language="java" %>
    <body bgcolor= "white" background="back1.jpg" onload="Coords()" id="canvas" style="overflow:hidden;position:relative;">
        <script language="JavaScript">
            javascript:window.history.forward(1);
        </script>
        <br><br>
        <big style="color: rgb(255, 71, 22);"><br
                style="font-weight: bold;">
            <br style="font-weight: bold;">
            <br style="font-weight: bold;">
            <br style="font-weight: bold;">
            <br style="font-weight: bold;">
            <br style="font-weight: bold;">
            <br style="font-weight: bold;">
            <br style="font-weight: bold;">
        </big>
        <form name ="gui" method ="post" action="exercise3.jsp">
            <ul
                style="font-weight: bold; color: rgb(255, 71, 22); font-size: 16px ">
                <li
                    style=" position:relative; margin-left: 443px; width: 1144px; " id="1" onclick="message0(this.id)" onclick="message0(this.id)" id="0" onmouseover=" this.bgColor = 'green'"><big>1</big></li>
                <li
                    style=" position:relative; margin-left: 1038px; width: 549px;" id="14" onclick="message0(this.id)" onclick="message0(this.id)" id="0" onmouseover=" this.bgColor = '#FAEBD7'"><big>14</big></li>
                <li
                    style="margin-left: 676px; width: 991px;" id="17" onclick="message0(this.id)" onclick="message0(this.id)" id="0" onmouseover=" this.bgColor = '#FAEBD7'"><big>17</big></li>
                <li
                    style="margin-left: 614px; width: 1003px;" id="18" onclick="message0(this.id)"><big>18</big></li>
                <li
                    style="margin-left: 615px; width: 1012px;" id="0" onclick="message0(this.id)"><big></big></li>
                <li
                    style="margin-left: 822px; width: 765px;" id="16" onclick="message0(this.id)"><big>16</big></li>
                <li
                    style="margin-left: 585px; width: 1002px;" id="3" onclick="message0(this.id)"><big>3</big></li>
                <li
                    style="margin-left: 493px; width: 1094px;" id="2" onclick="message0(this.id)"><big>2&nbsp;</big></li>
                <li
                    style="margin-left: 1018px; width: 569px;" id="15" onclick="message0(this.id)"><big>15</big></li>
                <li
                    style="margin-left: 639px; width: 948px;" id="5" onclick="message0(this.id)"><big>5</big></li>
            </ul>
            <big style="color: rgb(255, 71, 22);" ></big>
            <ul
                style="font-weight: bold; color: rgb(255, 71, 22);">
                <li
                    style="margin-left: 551px; width: 1036px;" id="4" onclick="message0(this.id)"><big>4</big></li>
                <li
                    style="margin-left: 858px; width: 729px;" id="10" onclick="message0(this.id)"><big>10&nbsp;</big></li>
                <li
                    style="margin-left: 952px; width: 635px;" id="12" onclick="message0(this.id)"><big>12&nbsp;
                        &nbsp;</big></li>
                <li
                    style="margin-left: 775px; width: 812px;" id="9" onclick="message0(this.id)"><big>9</big></li>
                <li
                    style="margin-left: 706px; width: 881px;" id="7" onclick="message0(this.id)"><big>7</big></li>
            </ul>
            <big style="color: rgb(255, 71, 22);"></big>
            <ul
                style="font-weight: bold; color: rgb(255, 71, 22);">
                <li
                    style="margin-left: 1078px; width: 509px;" id="11" onclick="message0(this.id)"><big>11</big></li>
                <li
                    style="margin-left: 1191px; width: 396px;" id="13" onclick="message0(this.id)"><big>13</big></li>
                <li
                    style="margin-left: 720px; width: 867px;" id="8" onclick="message0(this.id)"><big>8</big></li>
                <li
                    style="margin-left: 453px; width: 1114px;" id="6" onclick="message0(this.id)"><big>6&nbsp;&nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</big></li>
            </ul>
            X <input type="text" name="MouseX" value="0" size="4"><br>
            Y <input type="text" name="MouseY" value="0" size="4"><br>
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
                    var tempX = 0;
                    var tempY = 0;
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
                        xaxis = tempX - 33;
                        yaxis = tempY - 16;
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
                        oldx[t] = xaxis + 3;
                        oldy[t] = yaxis;

                        xaxis = xaxis + 33;
                        yaxis = yaxis + 16;
                        //alert(oldmem);
                        switch (m) {

                            case '2':


                                if ((yaxis >= 354 && yaxis <= 373) && (xaxis >= 545 && xaxis <= 554) && (oldmem == '1')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '3':


                                if ((yaxis >= 334 && yaxis <= 354) && (xaxis >= 637 && xaxis <= 645 && (oldmem == '2'))) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '4':
                                if ((yaxis >= 433 && yaxis <= 452) && (xaxis >= 603 && xaxis <= 613) && (oldmem == '3')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '5':
                                if ((yaxis >= 394 && yaxis <= 413) && (xaxis >= 691 && xaxis <= 700) && (oldmem == '4')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '6':
                                if ((yaxis >= 612 && yaxis <= 630) && (xaxis >= 505 && xaxis <= 514) && (oldmem == '5')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '7':
                                if ((yaxis >= 513 && yaxis <= 530) && (xaxis >= 758 && xaxis <= 767) && (oldmem == '6')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '8':
                                if ((yaxis >= 592 && yaxis <= 613) && (xaxis >= 772 && xaxis <= 782) && (oldmem == '7')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '9':
                                if ((yaxis >= 493 && yaxis <= 513) && (xaxis >= 828 && xaxis <= 838) && (oldmem == '8')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '10':
                                if ((yaxis >= 447 && yaxis <= 471) && (xaxis >= 910 && xaxis <= 929) && (oldmem == '9')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '11':
                                if ((yaxis >= 552 && yaxis <= 569) && (xaxis >= 1131 && xaxis <= 1148) && (oldmem == '10')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '12':
                                if ((yaxis >= 467 && yaxis <= 495) && (xaxis >= 1004 && xaxis <= 1024) && (oldmem == '11')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '13':
                                if ((yaxis >= 568 && yaxis <= 597) && (xaxis >= 1244 && xaxis <= 1261) && (oldmem == '12')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '14':
                                if ((yaxis >= 230 && yaxis <= 259) && (xaxis >= 1090 && xaxis <= 1110) && (oldmem == '13')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '15':
                                if ((yaxis >= 368 && yaxis <= 400) && (xaxis >= 1070 && xaxis <= 1090) && (oldmem == '14')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '16':
                                if ((yaxis >= 314 && yaxis <= 338) && (xaxis >= 875 && xaxis <= 893) && (oldmem == '15')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '17':
                                if ((yaxis >= 255 && yaxis <= 280) && (xaxis >= 728 && xaxis <= 747) && (oldmem == '16')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            case '18':
                                if ((yaxis >= 277 && yaxis <= 294) && (xaxis >= 667 && xaxis <= 686) && (oldmem == '17')) {
                                    correctwrd += 1;
                                    flag = 1;
                                } else {
                                    wrongwrd += 1;
                                }
                                break;
                            default:
                                wrongwrd += 1;
                        }
                        oldmem = m;
                    } else {
                        oldx[t] = xaxis + 3;
                        oldy[t] = yaxis;

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
                    if (time == 0) {
                        swdStart('timer', 1);
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
                    alert(oldx[t]);
                    alert(oldy[t]);
                    alert(oldx[t - 1]);
                    alert(oldy[t - 1]);
                    var gr = new jsGraphics(document.getElementById("canvas"));
                    //Create jsColor object
                    var col = new jsColor("white");
                    //Create jsPen object
                    var pen = new jsPen(col, 2);
                    //Draw a Line between 2 points
                    var pt1 = new jsPoint(oldx[t - 1], oldy[t - 1]);
                    var pt2 = new jsPoint(oldx[t], yaxis[t]);
                    gr.drawLine(pen, pt1, pt2);
                    if (flag == 1) {
                        if (correctwrd > 1) {
                            correctwrd = correctwrd - 1;
                            document.gui.first.value = correctwrd;
                        } else {

                            document.gui.first.value = correctwrd;
                        }
                    } else {
                        wrongwrd = wrongwrd - 1;
                        document.gui.hiddenBox.value = wrongwrd;
                    }
                }
                function confirmation() {
                    count = count - 1;
                    swdStop('timer');
                    time = document.gui.secchar.value;
                    alert(" Your score for this excercise ?\n\n Total Attempts:       " + count + "\n Correct Attempts:   " + correctwrd + "\n Wrong Attempts:    " + wrongwrd + "\n Time:                 " + time + " sec")
                    document.gui.button2.click();
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
                <input name="Button1" style="width: 90px; height: 32px" type="button" value="CLEAR" onclick="betterMo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="Reset1" style="width: 89px; height: 33px" type="button" value="UNDO" onclick="undo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()"/>
                <input name="ett" style="width: 112px; height: 24px" type="text" align="left" />
                <input name="tvo" style="width: 112px; height: 24px" type="text" align="left" />
            </center>
        </form>

    </body>

</html>