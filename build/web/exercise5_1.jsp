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
<%@page import=" java.util.Collections"%>
<%@page import=" java.util.ArrayList"%>



<html>

<head>
<title> Exercise# 5 </title>

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



	margin-center: 40px;
}
.style5 {
	border: 0 solid #FFFFFF;

        text-align: center;
        color: #0000FF;

}
.style6 {
	border: 0px solid #000000;
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
<script type="text/javascript">

function delayer(){
    window.location = "exercise5b_1.jsp"
}

</script>
</head>
<%@ page language="java" %>
<body bgcolor= "white" onload="setTimeout('delayer()', 30000)" background="back1.jpg" >
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
      
        Connection con= DriverManager.getConnection(url,user, password);
      

String sql = "SELECT * FROM recording fetch first 50 rows only";
PreparedStatement pStmt = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs=pStmt.executeQuery();
// rs = st.executeQuery(sql);
 String[] wordy=new String[51];
 String[] store=new String[51];


  String[] listy=new String[7];
  String[] listy2=new String[7];
 int i=1;
while(rs.next()){
word =rs.getString("words");
word2 =rs.getString("store");


wordy[i]=word;

store[i]=word2 ;

i=i+1;
}


  ArrayList<Integer> numbers = new ArrayList<Integer>();
     for(int p = 0; p < 50; p++)
     {
         
     numbers.add(p+1);
   }

     Collections.shuffle(numbers);

//Random generator = new Random();
 int ri = 1;
 for(int j=0;j<=6;j++){
 //ri=generator.nextInt(50);
     ri=numbers.get(j);
   
if(store[ri]== null || wordy[ri] == null) {
 listy[j]="SOLO";
 listy2[j]="BOLO";
}
else{
 listy[j]=wordy[ri];
 listy2[j]=store[ri];
 }

 }



 // inserting row in resultset & into database
 String sql2 = "SELECT * FROM firsty ";
PreparedStatement pStmt2 = con.prepareStatement(sql2,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs2=pStmt2.executeQuery();
//rs2.first();
//rs2.moveToInsertRow();
rs2.absolute(1);

  System.out.println( " it is :"+ listy[1]);
rs2.updateString("veg",listy[1]);
rs2.updateString("veg2",listy2[1]);
rs2.updateRow();

   
rs2.absolute(2);
rs2.updateString("veg",listy[2]);
rs2.updateString("veg2",listy2[2]);
rs2.updateRow();
rs2.absolute(3);
rs2.updateString("veg",listy[3]);
rs2.updateString("veg2",listy2[3]);
rs2.updateRow();
rs2.absolute(4);
rs2.updateString("veg",listy[4]);
rs2.updateString("veg2",listy2[4]);
rs2.updateRow();
rs2.absolute(5);
rs2.updateString("veg",listy[5]);
rs2.updateString("veg2",listy2[5]);
rs2.updateRow();
rs2.absolute(6);
rs2.updateString("veg",listy[6]);
rs2.updateString("veg2",listy2[6]);
rs2.updateRow();

 /*first = listy[0].toCharArray();
 sec = listy[1].toCharArray();
 thr = listy[2].toCharArray();
 four = listy[3].toCharArray();
 five = listy[4].toCharArray();
 six = listy[5].toCharArray();
 seven = listy[6].toCharArray();
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
<form name ="gui" method ="post" action="exercise5b.jsp">
    <br>
    <br>
    <br>
    <br>

    <br>
    <br>
    <center>
    <table cellpadding="0" cellspacing="0" class="style4" style="width: 145px; height: 309px" align="center" id="fir"  >

    <tr>
       <td style="width: 25%; height: 1px" class="style6" id="1"><strong><%= listy[1]%></strong></td>

    </tr>
    <tr>

     <td style="width: 25%; height: 1px" class="style6" id="2"><strong><%= listy2[2]%></strong></td>
    </tr>
    <tr>

     <td style="width: 25%; height: 1px" class="style6" id="3"><strong><%= listy[3]%></strong></td>
    </tr>
    <tr>

     <td style="width: 25%; height: 1px" class="style6" id="4"><strong><%= listy2[4]%></strong></td>
    </tr>
    <tr>

     <td style="width: 25%; height: 1px" class="style6" id="5"><strong><%= listy[5]%></strong></td>
    </tr>
 <tr>

     <td style="width: 25%; height: 1px" class="style6" id="6"><strong><%= listy2[6]%></strong></td>
    </tr>


</table>
</center>
   <script type="text/javascript">
      /*  var time=0;
        function start_time(){
          do{
          swdStart('timer',1);
             time =document.gui.secchar.value ;}while(time<30);

       if(time >= 30){
            swdStop('timer');
            document.gui.button2.click();
       }
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


setInterval('swdCycle()',swdCycleTime);*/


        </script>

</form>
</body>
<%

con.close();
}catch(Exception sqlEx){
System.out.println(sqlEx);
}
%>
</html>