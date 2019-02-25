<%--
    Document   : index
    Created on : 2010-Feb-22, 14:07:27
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
<title> Which of the Two? </title>

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
	border: 0.0px solid #000000;
	text-align: center ;
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
.style13{
    text-align: center;
	color: #FF0000;
        text-decoration: blink;

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
<body bgcolor= "white" background="back1.jpg" onload="swdStart('timer',1)" >
    <br><br>
    <script language="JavaScript">
javascript:window.history.forward(1);
</script>
<%-- start of scriptlet --%>
<%



String word = null;
String word2 = null;

try{
String url = "jdbc:derby://localhost:1527/record";
String user="re";
        String password="re";
      
        Connection conn= DriverManager.getConnection(url,user, password);



Statement st = conn.createStatement();
ResultSet rs=null;
String sql = "SELECT * FROM firsty ";
 rs = st.executeQuery(sql);
 String[] wordy=new String[8];
 String[] store=new String[8];
  String first=null;
  String sec=null;
  String thr=null;
  String four=null;
  String five=null;
  String six=null;
 String seven=null;

  //String[] listy=new String[8];
 // String[] listy2=new String[8];
 int i=1;
while(rs.next()){
word =rs.getString("veg");
word2 =rs.getString("veg2");
wordy[i]=word;
store[i]=word2;
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
 first = wordy[1];
 sec = store[2];
 thr = wordy[3];
 four = store[4];
 five = wordy[5];
 six = store[6];
 seven=store[7];
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
%>
<br>
<br>
<br>
<center><font class="style13"><H1>Which of the Two ?</H1></font></center>
<br>

<form name ="gui" method ="post" action="exercise6.jsp">
    <center>
    <table cellpadding="0" cellspacing="0" class="style4" style="width: 125px; height: 309px" align="center" id="fir"  >
<tr>
       <td style="width: 25%; height: 1px" class="style6" id="4" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message0(this,this.id)"><strong><%= store[4]%></strong></td>
      <td style="width: 17px;"class="style6"><strong>-</strong></td>
       <td style="width: 25%; height: 1px" class="style6" id="8" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message1(this,this.id)"><strong><%= wordy[4]%></strong></td>
    </tr>
    <tr>
      <td style="width: 25%; height: 1px" class="style6" id="2" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message2(this,this.id)"><strong><%= wordy[2]%></strong></td>
      <td style="width: 17px;" class="style6"><strong>-</strong></td>
      <td style="width: 25%; height: 1px" class="style6" id="10" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message3(this,this.id)"><strong><%= store[2]%></strong></td>
    </tr>
    <tr>
      <td style="width: 25%; height: 1px" class="style6" id="5" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message4(this,this.id)"><strong><%= store[5]%></strong></td>
      <td style="width: 17px;" class="style6"><strong>-</strong></td>
       <td style="width: 25%; height: 1px" class="style6" id="7"  onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message5(this,this.id)"><strong><%= wordy[5]%></strong></td>
    </tr>
    <tr>
      <td style="width: 25%; height: 1px" class="style6" id="1" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message6(this,this.id)"><strong><%= wordy[1]%></strong></td>
      <td style="width: 17px;" class="style6"><strong>-</strong></td>
      <td style="width: 25%; height: 1px" class="style6" id="11" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message7(this,this.id)"><strong><%= store[1]%></strong></td>
    </tr>
    <tr>
     <td style="width: 25%; height: 1px" class="style6" id="6" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message8(this,this.id)"><strong><%= store[6]%></strong></td>
      <td style="width: 17px;" class="style6"><strong>-</strong></td>
      <td style="width: 25%; height: 1px" class="style6" id="9" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message9(this,this.id)"><strong><%= wordy[6]%></strong></td>
    </tr>
    <tr>
       <td style="width: 25%; height: 1px" class="style6" id="3" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message10(this,this.id)"><strong><%= store[3]%></strong></td>
      <td style="width: 17px;" class="style6"><strong>-</strong></td>
       <td style="width: 25%; height: 1px" class="style6" id="12" onmouseover=" this.bgColor='#CEF6E3'" onmouseout=" this.bgColor=''" onclick="message11(this,this.id)"><strong><%= wordy[3]%></strong></td>
    </tr>

</table>
</center>

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

function message0(e,m){
   // if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[0];
var p=y.cells[0];
 z=p.innerText;

//txt=e.rowIndex;
 to=e.cellIndex;

 if(memo!=z){
     // document.write(//%=four%>);
     count+=1;
if(z == document.gui.ett.value){
correctwrd+=1;
flag=1;

}
else{
    wrongwrd+=1;
 }
        document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}





//}else{
      // document.gui.first.value=
       // document.gui.sec.value= y;
        //document.gui.hiddenBox.value=z;
        //}
        }
function message1(e,m)
{
    //if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[0];
var p=y.cells[2];
  z=p.innerText;

  to=e.cellIndex;

  if(memo!=z){

      if(z == document.gui.ett.value){
          count+=1;
          correctwrd+=1;
          flag=1;

}
else{
    count+=1;
wrongwrd+=1;
 }


document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}



    //else{
       //document.gui.first.value=z;
      //  document.gui.sec.value= z;
    //}
    }
function message2(e,m)
{//if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[1];
var p=y.cells[0];
 z=p.innerText;
 //ocument.gui.first.value=
  //ocument.gui.secchar.value=
    //document.gui.thechar.value=
     //document.gui.hiddenBox.value=
 //txt=e.rowIndex;
 to=e.cellIndex;
// whiter();
 if(memo!=z){
      if(z == document.gui.tvo.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}


document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}
}

// else { //document.gui.first.value=z;
      //  document.gui.sec.value= z;
   // } }
function message3(e,m)
{ //if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[1];
var p=y.cells[2];
  z=p.innerText;
 //document.gui.first.value=
  // document.gui.secchar.value= <
    //document.gui.thechar.value=
    // document.gui.hiddenBox.value=
 //txt=e.rowIndex;
 to=e.cellIndex;
 //whiter();
 if(memo!=z){

     if(z == document.gui.tvo.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}

document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}




    }//else{//document.gui.first.value=z;
   //     document.gui.sec.value= z;
   // }}
function message4(e,m)
{
    //if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[2];
var p=y.cells[0];
  z=p.innerText;
  //document.gui.first.value= ;
   //document.gui.secchar.value=
    //document.gui.thechar.value=
     //document.gui.hiddenBox.value=
 //txt=e.cellIndex;
to=e.rowIndex;
//whiter();
if(memo!=z){
    if(z == document.gui.tre.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}

document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}



    }//else{//document.gui.first.value=z;
    //    document.gui.sec.value= z;
    //}}
function message5(e,m)
{//if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[2];
var p=y.cells[2];
 z=p.innerText;
//document.gui.first.value=
 //  document.gui.secchar.value=
   // document.gui.thechar.value=
     //document.gui.hiddenBox.value=
 //txt=e.rowIndex;
 to=e.cellIndex;
 //whiter();
 if(memo!=z){
     if(z == document.gui.tre.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}

document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}
}

//else
        //{//document.gui.first.value=z;
        //document.gui.sec.value= z;

        //}}
function message6(e,m)
{//if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[3];
var p=y.cells[0];
 z=p.innerText;
 //document.gui.first.value=
   //document.gui.secchar.value=
   // document.gui.thechar.value=
    // document.gui.hiddenBox.value=
 //txt=e.rowIndex;
 to=e.cellIndex;
 //whiter();
if(memo!=z){
     if(z == document.gui.four.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}


document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}




       }//else{
      //document.gui.first.value=z;
       // document.gui.sec.value= z;
        // }}
function message7(e,m)
{
   // if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[3];
var p=y.cells[2];
 z=p.innerText;
 //document.gui.first.value=
  // document.gui.secchar.value=
   // document.gui.thechar.value=
    // document.gui.hiddenBox.value=
 //txt=e.rowIndex;
  to=e.cellIndex;
  //whiter();
if(memo!=z){
     if(z == document.gui.four.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}


document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}




     }//else{
     // document.gui.first.value=z;
      //  document.gui.sec.value= z;
       //document.gui.hiddenBox.value=z;
//}}
function message8(e,m)
{ //if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[4];
var p=y.cells[0];
  z=p.innerText;
//document.gui.first.value=
  // document.gui.secchar.value=
    //document.gui.thechar.value=
     //document.gui.hiddenBox.value=
 //txt=e.rowIndex;
 to=e.cellIndex;
// whiter();
if(memo!=z){
     if(z == document.gui.five.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}


document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}




    }
   // else{
       //document.gui.first.value=z;
    //    document.gui.sec.value= z;
       // document.gui.hiddenBox.value=z;
   // }}
function message9(e,m)
{//if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[4];
var p=y.cells[2];
  z=p.innerText;
 // whiter();
 //document.gui.first.value=
  // document.gui.secchar.value=
    //document.gui.thechar.value=
    // document.gui.hiddenBox.value=
 //txt=e.rowIndex;
  to=e.cellIndex;
if(memo!=z){
     if(z == document.gui.five.value){
count+=1;
correctwrd+=1;
flag=1;
}
else{
count+=1;
wrongwrd+=1;
}

    document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}



      }
   // else{
       // document.gui.first.value=z;
     //   document.gui.sec.value= z;
        //document.gui.hiddenBox.value=z;
 //}
 //}
function message10(e,m)
{//if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[5];
var p=y.cells[0];
  z=p.innerText;


 to=e.cellIndex;
 //whiter();
if(memo!=z){

     if(z == document.gui.six.value){
         correctwrd+=1;
flag=1;
count+=1;

}
else{
 count+=1;
 wrongwrd+=1;
}


document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}



       }//else
       // {//document.gui.first.value=z;
       // document.gui.sec.value= z;
       // document.gui.hiddenBox.value=z;
       // }
       // }
function message11(e,m)
{
    //if(to == null){
    var x = document.getElementById("fir");
var y= x.rows[5];
var p=y.cells[2];
  z=p.innerText;
 //document.gui.first.value=
  // document.gui.secchar.value=
   // document.gui.thechar.value=
    // document.gui.hiddenBox.value=
 //txt=e.rowIndex;
 to=e.cellIndex;
 //whiter();
 if(memo!=z){
      if(z == document.gui.six.value){
correctwrd+=1;
count+=1;
flag=1;
}
else{
 count+=1;
 wrongwrd+=1;
}


document.gui.sec.value= m;
document.getElementById(m).style.backgroundColor="pink";}
else{
    document.getElementById(m).style.backgroundColor="pink";
}





       }
    //else{
      //  document.gui.first.value=z;
     //   document.gui.sec.value= z;
//document.gui.hiddenBox.value=z;
//}}




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
if(totals<6){
    omissions =(6 - (totals));
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
var min=0;
var secd=0;
//if (count>=6){
        swdStop('timer');
       time =document.gui.secchar.value ;
            time=parseInt(time)+30;
            if (time>=60){
                min=time/60;
                min=parseInt(min);
                secd=time%60;
                 alert(" Your score for this excercise ?\n\n Omissions   "+ omissions +"\n Wrong Answers:    "+wrongwrd+"\n Time:            "+min+" minute  "+secd+" sec ");
            }
            else{
        alert(" Your score for this excercise ?\n\n  Omissions:   "+ omissions +"\n Wrong Answers:    "+wrongwrd+"\n Time:                 "+ time+" sec");
            }

window.location.href('exercise6.jsp?wrong[]='+[correctwrd,wrongwrd,time]);//}
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
    <input name="Button1" style="width: 90px; height: 32px" type="button" value="CLEAR" onclick="betterMo()" 
           
	<input name="Reset1" style="width: 89px; height: 33px" type="button" value="UNDO" onclick="undo()" /><input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()"/>
<input name="ommit" style="width: 89px; height: 33px" type="button" value="Omission" onclick="omit()" />
</center><br /><input name="ett" class="style12" style="width: 112px; height: 24px" type="text" value=<%=four%>   /><br /><input name="sec" class="style12" style="width: 112px; height: 24px" type="text" /><br /><input name="tre" class="style12" style="width: 112px; height: 24px" type="text" value=<%=five%> />
<input name="tvo" class="style12" style="width: 112px; height: 24px" type="text" value=<%=sec%> />
<input name="four" class="style12" style="width: 112px; height: 24px" type="text" value=<%=first%> />
<input name="five" class="style12" style="width: 112px; height: 24px" type="text" value=<%=six%> />
<input name="six" class="style12" style="width: 112px; height: 24px" type="text" value=<%=thr%> />
</form>
</body>
<%

conn.close();
}catch(Exception sqlEx){
System.out.println(sqlEx);
}
%>
</html>
