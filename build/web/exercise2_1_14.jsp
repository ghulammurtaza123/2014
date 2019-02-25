




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

    <body background=" " onload="Coords()"  style="overflow:hidden;position:relative;background-repeat:no-repeat;background-position:345px 10px;" id="body1" >
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
               System.out.println("id" + name);

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
                rs2.updateString("time", old_time);
                rs2.updateString("correct", correct_wrd);
                rs2.updateString("wrong", wrong_wrd);
                rs2.updateString("exercise", "Exercise#2a");
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

        <p><img style="Z-INDEX: 104; POSITION: absolute; TOP: 186px; LEFT: 797px" border="0" hspace="0" src="number/5.jpg" width="34" height="35" id="9" onclick="helperr(this.id)">
            <img style="Z-INDEX: 149; POSITION: absolute; WIDTH: 27px; HEIGHT: 29px; TOP: 74px; LEFT: 558px" border=0 hspace=0 src="number/23.jpg" width=35 height=38 id="45" onclick="helperr(this.id)">
            <img style="Z-INDEX: 148; POSITION: absolute; WIDTH: 34px; HEIGHT: 36px; TOP: 17px; LEFT: 556px" border=0 hspace=0 src="ALPHABETS/V.jpg" width=39 height=41 id="44" onclick="helperr(this.id)" >
            <img style="Z-INDEX: 105; POSITION: absolute; WIDTH: 33px; HEIGHT: 34px; TOP: 347px; LEFT: 827px" border=0 hspace=0 src="number/6.jpg" width=35 height=36 id="11" onclick="helperr(this.id)">
            <img style="Z-INDEX: 101; POSITION: absolute; WIDTH: 29px; HEIGHT: 31px; TOP: 150px; LEFT: 735px" border="0" hspace="0" src="number/2.jpg" width="38" height="39"  id="3" onclick="helperr(this.id)">
            <img style="Z-INDEX: 146; POSITION: absolute; TOP: 127px; LEFT: 530px" border=0 hspace=0 src="ALPHABETS/P.jpg" width=35 height=38 id="32" onclick="helperr(this.id)">

        <p><img style="Z-INDEX: 129; POSITION: absolute; WIDTH: 44px; HEIGHT: 35px; TOP: 136px; LEFT: 789px" border="0" hspace="0" src="ALPHABETS/A.jpg" width="45" height="40"  id="2" onclick="helperr(this.id)">
            <img style="Z-INDEX: 128; POSITION: absolute; WIDTH: 38px; HEIGHT: 35px; TOP: 204px; LEFT: 724px" border="0" hspace="0" src="ALPHABETS/B.jpg" width="41" height="43"  id="4" onclick="helperr(this.id)">
            <img style="Z-INDEX: 127; POSITION: absolute; TOP: 307px; LEFT: 644px" border=0 hspace=0 src="ALPHABETS/C.jpg" width=39 height=39 id="6" onclick="helperr(this.id)">
            <img style="Z-INDEX: 126; POSITION: absolute; TOP: 237px; LEFT: 785px" border="0" hspace="0" src="ALPHABETS/D.jpg" width="36" height="35" id="8" onclick="helperr(this.id)">
            <img style="Z-INDEX: 125; POSITION: absolute; TOP: 290px; LEFT: 805px" border="0" hspace="0" src="ALPHABETS/E.jpg" width="41" height="39" id="10" onclick="helperr(this.id)"></p>
        <p><img style="Z-INDEX: 100; POSITION: absolute; WIDTH: 32px; HEIGHT: 33px; TOP: 77px; LEFT: 772px" border=0 hspace=0 src="number/1.jpg" width=38 height=38 id="1" onclick="helperr(this.id)">
            <img style="Z-INDEX: 102; POSITION: absolute; WIDTH: 38px; HEIGHT: 33px; TOP: 257px; LEFT: 686px" border="0" hspace="0" src="number/3.jpg" width="41" height="40" id="5" onclick="helperr(this.id)">
            <img style="Z-INDEX: 103; POSITION: absolute; TOP: 295px; LEFT: 737px" border=0 hspace=0 src="number/4.jpg" width=33 height=42 id="7" onclick="helperr(this.id)">
            <img style="Z-INDEX: 106; POSITION: absolute; TOP: 426px; LEFT: 808px" border="0" hspace="0" src="number/7.jpg" width="39" height="39" id="13" onclick="helperr(this.id)">
            <img style="Z-INDEX: 107; POSITION: absolute; TOP: 524px; LEFT: 808px" border=0 hspace=0 src="number/8.jpg" width=38 height=36 id="15" onclick="helperr(this.id)">
            <img style="Z-INDEX: 108; POSITION: absolute; TOP: 452px; LEFT: 685px" border=0 hspace=0 src="number/9.jpg" width=37 height=38 id="17" onclick="helperr(this.id)"></p>
        <p><img style="Z-INDEX: 130; POSITION: absolute; TOP: 374px; LEFT: 756px" border="0" hspace="0" src="ALPHABETS/F.jpg" width="37" height="38" id="12" onclick="helperr(this.id)">
            <img style="Z-INDEX: 132; POSITION: absolute; TOP: 533px; LEFT: 715px" border="0" hspace="0" src="ALPHABETS/I.jpg" width="39" height="35" id="18" onclick="helperr(this.id)">
            <img style="Z-INDEX: 133; POSITION: absolute; TOP: 477px; LEFT: 631px" border=0 hspace=0 src="ALPHABETS/J.jpg" width=31 height=35 id="20" onclick="helperr(this.id)">
            <img style="Z-INDEX: 134; POSITION: absolute; TOP: 479px; LEFT: 573px" border="0" hspace="0" src="ALPHABETS/K.jpg" width="33" height="35" id="22" onclick="helperr(this.id)" ></p>
        <p><img style="Z-INDEX: 109; POSITION: absolute; TOP: 537px; LEFT: 640px" border=0 hspace=0 src="number/10.jpg" width=43 height=38 id="19" onclick="helperr(this.id)">
            <img style="Z-INDEX: 110; POSITION: absolute; TOP: 536px; LEFT: 568px" border=0 hspace=0 src="number/11.jpg" width=38 height=37 id="21" onclick="helperr(this.id)">
            <img style="Z-INDEX: 111; POSITION: absolute; TOP: 446px; LEFT: 521px" border=0 hspace=0 src="number/12.jpg" width=36 height=39 id="23" onclick="helperr(this.id)">
            <img style="Z-INDEX: 112; POSITION: absolute; TOP: 487px; LEFT: 383px" border=0 hspace=0 src="number/13.jpg" width=35 height=38 id="25" onclick="helperr(this.id)">
            <img style="Z-INDEX: 113; POSITION: absolute; TOP: 465px; LEFT: 750px" border=0 hspace=0 src="ALPHABETS/H.jpg" width=39 height=43 id="16" onclick="helperr(this.id)"> </p>
        <p><img style="Z-INDEX: 131; POSITION: absolute; TOP: 497px; LEFT: 881px" border="0" hspace="0" src="ALPHABETS/G.jpg" width="35" height="35" id="14" onclick="helperr(this.id)" >
            <img style="Z-INDEX: 114; POSITION: absolute; TOP: 307px; LEFT: 423px" border=0 hspace=0 src="number/15.jpg" width=36 height=36 id="29" onclick="helperr(this.id)">
            <img style="Z-INDEX: 115; POSITION: absolute; TOP: 174px; LEFT: 471px" border=0 hspace=0 src="number/16.jpg" width=38 height=41 id="31" onclick="helperr(this.id)">
            <img style="Z-INDEX: 116; POSITION: absolute; TOP: 188px; LEFT: 541px" border=0 hspace=0 src="number/17.jpg" width=38 height=36 id="33" onclick="helperr(this.id)">
            <img style="Z-INDEX: 117; POSITION: absolute; TOP: 263px; LEFT: 581px" border=0 hspace=0 src="number/18.jpg" width=42 height=39 id="35" onclick="helperr(this.id)">
            <img style="Z-INDEX: 118; POSITION: absolute; WIDTH: 31px; HEIGHT: 35px; TOP: 205px; LEFT: 671px" border=0 hspace=0 src="number/19.jpg" width=36 height=39 id="37" onclick="helperr(this.id)" >
            <img style="Z-INDEX: 119; POSITION: absolute; WIDTH: 31px; HEIGHT: 32px; TOP: 106px; LEFT: 693px" border=0 hspace=0 src="number/20.jpg" width=35 height=38 id="39" onclick="helperr(this.id)">
            <img style="Z-INDEX: 120; POSITION: absolute; WIDTH: 25px; HEIGHT: 31px; TOP: 52px; LEFT: 674px" border=0 hspace=0 src="number/21.jpg" width=39 height=39 id="41" onclick="helperr(this.id)">
            <img style="Z-INDEX: 121; POSITION: absolute; TOP: 38px; LEFT: 622px" border=0 hspace=0 src="number/22.jpg" width=35 height=37 id="43" onclick="helperr(this.id)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img style="Z-INDEX: 145; POSITION: absolute; TOP: 345px; LEFT: 475px" border="0" hspace="0" src="number/14.jpg" width="37" height="37" id="27" onclick="helperr(this.id)" >&nbsp;&nbsp;
            <img style="Z-INDEX: 135; POSITION: absolute; TOP: 497px; LEFT: 453px" border=0 hspace=0 src="ALPHABETS/L.jpg" width=33 height=41 id="24" onclick="helperr(this.id)">&nbsp;
            <img style="Z-INDEX: 136; POSITION: absolute; TOP: 433px; LEFT: 446px" border="0" hspace="0" src="ALPHABETS/M.jpg" width="39" height="39" id="26" onclick="helperr(this.id)">&nbsp;&nbsp;&nbsp;&nbsp;
            <img style="Z-INDEX: 137; POSITION: absolute; WIDTH: 35px; HEIGHT: 43px; TOP: 372px; LEFT: 387px" border=0 hspace=0 src="ALPHABETS/N.jpg" width=35 height=41 id="28" onclick="helperr(this.id)">
            <img style="Z-INDEX: 138; POSITION: absolute; TOP: 254px; LEFT: 457px" border="0" hspace="0" src="ALPHABETS/O.jpg" width="35" height="36" id="30" onclick="helperr(this.id)">
            <img style="Z-INDEX: 139; POSITION: absolute; WIDTH: 28px; HEIGHT: 28px; TOP: 16px; LEFT: 716px" border="0" hspace="0" src="ALPHABETS/U.jpg" width="37" height="39" id="42" onclick="helperr(this.id)">
            <img style="Z-INDEX: 140; POSITION: absolute; TOP: 258px; LEFT: 519px" border="0" hspace="0" src="ALPHABETS/Q.jpg" width="41" height="43" id="34" onclick="helperr(this.id)">
            <img style="Z-INDEX: 141; POSITION: absolute; TOP: 201px; LEFT: 612px" border="0" hspace="0" src="ALPHABETS/R.jpg" width="41" height="41" id="36" onclick="helperr(this.id)">
            <img style="Z-INDEX: 142; POSITION: absolute; WIDTH: 29px; HEIGHT: 32px; TOP: 158px; LEFT: 676px" border="0" hspace="0" src="ALPHABETS/S.jpg" width="36" height="38" id="38" onclick="helperr(this.id)">
            <img style="Z-INDEX: 143; POSITION: absolute; WIDTH: 34px; HEIGHT: 39px; TOP: 99px; LEFT: 639px" border="0" hspace="0" src="ALPHABETS/T.jpg" width="37" height="45" id="40" onclick="helperr(this.id)">
            <img style="Z-INDEX: 144; POSITION: absolute; WIDTH: 33px; HEIGHT: 32px; TOP: 125px; LEFT: 593px" border="0" hspace="0" src="ALPHABETS/W.jpg" width="40" height="43" id="46" onclick="helperr(this.id)">&nbsp;&nbsp;</p>


        <script type="text/javascript">
            var total = 46;
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
            for (var k = 1; k <= 46; k++) {
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
            /* function helperr(){
      
      
             if((tempY>=49 && tempY<=65)&&(tempX>=795 && tempX<=815)){
             message0(1);
             }
             else if((tempY>=150 && tempY<=168)&&(tempX>=755 && tempX<=775)){
             message0(2);
             }
             else if((tempY>=215 && tempY<=235)&&(tempX>=540 && tempX<=560)){
             message0(3);
             }
             else if((tempY>=130&& tempY<=148)&&(tempX>=548 && tempX<=568) ){
             message0(4);
             }
             else if((tempY>=135 && tempY<=155)&&(tempX>=460&& tempX<=480)){
             message0(5);
             }
             else if((tempY>=240 && tempY<=260)&&(tempX>=515 && tempX<=535)){
             message0(6);
             }
             else if((tempY>=219 && tempY<=239)&&(tempX>=445 && tempX<=465) ){
             message0(7);
             }
             else  if((tempY>=210 && tempY<=230)&&(tempX>=355 && tempX<=375)){
             message0(8);
             }
             else  if((tempY>=340 && tempY<=360)&&(tempX>=284 && tempX<=304)){
             message0(9);
             }
             else if((tempY>=475 && tempY<=495)&&(tempX>=340 && tempX<=360)){
             message0(10);
             }else if((tempY>=485 && tempY<=505)&&(tempX>=470 && tempX<=490)){
             message0(11);
             }
             else if((tempY>=345 && tempY<=365)&&(tempX>=534 && tempX<=554)){
             message0(12);
             }
             else  if((tempY>=362 && tempY<=382)&&(tempX>=588 && tempX<=608)){
             message0(13);
             }
             else if((tempY>=445&& tempY<=465)&&(tempX>=644 && tempX<=664)){
             message0(14);
             }
             else  if((tempY>=335 && tempY<=355)&&(tempX>=630 && tempX<=650)){
             message0(15);
             }
             else  if((tempY>=185 && tempY<=205)&&(tempX>=760 && tempX<=780)){
             message0(16);
             }
             else if((tempY>=258 && tempY<=278)&&(tempX>=805 && tempX<=825)){
             message0(17);
             }
             else if((tempY>=345 && tempY<=365)&&(tempX>=730 && tempX<=750)){
             message0(18);
             }
             else if((tempY>=488 && tempY<=508)&&(tempX>=785 && tempX<=805)){
             message0(19);
             }
             else if((tempY>=490 && tempY<=510)&&(tempX>=924 && tempX<=944)){
             message0(20);
             }else if((tempY>=352 && tempY<=372)&&(tempX>=985 && tempX<=1005)){
             message0(21);
             }
             else  if((tempY>=258 && tempY<=278)&&(tempX>=894 && tempX<=914)){
             message0(22);
             }
             else if((tempY>=215 && tempY<=235)&&(tempX>=791 && tempX<=811)){
             message0(23);
             }
             else if((tempY>=120 && tempY<=140)&&(tempX>=755 && tempX<=775)){
             message0(24);
             }
             else{
             message0(27);
             }
      
      
      
      
             } */
            // xaxis=document.gui.MouseX.value;
       //yaxis=document.gui.MouseY.value;
            /*function draw()
             {
      
             var canvas = document.getElementById("MyCanvas");
             if (canvas.getContext) {
             var ctx = canvas.getContext("2d");                // Get the context.
             ctx.clearRect(0,0,canvas.width,canvas.height);    // Clear the last image, if it exists.
             document.getElementById("img1").src="cycle2.jpg";}}*/


            function helperr(m) {
                // if(to == null){
                //var x = document.getElementById("fir");
       //var y= x.rows[0];
       //var p=y.cells[0];
       // z=p.innerText;
       //txt=e.rowIndex;
                //to=e.cellIndex;

                //alert(oldx[t]);
                //  alert(oldy[t]);
                //  alert(memo);
                // alert(z);
                //if(memo!=z){
                helper = 0;
                oldmemmem = oldmem;
                // var image = document.getElementById("img1");
                // var pt1 = new jsPoint(oldx[t],oldy[t]);
                //
                //var pt2 = new jsPoint(xaxis,yaxis);
                //var gr = new jsGraphics(document.getElementById("myCanvas"));
                //Create jsColor object
                canvas = document.getElementById("myCanvas");
                if (canvas.getContext) {
                    // alert("I am here");
                    ctx = canvas.getContext("2d");                // Get the context.
                    // Clear the last image, if it exists.



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
                //alert(oldmem);
                switch (m) {
                    case '1':

                        if (oldmem == '46') {
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

                        if (oldmem == '25') {
                            correctwrd += 1;
                            flag = 1;
                            seq[26] = 26;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[26] = " ";
                        }
                        break;
                    case '27':

                        if (oldmem == '26') {
                            correctwrd += 1;
                            flag = 1;
                            seq[27] = 27;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[27] = " ";
                        }
                        break;
                    case '28':

                        if (oldmem == '27') {
                            correctwrd += 1;
                            flag = 1;
                            seq[28] = 28;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[28] = " ";
                        }
                        break;
                    case '29':

                        if (oldmem == '28') {
                            correctwrd += 1;
                            flag = 1;
                            seq[29] = 29;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[29] = " ";
                        }
                        break;
                    case '30':

                        if (oldmem == '29') {
                            correctwrd += 1;
                            flag = 1;
                            seq[30] = 30;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[30] = " ";
                        }
                        break;
                    case '31':

                        if (oldmem == '30') {
                            correctwrd += 1;
                            flag = 1;
                            seq[31] = 31;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[31] = " ";
                        }
                        break;
                    case '32':

                        if (oldmem == '31') {
                            correctwrd += 1;
                            flag = 1;
                            seq[32] = 32;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[32] = " ";
                        }
                        break;
                    case '33':

                        if (oldmem == '32') {
                            correctwrd += 1;
                            flag = 1;
                            seq[33] = 33;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[33] = " ";
                        }
                        break;
                    case '34':

                        if (oldmem == '33') {
                            correctwrd += 1;
                            flag = 1;
                            seq[34] = 34;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[34] = " ";
                        }
                        break;
                    case '35':

                        if (oldmem == '34') {
                            correctwrd += 1;
                            flag = 1;
                            seq[35] = 35;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[35] = " ";
                        }
                        break;
                    case '36':

                        if (oldmem == '35') {
                            correctwrd += 1;
                            flag = 1;
                            seq[36] = 36;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[36] = " ";
                        }
                        break;
                    case '37':

                        if (oldmem == '36') {
                            correctwrd += 1;
                            flag = 1;
                            seq[37] = 37;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[37] = " ";
                        }
                        break;
                    case '38':

                        if (oldmem == '37') {
                            correctwrd += 1;
                            flag = 1;
                            seq[38] = 38;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[38] = " ";
                        }
                        break;
                    case '39':

                        if (oldmem == '38') {
                            correctwrd += 1;
                            flag = 1;
                            seq[39] = 39;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[39] = " ";
                        }
                        break;
                    case '40':

                        if (oldmem == '39') {
                            correctwrd += 1;
                            flag = 1;
                            seq[40] = 40;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[40] = " ";
                        }
                        break;
                    case '41':

                        if (oldmem == '40') {
                            correctwrd += 1;
                            flag = 1;
                            seq[41] = 41;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[41] = " ";
                        }
                        break;
                    case '42':

                        if (oldmem == '41') {
                            correctwrd += 1;
                            flag = 1;
                            seq[42] = 42;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[42] = " ";
                        }
                        break;
                    case '43':

                        if (oldmem == '42') {
                            correctwrd += 1;
                            flag = 1;
                            seq[43] = 43;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[43] = " ";
                        }
                        break;
                    case '44':

                        if (oldmem == '43') {
                            correctwrd += 1;
                            flag = 1;
                            seq[44] = 44;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[44] = " ";
                        }
                        break;
                    case '45':

                        if (oldmem == '44') {
                            correctwrd += 1;
                            flag = 1;
                            seq[45] = 45;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[45] = " ";
                        }
                        break;
                    case '46':
                        var val = count + 1;

                        if ((oldmem == '45') && (val == total)) {
                            correctwrd += 1;
                            flag = 1;
                            seq[46] = "46 ";
                            ctx.clearRect(0, 0, canvas.width, canvas.height);
                            document.body.background = "data/exercise_2/king.jpg";





                            // canvas.clear = true; 

                        } else if (oldmem == '45') {
                            correctwrd += 1;
                            flag = 1;
                            seq[46] = 46;
                        } else {
                            wrongwrd += 1;
                            flag = 0;
                            seq[46] = " ";
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
                var charc = 0;
                var charci = 1;
                var val = (seq.length) - 1;
                var charseq = new Array("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z");
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
                    //alert(seq[i+2]);

                }
                for (var p = 2; p < seq.length; p += 2) {
                    if (seq[p] != 0) {
                        seq[p] = charseq[charc];

                        //alert (seq[p]);   

                    }
                    charc += 1;
                }
                for (var t = 1; t < seq.length; t += 2) {
                    if (seq[t] != 0) {
                        seq[t] = charci;

                        //alert (seq[p]);   

                    }
                    charci += 1;
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
                wrongwrd = 45 - correctwrd;

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

                if (count >= 46) {
                    swdStop('timer');
                    ask();



                } else {
                    var answer = confirm("Do you want to skip remaining exercise");
                    if (answer) {
                        swdStop('timer');


                        document.body.background = "data/exercise_2/king.jpg";
                        ask();

                    }
                }
                window.location.href('exercise3.jsp?wrong[]=' + [correctwrd, wrongwrd, time]);
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