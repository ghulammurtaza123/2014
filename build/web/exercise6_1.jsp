<%--
    Document   : exercise6
    Created on : 2010-apr-01, 10:43:40
    Author     : murtaza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.io.*"%>
<%@page import="java.util.Properties.*"%>
<%@page import="java.awt.*"%>
<%@page import="java.awt.event.*"%>
<%@page import="javax.swing.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<html>

<head>
<title> Exercise# 6 </title>

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

<script type="text/javascript">
function delayer(){
    window.location = "exercise6b_1.jsp"
}

</script>
</head>
<%@ page language="java" %>

<body bgcolor= "white" onload="setTimeout('delayer()', 60000)" background="nat.jpg" >
    <br><br>
    <script language="JavaScript">
javascript:window.history.forward(1);
</script>
    <%
String veg = null;
//int temp=0;
String[] values=new String[40];

// Remember to change the next line with your own environment 
try{
String url = "jdbc:derby://localhost:1527/record";
String user="re";
        String password="re";
      
        Connection con= DriverManager.getConnection(url,user, password);
        Statement st= con.createStatement();

String sql = "SELECT * FROM recording WHERE mix IS NOT NULL";
 ResultSet rs = st.executeQuery(sql);

 String[] mix=new String[151];


int[] one=new int[6];

 int i=1;
while(rs.next()){
veg =rs.getString("mix");
mix[i]=veg;

i=i+1;
}
Random generator = new Random();

 for(int j=0;j<5;j++){
one[j]=generator.nextInt(14);
if(one[j]==0){
one[j]=3;
}
//temp=one[j];
//System.out.println(one[j]);

}
if((one[0]==one[1])||(one[0]==one[2])||(one[0]==one[3])||(one[0]==one[4])){
one[0]=3;
values[one[0]]="Bat";
one[1]=2;
values[one[1]]="Apple";
one[2]=13;
values[one[2]]="Fly";
one[3]=9;
values[one[3]]="Carrot";
one[4]=6;
values[one[4]]="Bus";
}
else if((one[1]==one[2])||(one[1]==one[3])||(one[1]==one[4])){
one[0]=17;
values[one[0]]="Glass";
one[1]=12;
values[one[1]]="Flower";
one[2]=23;
values[one[2]]="Pisa Tower";
one[3]=7;
values[one[3]]="Cap";
one[4]=4;
values[one[4]]="Bike";
}
else if((one[2]==one[3])||(one[2]==one[4])){
one[0]=12;
values[one[0]]="Flower";
one[1]=1;
values[one[1]]="Aeroplane";
one[2]=8;
values[one[2]]="Car";
one[3]=30;
values[one[3]]="Strawberey";
one[4]=34;
values[one[4]]="Coat";
}
else if(one[3]==one[4]){
one[0]=14;
values[one[0]]="Football";
one[1]=2;
values[one[1]]="Apple";
one[2]=15;
values[one[2]]="Fork";
one[3]=6;
values[one[3]]="Bus";
one[4]=24;
values[one[4]]="Poetry";
}
else{
    values[0]="Aeroplane";
    values[1]="Apple";
    values[2]="Bat";

    values[3]="Bike";


    values[4]="Book";
 values[5]="Bus";
    values[6]="Cap";

    values[7]="Car";

    values[8]="Carrot";

    values[9]="Cup";

    values[10]="Fish";

    values[11]="Flower";

    values[12]="Fly";

    values[13]="Football";

    values[14]="Fork";

    values[15]="Girl";

    values[16]="Glass";

    values[17]="Earth";
     values[18]="Hockey";
      values[19]="Jug";
       values[20]="Knife";
        values[21]="Monalisa";
         values[22]="Pisa Tower";
          values[23]="Poetry";
           values[24]="Pyramid";
            values[25]="Ball";
             values[26]="Ship";
              values[27]="Shoe";
               values[28]="Spoon";
                values[29]="Strawberey";
                 values[30]="Taj Mahal";
                  values[31]="Tomato";
                  values[32]="Umbrella";
                  values[33]="Coat";
                  values[34]="Vase";

 }

//System.out.println(values[one[0]]+"2nd"+ values[one[1]]+"3rd" + values[one[2]]+"4th"+ values[one[3]]+"5th"+values[one[4]]);
String sql2 = "SELECT * FROM firsty ";
PreparedStatement pStmt2 = con.prepareStatement(sql2,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs2=pStmt2.executeQuery();
//rs2.first();
//
rs2.absolute(1);

rs2.updateString("mixer",values[one[0]]);
rs2.updateRow();
rs2.absolute(2);
rs2.updateString("mixer",values[one[1]]);
rs2.updateRow();
rs2.absolute(3);
rs2.updateString("mixer",values[one[2]]);
rs2.updateRow();
rs2.absolute(4);
rs2.updateString("mixer",values[one[3]]);
rs2.updateRow();
rs2.absolute(5);
rs2.updateString("mixer",values[one[4]]);
rs2.updateRow();
rs2.moveToInsertRow();
%>

<form name ="gui" method ="post" action="exercise6b.jsp">
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
    <BR>
<center>
    <table name="img" background="white" border="5">

      <tr>
          <td><IMG src=<%=mix[one[0]]%> width="200" height="200" id="1" name=<%=values[one[0]] %>></td>


          <td><IMG src=<%=mix[one[1]]%> width="200" height="200" id="3"  name=<%=values[one[1]] %>></td>

          <td><IMG src=<%=mix[one[2]]%> width="200" height="200" id="4"  name=<%=values[one[2]] %>></td>


          <td><IMG src=<%=mix[one[3]]%> width="200" height="200" id="1"  name=<%=values[one[3]] %>></td>


          <td><IMG src=<%=mix[one[4]]%> width="200" height="200" id="5"  name=<%=values[one[4]] %>></td>
    </tr>
</table>
</center>
      </form>
 </body>
 <%

con.close();
}catch(Exception sqlEx){
System.out.println(sqlEx);
}
%>
</html>

