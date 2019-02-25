




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
    <body background=" " onload="Coords()"  style="overflow:hidden;position:absolute;background-repeat:no-repeat;" id="body1" >
    <canvas id="myCanvas" width="1300" height="500"  > </canvas>
    <script language="JavaScript">
        javascript:window.history.forward(1);
    </script>
    <form name ="gui" method ="post" action="select-exercise.jsp">

        <p><p><img style="Z-INDEX: 104; POSITION: absolute; TOP: 128px; LEFT: 459px" border="0" hspace="0" src="number/5.jpg" width="34" height="35" id="5" onclick="helperr(this.id)">
            <img style="Z-INDEX: 105; POSITION: absolute; WIDTH: 33px; HEIGHT: 34px; TOP: 236px; LEFT: 490px" border=0 hspace=0 src="number/6.jpg" width=35 height=36 id="6" onclick="helperr(this.id)">
            <img style="Z-INDEX: 101; POSITION:absolute; TOP: 106px; LEFT: 721px" border="0" hspace="0" src="number/2.jpg" width="38" height="39" id="2" onclick="helperr(this.id)"></p>

        <p><img style="Z-INDEX: 100; POSITION: absolute; TOP: 29px; LEFT: 799px" border=0 hspace=0 src="number/1.jpg" width=38 height=38 id="1" onclick="helperr(this.id)">
            <img style="Z-INDEX: 102; POSITION: absolute; WIDTH: 40px; HEIGHT: 37px; TOP: 188px; LEFT: 546px" border="0" hspace="0" src="number/3.jpg" width="41" height="40" id="3" onclick="helperr(this.id)"> 
            <img style="Z-INDEX: 103; POSITION: absolute; TOP: 122px; LEFT: 554px" border=0 hspace=0 src="number/4.jpg" width=33 height=42 id="4" onclick="helperr(this.id)">
            <img style="Z-INDEX: 106; POSITION: absolute; TOP: 195px; LEFT: 420px" border="0" hspace="0" src="number/7.jpg" width="39" height="39" id="7" onclick="helperr(this.id)">
            <img style="Z-INDEX: 107; POSITION: absolute; TOP: 208px; LEFT: 340px" border=0 hspace=0 src="number/8.jpg" width=38 height=36 id="8" onclick="helperr(this.id)">
            <img style="Z-INDEX: 108; POSITION: absolute; TOP: 330px; LEFT: 270px" border=0 hspace=0 src="number/9.jpg" width=37 height=38 id="9" onclick="helperr(this.id)"></p>

        <p><img style="Z-INDEX: 109; POSITION: absolute; TOP: 468px; LEFT: 336px" border=0 hspace=0 src="number/10.jpg" width=43 height=38 id="10" onclick="helperr(this.id)">
            <img style="Z-INDEX: 110; POSITION: absolute; TOP: 475px; LEFT: 463px" border=0 hspace=0 src="number/11.jpg" width=38 height=37 id="11" onclick="helperr(this.id)">
            <img style="Z-INDEX: 111; POSITION: absolute; TOP: 315px; LEFT: 529px" border=0 hspace=0 src="number/12.jpg" width=36 height=39 id="12" onclick="helperr(this.id)" >
            <img style="Z-INDEX: 112; POSITION: absolute; TOP: 360px; LEFT: 577px" border=0 hspace=0 src="number/13.jpg" width=35 height=38 id="13" onclick="helperr(this.id)" >
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 437px; LEFT: 645px" border=0 hspace=0 src="number/14.jpg" width=37 height=41 id="14" onclick="helperr(this.id)">
            <img style="Z-INDEX: 114; POSITION: absolute; TOP: 320px; LEFT: 636px" border=0 hspace=0 src="number/15.jpg" width=36 height=36 id="15" onclick="helperr(this.id)">
            <img style="Z-INDEX: 115; POSITION: absolute; TOP: 166px; LEFT: 734px" border=0 hspace=0 src="number/16.jpg" width=38 height=41 id="16" onclick="helperr(this.id)">
            <img style="Z-INDEX: 116; POSITION: absolute; TOP: 250px; LEFT: 798px" border=0 hspace=0 src="number/17.jpg" width=38 height=36 id="17" onclick="helperr(this.id)">
            <img style="Z-INDEX: 117; POSITION: absolute; TOP: 338px; LEFT: 733px" border=0 hspace=0 src="number/18.jpg" width=42 height=39 id="18" onclick="helperr(this.id)">
            <img style="Z-INDEX: 118; POSITION: absolute; TOP: 480px; LEFT: 793px" border=0 hspace=0 src="number/19.jpg" width=36 height=39 id="19"onclick="helperr(this.id)">
            <img style="Z-INDEX: 119; POSITION: absolute; TOP: 474px; LEFT: 930px" border=0 hspace=0 src="number/20.jpg" width=35 height=38 id="20" onclick="helperr(this.id)">
            <img style="Z-INDEX: 120; POSITION: absolute; TOP: 339px; LEFT: 988px" border=0 hspace=0 src="number/21.jpg" width=35 height=37 id="21" onclick="helperr(this.id)">
            <img style="Z-INDEX: 121; POSITION: absolute; TOP: 244px; LEFT: 893px" border=0 hspace=0 src="number/22.jpg" width=35 height=37 id="22" onclick="helperr(this.id)">
            <img style="Z-INDEX: 122; POSITION: absolute; TOP: 96px; LEFT: 805px" border=0 hspace=0 src="number/24.jpg" width=35 height=40 id="24" onclick="helperr(this.id)">
            <img style="Z-INDEX: 123; POSITION: absolute; TOP: 181px; LEFT: 800px" border=0 hspace=0 src="number/23.jpg" width=35 height=38 id="23" onclick="helperr(this.id)">&nbsp; </p>



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
            var seq = new Array();
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
            for (var k = 1; k <= 24; k++) {
                seq[k] = 0;
            }
            var flag = 0;
            var correctwrd = 0;
            var wrongwrd = 0;
           
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

                    ctx.beginPath();
                    ctx.lineJoin = "round";
                    ctx.moveTo(oldx[t], oldy[t]);
                    ctx.lineTo(xaxis, yaxis);

                    ctx.stroke();

                    t += 1;

                    oldx[t] = xaxis;
                    oldy[t] = yaxis;


                    switch (m) {
                        case '1':

                            if (oldmem == '24') {
                                correctwrd += 1;
                                flag = 1;


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
                            if (oldmem == '14') {
                                correctwrd += 1;
                                flag = 1;
                                seq[15] = 15;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[15] = " ";
                            }
                            break;
                        case '16':
                            if (oldmem == '15') {
                                correctwrd += 1;
                                flag = 1;
                                seq[16] = 16;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[16] = " ";
                            }
                            break;
                        case '17':
                            if (oldmem == '16') {
                                correctwrd += 1;
                                flag = 1;
                                seq[17] = 17;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[17] = " ";
                            }
                            break;
                        case '18':
                            if (oldmem == '17') {
                                correctwrd += 1;
                                flag = 1;
                                seq[18] = 18;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[18] = " ";
                            }
                            break;
                        case '19':
                            if (oldmem == '18') {
                                correctwrd += 1;
                                flag = 1;
                                seq[19] = 19;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[19] = " ";
                            }
                            break;
                        case '20':
                            if (oldmem == '19') {
                                correctwrd += 1;
                                flag = 1;
                                seq[20] = 20;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[20] = " ";
                            }
                            break;
                        case '21':
                            if (oldmem == '20') {
                                correctwrd += 1;
                                flag = 1;
                                seq[21] = 21;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[21] = " ";
                            }
                            break;
                        case '22':
                            if (oldmem == '21') {
                                correctwrd += 1;
                                flag = 1;
                                seq[22] = 22;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[22] = " ";
                            }
                            break;
                        case '23':

                            if (oldmem == '22') {
                                correctwrd += 1;
                                flag = 1;
                                seq[23] = 23;
                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[23] = " ";
                            }
                            break;
                        case '24':



                            if (oldmem == '23') {

                                ctx.clearRect(0, 0, canvas.width, canvas.height);
                                document.body.background = "cycle2.jpg";


                                correctwrd += 1;
                                flag = 1;
                                seq[24] = "24 ";


                                // canvas.clear = true; 

                            } else {
                                wrongwrd += 1;
                                flag = 0;
                                seq[24] = 0;
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
                    var val = (seq.length) - 1;

                    for (var j = 2; j <= val; j++) {
                        if ((seq[j] != " ")) {
                            seq[j - 1] = seq[j] - 1;
                            //seqnum[j]=seq[j];

                        }
                    }

                    for (var i = 0; i < seq.length; i++)
                    {

                        var ArrayVal = seq[i];
                        for (var jj = i + 1; jj < seq.length; jj++)
                        {
                            if ((seq[jj] == ArrayVal) && (ArrayVal >= 1))
                                seq[jj] = '-';
                        }


                    }

                    var sequem = seq.join(" ");
                    var sequencee = sequem.split('-') //split using blank space as delimiter
                    for (var i = 0; i < sequencee.length; i++) {
                        if (sequencee[i] != " ") {
                            finalseq[num] = sequencee[i];








                            num = num + 1;
                        }


                    }
                }


                var swdCycleTime = 50;

                var dObj, swdnow, swdcycle;
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

                    //count=count+1;
                }
                function ask() {
                    count = count - 1;
                    sequence();

                    time = document.gui.secchar.value;
                    time = parseInt(time) + 60;
                    wrongwrd = 23 - correctwrd;

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

                    if (count >= 24) {
                        swdStop('timer');
                        ask();


                        document.gui.button2.click();
                    } else {
                        var answer = confirm("Do you want to skip remaining exercise");
                        if (answer) {
                            swdStop('timer');


                            document.body.background = "cycle2.jpg";
                            ask();
                            document.gui.button2.click();
                        }
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