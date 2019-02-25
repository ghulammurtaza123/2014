<%--
    Document   : exercise6b
    Created on : 2010-apr-01, 11:00:06
    Author     : murtaza
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

        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Where is it Located?</title>
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

	color: #FF0000;
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
<script type="text/javascript">
function Column(e) {
var ColNum=1;
if(navigator.userAgent.indexOf("MSIE")!=-1) {
    if(event.srcElement.tagName=="TD") {
        ColNum+=event.srcElement.cellIndex;
        }
	}
else {
    if (e.target == "[object HTMLTableCellElement]") {
         ColNum+=e.target.cellIndex;
         }
	}
//document.gui.thechar.value=ColNum;
}



</script>
</head>
<%@ page language="java" %>
<body bgcolor= "white"  onload="swdStart('timer',1)" background="nat.jpg" >
    <br><br>
    <script language="JavaScript">
javascript:window.history.forward(1);
</script>
<%-- start of scriptlet --%>
<%
String word = null;
int temp=0;

try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
String url = "jdbc:odbc:wordsdsn";


Connection con = DriverManager.getConnection(url);
Statement st = con.createStatement();
ResultSet rs=null;
String sql = "SELECT * FROM firsty ";
 rs = st.executeQuery(sql);
 String[] wordy=new String[15];
   String firsti=null;
  String seci=null;
  String thr=null;
  String four=null;
  String five=null;



  //String[] listy=new String[8];
 // String[] listy2=new String[8];
 int i=1;
while(rs.next()){
word =rs.getString("mixer");

wordy[i]=word;

i=i+1;
}
/*Random generator = new Random();
 int ri = 1;
 for(int j=0;j<=6;j++){
 ri=generator.nextInt(6);
if(wordy[ri]== null){
 listy[j]="SOLO";
}
 else if(store[ri]==null){
 listy2[j]="BOLO";
 }
else{
 listy[j]=wordy[ri];
 listy2[j]=store[ri];
 }}*/
 firsti = wordy[1];
 seci = wordy[2];
 thr = wordy[3];
 four = wordy[4];
 five = wordy[5];

 /*seven = listy[6].toCharArray();
 eight = listy[7].toCharArray();
 nine = listy[8].toCharArray();
 ten = listy[9].toCharArray();
 elva = listy[10].toCharArray();
 tolv = listy[11].toCharArray();
 thirt = listy[12].toCharArray();
 fyrta = listy[13].toCharArray();
 femta = listy[14].toCharArray();
 sexta = listy[15].toCharArray();*/

 Random generator = new Random();


temp=generator.nextInt(3);
//temp=one[j];
//System.out.println(one[j]);


%>


<form name ="gui" method ="post" action="thanks.jsp">
     <center><font color="red"> <h1>Where is it Located ?</h1></font></center>

    <br><br><br><br><br>
    <%switch(temp){
case 1:           %>

   <font color="black">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<H3>Q#1: Monalisa is in the right of Car ?</H3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="yes" onclick="message0(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="no" onclick="message0(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#2: <%=thr%> is on the left side of  <%=seci%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="yes" onclick="message0(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="no" onclick="message0(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#3: <%=five%> is after <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="yes" onclick="message1(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="no" onclick="message1(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#4: <%=four%> is between <%=seci%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="yes" onclick="message2(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="no" onclick="message2(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#5: <%=seci%> is between <%=five%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="yes" onclick="message4(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="no" onclick="message4(this.value)">  No
   </font>
<% break;
case 2:%>
<font color="#0099BB">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#1: <%=firsti%> is on the left side of  <%=seci%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="yes" onclick="message1(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="no" onclick="message1(this.value)">  No
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<H3>Q#2: <%=thr%> is between <%=four%> and <%=five%> ?</H3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="yes" onclick="message0(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="no" onclick="message0(this.value)">  No

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#3: <%=five%> is on the right side of <%=four%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="yes" onclick="message3(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="no" onclick="message3(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#4: <%=four%> is between <%=seci%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="yes" onclick="message2(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="no" onclick="message2(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#5: <%=seci%> is between <%=five%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="yes" onclick="message4(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="no" onclick="message4(this.value)">  No
   </font>
<% break;
case 3:%>
<font color="#0099BB">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#1: <%=five%> is on the right side of <%=four%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="yes" onclick="message3(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="no" onclick="message3(this.value)">  No
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<H3>Q#2: Fish is before Flower ?</H3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="yes" onclick="message0(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="no" onclick="message0(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#3: <%=firsti%> is on the left side of  <%=seci%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="yes" onclick="message1(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="no" onclick="message1(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#4: <%=seci%> is between <%=five%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="yes" onclick="message4(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="no" onclick="message4(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#5: <%=four%> is between <%=seci%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="yes" onclick="message2(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="no" onclick="message2(this.value)">  No


   </font>
<% break;
default:%>
<font color="black">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<H3>Q#1: <%=thr%> is between <%=four%> and <%=five%> ?</H3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="yes" onclick="message0(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option1" value="no" onclick="message0(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#2: <%=firsti%> is on the left side of  <%=seci%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="yes" onclick="message1(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option2" value="no" onclick="message1(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#3: <%=four%> is between <%=seci%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="yes" onclick="message2(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option3" value="no" onclick="message2(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#4: <%=five%> is on the right side of <%=four%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="yes" onclick="message3(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option4" value="no" onclick="message3(this.value)">  No
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3>Q#5: <%=seci%> is between <%=five%> and <%=thr%> ?</h3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="yes" onclick="message4(this.value)"> Yes<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="option5" value="no" onclick="message4(this.value)">  No
   </font>

<%

}
//System.out.println(temp);
%>




        <script type="text/javascript">
            //var pre;
            //var txt=0;
            var to=null;
            var memo=null;
            var time=0;
            var count=0;
            var z=null;
var omissions=0;
var flag=0;
var correctwrd=0;
var wrongwrd=0;
var temp1=null;
var temp2=null;
var temp3=null;
var temp4=null;
var temp5=null;

function message0(e){
   // if(to == null){
    count+=1;
if (e=="no"){

   correctwrd+=1;
flag=1;
}
 else{

    wrongwrd+=1;
 }
     // document.write(//%=four%>);






//}else{
      // document.gui.first.value=
       // document.gui.sec.value= y;
        //document.gui.hiddenBox.value=z;
        //}
        }
function message1(e)
{
    //if(to == null){
    count+=1;
if (e=="yes"){

   correctwrd+=1;
flag=1;
}
 else{

    wrongwrd+=1;
 }
     // document.write(//%=four%>);






    }
    //else{
       //
      //  document.gui.sec.value= z;
    //}
   // }
function message2(e)
{count+=1;
if (e=="no"){

   correctwrd+=1;
flag=1;
}
 else{

    wrongwrd+=1;
 }
     // document.write(//%=four%>);




if(time==0){
swdStart('timer',1);}

}// else { //document.gui.first.value=z;
      //  document.gui.sec.value= z;
   // } }
function message3(e)
{ //if(to == null){
    count+=1;
if (e=="yes"){

   correctwrd+=1;
flag=1;
}
 else{

    wrongwrd+=1;
 }
     // document.write(//%=four%>);







    }//else{//document.gui.first.value=z;
   //     document.gui.sec.value= z;
   // }}
function message4(e)
{
   count+=1;
if (e=="no"){

   correctwrd+=1;
flag=1;
}
 else{

    wrongwrd+=1;
 }
     // document.write(//%=four%>);






    }




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






 

var helper=0;

function omit() {


    var totals=wrongwrd  + correctwrd;
if(totals<5){
    omissions =(5 - (totals));
}else{
    omissions=0;
    }

confirmation();

}









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

helper=document.gui.sec.value;   // document.gui.thechar.value= helper;
document.getElementById(helper).style.backgroundColor="white";
 //wrong=wrong-1;
 //document.gui.hiddenBox.value=wrong;
count=count-1;
if(flag==1){
 if(correctwrd>1){

     correctwrd=correctwrd-1;
     document.gui.first.value=correctwrd;

 }else{


     document.gui.first.value=correctwrd;

 }

}else{
wrongwrd=wrongwrd-1;
     document.gui.hiddenBox.value=wrongwrd;
}
}

function confirmation(){


      // if (count>=5){
        swdStop('timer');
       time =document.gui.secchar.value ;
            time=parseInt(time)+60;
            if (time>=60){
                min=time/60;
                min=parseInt(min);
                secd=time%60;
                alert(" Your score for this excercise ?\n\n Omissions   "+ omissions +"\n Wrong Answers:    "+wrongwrd+"\n Time:            "+min+" minute  "+secd+" sec ");
            }
            else{
        alert(" Your score for this excercise ?\n\n  Omissions:   "+ omissions +"\n Wrong Answers:    "+wrongwrd+"\n Time:                 "+ time+" sec");
            }

 window.location.href('thanks.jsp?wrong[]='+[correctwrd,wrongwrd,time]);
//}
}


function whiter(){

    for (var y=1 ;y<=12;y++){
    document.getElementById(y).style.backgroundColor="white";

}
}
       </script>


    <input name="first" class="style12" style="width: 112px; height: 24px" type="text" align="left" /><BR><input name= "hiddenBox"  class="style12" style="width: 112px; height: 24px " type="text" />
<br /><input name="secchar"  class="style12" style="width: 112px; height: 24px" type="text"  id="timer" onkeypress="return false ; " value=" "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="style12" value="Reload Page" name ="button2">
<center>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()"/><input name="ommit" style="width: 99px; height: 33px" type="button" value="OMISSION" onclick="omit()" />
</center><br /><input name="ett" class="style12" style="width: 112px; height: 24px" type="text" value=<%=four%>   /><br /><input name="sec" class="style12" style="width: 112px; height: 24px" type="text" /><br /><input name="tre" class="style12" style="width: 112px; height: 24px" type="text" value=<%=five%> />

</form>
</body>
<%

con.close();
}catch(Exception sqlEx){
System.out.println(sqlEx);
}
%>
</html>
