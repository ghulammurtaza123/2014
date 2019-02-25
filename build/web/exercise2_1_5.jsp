




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

    <body background=" "  onload="Coords()"  style="overflow:hidden;position:relative;background-repeat:no-repeat;background-position:264px 30px;" id="body1" >
        <script language="JavaScript">
            javascript:window.history.forward(1);
        </script>
    <canvas id="myCanvas" width="1360" height="560"  > </canvas>
        <%@ page language="java" %>
        <%
        //String old_Wrong[]=new String[];

            int tidd = 0;
            String old_Wrong[] = request.getParameterValues("wrong[]");

            System.out.println(old_Wrong[0]);
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

        <p> <img style="Z-INDEX: 108; POSITION: absolute; TOP: 168px; LEFT: 471px" id="9" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/I.jpg" width="39" height="35">
            <img style="Z-INDEX: 120; POSITION: absolute; TOP: 467px; LEFT: 568px" id="1" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/A.jpg" width="45" height="40">

            <img style="Z-INDEX: 101; POSITION: absolute; TOP:  367px; LEFT: 576px" id="2" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/B.jpg" width =45 height=40>
            <img style="Z-INDEX: 102; POSITION: absolute; TOP: 264px; LEFT: 583px" id="3" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/C.jpg" width="39" height="39">
            <img style="Z-INDEX: 103; POSITION: absolute; TOP: 213px; LEFT: 516px" id="4" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/D.jpg" width="36" height="35">
            <img style="Z-INDEX: 104; POSITION: absolute; TOP: 278px; LEFT: 520px" id="5" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/E.jpg" width="41" height="39" >
            <img style="Z-INDEX: 105; POSITION: absolute; TOP: 218px; LEFT: 453px" id="6" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/F.jpg" width="37" height="38">
            <img style="Z-INDEX: 106; POSITION: absolute; TOP: 300px; LEFT: 441px" id="7" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/G.jpg" width="35" height="35">
            <img style="Z-INDEX: 107; POSITION: absolute; TOP: 226px; LEFT: 372px" id="8" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/H.jpg" width="39" height="43">
            <img style="Z-INDEX: 109; POSITION: absolute; TOP: 173px; LEFT: 346px" id="10" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/J.jpg" width="31" height="35">
            <img style="Z-INDEX: 110; POSITION: absolute; TOP: 114px; LEFT: 361px" id="11" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/K.jpg" width="33" height="35">
            <img style="Z-INDEX: 111; POSITION: absolute; TOP: 88px; LEFT: 438px" id="12" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/L.jpg" width="33" height="41">
            <img style="Z-INDEX: 112; POSITION: absolute; TOP: 26px; LEFT: 510px" id="13" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/M.jpg" width="39" height="39">
            <img style="Z-INDEX: 115; POSITION: absolute; TOP: 59px; LEFT: 586px" id="14" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/N.jpg" width="35" height="41"> 
            <img style="Z-INDEX: 114; POSITION: absolute; TOP: 30px; LEFT: 679px" id="15" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/O.jpg" width="35" height="41">
            <img style="Z-INDEX: 119; POSITION: absolute; WIDTH: 41px; HEIGHT: 41px; TOP: 87px; LEFT: 752px" id="16" onclick =helperr(this.id) border=0 hspace=0 src="ALPHABETS 2/P.jpg" width=35 height=41 >
            <img style="Z-INDEX: 116; POSITION: absolute; TOP: 118px; LEFT: 854px" id="17" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/Q.jpg" width="35" height="41">
            <img style="Z-INDEX: 117; POSITION: absolute; TOP: 209px; LEFT: 859px" id="18" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/R.jpg" width="35" height="41">
            <img style="Z-INDEX: 118; POSITION: absolute; TOP: 139px; LEFT: 790px" id="19" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/S.jpg" width="35" height="41">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 159px; LEFT: 702px" id="20" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/T.jpg" width="35" height="41">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 199px; LEFT: 781px" id="21" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/U.jpg" width="35" height="41">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 280px; LEFT: 803px" id="22" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/V.jpg" width="35" height="41">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 230px; LEFT: 732px" id="23" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/W.jpg" width="35" height="41">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 233px; LEFT: 646px" id="24" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/X.jpg" width="35" height="41">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 322px; LEFT: 632px" id="25" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/Y.jpg" width="35" height="41">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 455px; LEFT: 630px" id="26" onclick="helperr(this.id)" border="0" hspace="0" src="ALPHABETS 2/Z.jpg" width="35" height="41">&nbsp;&nbsp;

        </p>


        <script type="text/javascript">
            //var pre;
            var total = 26;
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
            var ArrayVal = new Array();
            var tempY = 0;
            var t = 0;
            var canvas;
            var ctx;
            var val = 0;
            var temp = new Array();
            var num = 0;
            var finalseq = new Array();
            var numbr = 1;
            for (var k = 1; k <= 26; k++) {
                seq[k] = 0;
            }
            var flag = 0;
            var correctwrd = 0;
            var wrongwrd = 0;
       //<script language="JScript" type="text/jscript">


            /*var canvasDiv = document.getElementById('canvasDiv');
             canvas = document.createElement('canvas');
             canvas.setAttribute('width', canvasWidth);
             canvas.setAttribute('height', canvasHeight);
             canvas.setAttribute('id', 'canvas');
             canvasDiv.appendChild(canvas);
             if(typeof G_vmlCanvasManager != 'undefined') {
             canvas = G_vmlCanvasManager.initElement(canvas);
             }*/

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
                    // Clear the last image, if it exists.



                    ctx.strokeStyle = "black";
                    ctx.lineWidth = "2";
       // Use a bevel corner.


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


                switch (m) {
                    case '1':

                        if (oldmem == '26') {
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
                            correctwrd += 1;
                            flag = 1;
                            seq[24] = 24;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[24] = " ";
                        }
                        break;
                    case '25':
                        if (oldmem == '24') {
                            correctwrd += 1;
                            flag = 1;
                            seq[25] = 25;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[25] = " ";
                        }
                        break;
                    case '26':

                        val = count + 1;

                        if ((oldmem == '25') && (val == total)) {
                            correctwrd += 1;
                            flag = 1;
                            seq[26] = 26;
                            ctx.clearRect(0, 0, canvas.width, canvas.height);
                            document.body.background = "data/exercise_2/tree.jpg";





                            // canvas.clear = true; 

                        } else if (oldmem == '25') {
                            correctwrd += 1;
                            flag = 1;
                            seq[26] = 26;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[26] = " ";
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
            //  // document.write(//%=four%>);
            // count+=1;
       //if(z == document.gui.ett.value){
       //correctwrd+=1;
       //flag=1;
       //}
       //else{
            //   wrongwrd+=1;
            //}



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
                wrongwrd = 25 - correctwrd;

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

                if (count >= 26) {
                    swdStop('timer');
                    ask();



                } else {
                    var answer = confirm("Do you want to skip remaining exercise");
                    if (answer) {
                        swdStop('timer');


                        document.body.background = "data/exercise_2/tree.jpg";
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