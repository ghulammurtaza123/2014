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
<%@page import=" java.util.ArrayList"%>
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
<script type="text/JavaScript" src="jsDraw2D.js" >
 


</script>
    </head>
   <%@ page language="java" %>
   <body bgcolor= "white" onload="Coords()" id="canvas" style="overflow:hidden;position:relative;">
       <script language="JavaScript">
javascript:window.history.forward(1);
</script>
        <form name ="gui" method ="post" action="exercise2a.jsp">
            <IMG src="cycle4.jpg" alt="image1" width="1340" height="560" onclick="helperr()" id="img1"  >


<%@ page language="java" %>
<%
//String old_Wrong[]=new String[];
int tidd=0;
 String old_Wrong[]=request.getParameterValues("wrong[]");

System.out.println(old_Wrong[0]);
StringTokenizer st = new StringTokenizer(old_Wrong[0], ",");

String correct_wrd = st.nextToken();
String wrong_wrd = st.nextToken();
String old_time  = st.nextToken();

String name = (String) session.getAttribute("named");
               System.out.println("id" + name); 
try{
   String url = "jdbc:derby://localhost:1527/record";
            String user = "re";
            String password = "re";

            Connection con = DriverManager.getConnection(url, user, password);
            
    String sql2 = "SELECT * FROM " + name ;
  


PreparedStatement pStmt2 = con.prepareStatement(sql2,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

 ResultSet rs2 = pStmt2.executeQuery();
 rs2.moveToInsertRow();
                            // updating values in insert row
 rs2.updateString("times",old_time  );
 rs2.updateString( "correct" ,correct_wrd );
 rs2.updateString( "wrong",wrong_wrd );
 rs2.updateString( "exercise","Exercise#1" );
 rs2.updateString( "name",name );
               tidd =Integer.parseInt(old_time);                     // inserting row in resultset & into database
 rs2.insertRow();

 // row_No = rs.getRow();

System.out.println("Row has been updated");
con.close();
}catch(Exception sqlEx){
System.out.println(sqlEx);
}

%>
 <script type="text/javascript">
            //var pre;
            //var txt=0;
            var to=null;
            var memo=null;
            var time=0;
            var count=0;
            var z=null;
            var xaxis;
            var yaxis;
            var oldx=new Array(30);
            var oldy=new Array(30);
            var oldmem;
            var tempX = 0;
            var oldmemmem = 0;
            var mem=new Array();
var tempY = 0;
            var t=0;
            for(var k=0;k<=24;k++){
            mem[k]=0;}
var flag=0;
var correctwrd=0;
var wrongwrd=0;
//<script language="JScript" type="text/jscript">
function Coords()
 {
var IE = document.all?true:false;
if (!IE) document.captureEvents(Event.MOUSEMOVE)
document.onmousemove = getMouseXY;


swdStart('timer',1);
function getMouseXY(e) {
if (IE) { // grab the x-y pos.s if browser is IE
tempX = event.clientX + document.body.scrollLeft;
tempY = event.clientY + document.body.scrollTop;
}
else {  // grab the x-y pos.s if browser is NS
tempX = e.pageX;
tempY = e.pageY;
}
if (tempX < 0){tempX = 0;}
if (tempY < 0){tempY = 0;}
document.gui.MouseX.value = tempX;
document.gui.MouseY.value = tempY;
xaxis=tempX-14;
yaxis=tempY-10;
return true;
}
 }
 function helperr(){


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




 }
       // xaxis=document.gui.MouseX.value;
//yaxis=document.gui.MouseY.value;
function message0(m){
   // if(to == null){
    //var x = document.getElementById("fir");
//var y= x.rows[0];
//var p=y.cells[0];
// z=p.innerText;
//txt=e.rowIndex;
 //to=e.cellIndex;


 if(memo!=z){
     helper=0;
     oldmemmem=oldmem;
     var gr = new jsGraphics(document.getElementById("canvas"));
    //Create jsColor object
    var col = new jsColor("blue");
    //Create jsPen object
    var pen = new jsPen(col,2);
    //Draw a Line between 2 points

    var pt1 = new jsPoint(oldx[t],oldy[t]);
    var pt2 = new jsPoint(xaxis,yaxis);
    gr.drawLine(pen,pt1,pt2);
    t+=1;
    //xaxis=xaxis+11;
    //yaxis=yaxis-6;
    oldx[t]=xaxis;
    oldy[t]=yaxis;

//alert(m);
 //   alert(oldmem);
   switch(m){
       case 1:

               if((tempY>=49 && tempY<=65)&&(tempX>=795 && tempX<=815)&& (oldmem=='24')){
              correctwrd+=1;
              flag=1;

             //alert(correctwrd);
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[1]=" ";
              }
          break;
           case 2:

               if((tempY>=150 && tempY<=168)&&(tempX>=755 && tempX<=775)&& (oldmem=='1')){


              correctwrd+=1;
              flag=1;
               mem[1]=1;
              mem[2]=2;


               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[2]=" ";
              }
          break;
           case 3:


               if((tempY>=215 && tempY<=235)&&(tempX>=540 && tempX<=560) && (oldmem=='2')){
              correctwrd+=1;
              flag=1;
              mem[3]=3;


               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[3]=" ";
              }
          break;
          case 4:
              if((tempY>=130&& tempY<=148)&&(tempX>=548 && tempX<=568)&& (oldmem=='3') ){
              correctwrd+=1;
              flag=1;
             mem[4]=4;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[4]=" ";
              }
          break;
           case 5:
               if((tempY>=135 && tempY<=155)&&(tempX>=460&& tempX<=480)&& (oldmem=='4')){
              correctwrd+=1;
              flag=1;
mem[5]=5;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[5]=" ";
              }
          break;
           case 6:
               if((tempY>=240 && tempY<=260)&&(tempX>=515 && tempX<=535)&& (oldmem=='5')){
              correctwrd+=1;
              flag=1;
             mem[6]=6;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[6]=" ";
              }
          break;
           case 7:
               if((tempY>=219 && tempY<=239)&&(tempX>=445 && tempX<=465)&& (oldmem=='6')){
              correctwrd+=1;
              flag=1;
              mem[7]=7;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[7]=" ";
              }
          break;
           case 8:
               if((tempY>=210 && tempY<=230)&&(tempX>=355 && tempX<=375)&& (oldmem=='7')){
              correctwrd+=1;
              flag=1;
              mem[8]=8;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[8]=" ";
              }
          break;
           case 9:
               if((tempY>=340 && tempY<=360)&&(tempX>=284 && tempX<=304)&& (oldmem=='8')){
              correctwrd+=1;
              flag=1;
             mem[9]=9;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[9]=" ";
              }
          break;
           case 10:
               if((tempY>=475 && tempY<=495)&&(tempX>=340 && tempX<=360)&& (oldmem=='9')){
              correctwrd+=1;
              flag=1;
              mem[10]=10;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[10]=" ";
              }
          break;
           case 11:
               if((tempY>=485 && tempY<=505)&&(tempX>=470 && tempX<=490)&& (oldmem=='10')){
              correctwrd+=1;
              flag=1;
              mem[11]=11;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[11]=" ";
              }
          break;
           case 12:
               if((tempY>=345 && tempY<=365)&&(tempX>=534 && tempX<=554)&& (oldmem=='11')){
              correctwrd+=1;
              flag=1;
              mem[12]=12;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[12]=" ";
              }
          break;
           case 13:
               if((tempY>=362 && tempY<=382)&&(tempX>=588 && tempX<=608)&& (oldmem=='12')){
              correctwrd+=1;
              flag=1;
              mem[13]=13;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[13]=" ";
              }
          break;
           case 14:
               if((tempY>=445&& tempY<=465)&&(tempX>=644 && tempX<=664)&& (oldmem=='13')){
              correctwrd+=1;
              flag=1;
              mem[14]=14;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[14]=" ";
              }
          break;
           case 15:
               if((tempY>=335 && tempY<=355)&&(tempX>=630 && tempX<=650)&& (oldmem=='14')){
              correctwrd+=1;
              flag=1;
           mem[15]=15;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[15]=" ";
              }
          break;
           case 16:
               if((tempY>=185 && tempY<=205)&&(tempX>=760 && tempX<=780)&& (oldmem=='15')){
              correctwrd+=1;
              flag=1;
              mem[16]=16;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[16]=" ";
              }
          break;
           case 17:
               if((tempY>=258 && tempY<=278)&&(tempX>=805 && tempX<=825)&& (oldmem=='16')){
              correctwrd+=1;
              flag=1;
              mem[17]=17;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[17]=" ";
              }
          break;
           case 18:
               if((tempY>=345 && tempY<=365)&&(tempX>=730 && tempX<=750)&& (oldmem=='17')){
              correctwrd+=1;
              flag=1;
              mem[18]=18;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[18]=" ";
              }
          break;
          case 19:
               if((tempY>=488 && tempY<=508)&&(tempX>=785 && tempX<=805)&& (oldmem=='18')){
              correctwrd+=1;
              flag=1;
             mem[19]=19;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[19]=" ";
              }
          break;
          case 20:
               if((tempY>=490 && tempY<=510)&&(tempX>=924 && tempX<=944)&& (oldmem=='19')){
              correctwrd+=1;
              flag=1;
              mem[20]=20;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[20]=" ";
              }
          break;
          case 21:
               if((tempY>=352 && tempY<=372)&&(tempX>=985 && tempX<=1005)&& (oldmem=='20')){
              correctwrd+=1;
              flag=1;
             mem[21]=21;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[21]=" ";
              }
          break;
          case 22:
               if((tempY>=258 && tempY<=278)&&(tempX>=894 && tempX<=914)&& (oldmem=='21')){
              correctwrd+=1;
              flag=1;
              mem[22]=22;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[22]=" ";
              }
          break;
          case 23:
               if((tempY>=215 && tempY<=235)&&(tempX>=791 && tempX<=811)&& (oldmem=='22')){
              correctwrd+=1;
              flag=1;
             mem[23]=23;
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[23]=" ";
              }
          break;
          case 24:
               if((tempY>=120 && tempY<=140)&&(tempX>=755 && tempX<=775)&& (oldmem=='23')){
              correctwrd+=1;
              flag=1;
              mem[24]=" ";
               var canvas = document.getElementById("canvas");  
               var ctx = canvas.getContext("2d");
               ctx.drawWindow(window, 0, 0, 100, 200, "rgb(255,255,255)"); 
               document.getElementById("img1").src="cycle2.jpg";
               }
          else{
              wrongwrd+=1;
               flag=0;
               mem[24]=0;
              }
              case 27:
                  if(m==27){
               var gr = new jsGraphics(document.getElementById("canvas"));
    //Create jsColor object
    var col = new jsColor("white");
    //Create jsPen object
    
    var pen = new jsPen(col,2);
    //Draw a Line between 2 points
    var pt1 = new jsPoint(oldx[t-1],oldy[t-1]);
    var pt2 = new jsPoint(oldx[t],oldy[t]);
    gr.drawLine(pen,pt1,pt2);
    count=count-1;
}

         // count=count-1;}
          break;
          default:
              wrongwrd+=1;
               flag=0;
    }
    oldmem=m;
 }
 else{
     oldx[t]=xaxis;
    oldy[t]=tempY;

    oldmem=m;
memo=1;
 }
 count+=1;
 document.gui.ett.value=correctwrd;
  document.gui.tvo.value=wrongwrd;
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


var swdCycleTime=50;
// Functional Code
var swd,swdObj,swdct,swdnow,swdcycle;
var swdObjAry=new Array();
function swdStart(id,ud){
 swdObj=document.getElementById(id);
 swdObj.value=0;
 swdnow=new Date();
 swdObj.now=swdnow.getTime();
 swdObj.ud=ud*1000;
 swdObj.d=0;
 if (!swdObj.c){
  swdObj.c=1;
  swdObjAry[swdObjAry.length]=swdObj;
 }
 if (swdObj.c==2){ swdObj.c=1; }
}
function swdCycle(){
 swdcycle=new Date().getTime();
 for (swd0=0;swd0<swdObjAry.length;swd0++){
  if (swdcycle>swdObjAry[swd0].now+swdObjAry[swd0].ud&&swdObjAry[swd0].c==1){
   swdObjAry[swd0].d++;
   swdObjAry[swd0].now=swdObjAry[swd0].now+swdObjAry[swd0].ud;
   swdObjAry[swd0].value=swdObjAry[swd0].d;
  }
 }
}
function swdStop(id){
 swdObj=document.getElementById(id);
 swdObj.c=2;
}
setInterval('swdCycle()',swdCycleTime);
//-->

 </script>
  <script type="text/javascript">
var helper=0;


   function betterMo() {
 //document.gui.sec.value=rec;
  to=null;
  memo=null;
   time=0;
   count=0;
   z=null;
correctwrd=0;
 wrongwrd=0;
flag=0;
for (var i=1 ;i<=12;i++){
    document.getElementById(i).style.backgroundColor="white";
}
}
function undo(){
//helper=document.gui.sec.value;   // document.gui.thechar.value= helper;
//document.getElementById(helper).style.backgroundColor="white";
 //alert(oldx[t]);
   // alert(oldy[t]);
   //  alert(oldx[t-1]);
   // alert(oldy[t-1]);
  if (helper==0) {
 var gr = new jsGraphics(document.getElementById("canvas"));
    //Create jsColor object
    var col = new jsColor("white");
    //Create jsPen object
    var pen = new jsPen(col,2);
    //Draw a Line between 2 points
    var pt1 = new jsPoint(oldx[t-1],oldy[t-1]);
    var pt2 = new jsPoint(oldx[t],oldy[t]);
    gr.drawLine(pen,pt1,pt2);


    oldx[t]=oldx[t-1];
    oldy[t]=oldy[t-1];
    oldmem=oldmemmem;
if(flag==1){

 if(correctwrd>=1){
     correctwrd=correctwrd-1;
     document.gui.ett.value=correctwrd;
 }else{
     document.gui.ett.value=correctwrd;
 }
}else{
if(wrongwrd>=1){
     wrongwrd=wrongwrd-1;
     document.gui.tvo.value=wrongwrd;
 }else{
     document.gui.tvo.value=wrongwrd;
}
helper=1;
}
}
//count=count+1;
}
function ask(){
    count-count-1;
    time =document.gui.secchar.value ;
            time=parseInt(time)+60;
wrongwrd=23-correctwrd;

            if (time>=60){
                min=time/60;
                min=parseInt(min);
                secd=time%60;



                 alert(" Your score for this excercise ?\n\n Correct Seq:   "+mem[1]+" "+mem[2]+" "+mem[3]+" "+mem[4]+" "+mem[5]+" "+mem[6]+" "+mem[7]+" "+mem[8]+" "+mem[9]+" "+mem[10]+" "+mem[11]+" "+mem[12]+" "+mem[13]+" "+mem[14]+" "+mem[15]+" "+mem[16]+" "+mem[17]+" "+mem[18]+" "+mem[19]+" "+mem[20]+" "+mem[21]+" "+mem[22]+" "+mem[23]+" "+mem[24]+"\n Wrong Attempts:    "+wrongwrd+"\n Time:            "+min+" minute  "+secd+" sec ");
            }
            else{
        alert(" Your score for this excercise ?\n\n Correct Attempts:   "+correctwrd+"\n Wrong Attempts:    "+wrongwrd+"\n Time:                 "+ time+" sec");
            }
}
function confirmation(){

    if(count>=24){
        swdStop('timer');
       ask();


window.location.href('exercise2a.jsp?wrong[]='+[correctwrd,wrongwrd,time]);
}else{
   var answer=confirm("Do you want to skip remaining exercise");
    if(answer){
        swdStop('timer');


    document.getElementById("img1").src="cycle2.jpg";
    ask();
    window.location.href('exercise2a.jsp?wrong[]='+[correctwrd,wrongwrd,time]);
}
}
 }
function whiter(){
    for (var y=1 ;y<=12;y++){
    document.getElementById(y).style.backgroundColor="white";
}
}
       </script>
        <input name="first" class="style12" style="width: 112px; height: 24px" type="text" align="left" /><input name= "hiddenBox"  class="style12" style="width: 112px; height: 24px " type="text" />
<input name="secchar"  class="style12" style="width: 112px; height: 24px" type="text"  id="timer" onkeypress="return false ; " value=" "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="style12" value="Reload Page" name ="button2">
<center>
    <input name="Button1" class="style12" style="width: 90px; height: 32px" type="button" value="CLEAR" onclick="betterMo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <input name="Reset1" style="width: 89px; height: 33px" type="button" value="UNDO" onclick="undo()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()"/></center>
<input name="ett" style="width: 112px; height: 24px" type="text" align="left" class="style12" />
<input name="tvo" style="width: 112px; height: 24px" type="text" align="left" class="style12"/>
<input type="text" name="MouseX" value="0" size="4" class="style12"><br>
<input type="text" name="MouseY" value="0" size="4" class="style12"><br>

</form>
</body>
</html>