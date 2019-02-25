    <%@page import="java.time.LocalTime"%>
<%--
    Document   : exercise
    Created on : 2009-nov-25, 13:39:29
    Author     : Murtaza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.net.URLEncoder"%>
<%@page import="java.sql.*"%>
<%@page import="java.time.Month"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<html>


<head>
    <title> **** CTE SYSTEM **** </title>
<meta content="sv" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />

<style type="text/css">
.style1 {
	font-size: xx-large;
}
.style2 {
	color: #FF0000;
}
.style3 {
	text-align: center;
}
.style5 {
	text-align: center;
	font-size: xx-large;
	color: #FF0000;
}
.style6 {
	text-align: center;
	color: #4861FF;
	font-size: x-large;
	font-family: "CALIBRI";
}
.style7 {
	text-decoration: none;
}

</style>

</head>
<%@ page language="java" %>
<body background="natfl046.gif">
 
<%-- start of scriptlet --%>
<%




LocalDate now=LocalDate.now();
int day=  now.getDayOfMonth();
int month=now.getMonthValue();
int year=now.getYear();
 //LocalTime time=LocalTime.now();

int lastdate = now.plusDays(20).getDayOfMonth();
int lastmonth = now.plusDays(20).getMonthValue();

System.out.println(lastdate);
//System.out.println(month);

 
   // SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_NOW);
   // time=sdf.format(cal.getTime()).toString();
//System.out.println(time);
       String  name =request.getParameter("userid");
 //name = (String)session.getAttribute("userid");
//System.out.println(name);
/*if (name == null){
        // If session is null, redirect to default page to login
        response.sendRedirect("/index.jsp");}*/

               
/*String url= 
"jdbc:jtds:sqlserver://db205.my-hosting-panel.com/cte123_dictionary";
String id= "cte123_dictionary";
String pass = "pass123";*/
try {



/*String url = "jdbc:derby://localhost:1527/record";
String user="re";
        String password="re";
      
        Connection con= DriverManager.getConnection(url,user, password);
        
ResultSet rs=null;


//con = java.sql.DriverManager.getConnection(url);
String sql = "SELECT * FROM image ";
PreparedStatement pStmt = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

 rs = pStmt.executeQuery();
 rs.moveToInsertRow();
                            // updating values in insert row
 //
 //rs.updateInt("date" , day );
 rs.updateInt("month" , month );
  rs.updateString( "name" , "true" ); 
rs.updateInt( "years" , year );   
rs.updateInt("last_date" , lastdate ); 
rs.updateInt( "last_month" , lastmonth );                              // inserting row in resultset & into database
 rs.insertRow();

 // row_No = rs.getRow();

//System.out.println("Row has been updated");
*/



%>
<script type="text/javascript">
    javascript:window.history.forward(1);
    function closed(){
        
     <% if(name==null){
        request.getSession().invalidate(); 
     System.out.println("Session is closed");}
     %>   
  window.close(); 
  
}
    
</script>
<p class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="style3">&nbsp;&nbsp; </p>
<p class="style3">&nbsp;<span class="style1"><span class="style2">WELCOME&nbsp; TO&nbsp;
CTE SYSTEM</span> </span>&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class="style6">&nbsp;</p>
<p class="style6"><strong><a class="style7" href="intro.jsp">INTRODUCTION TO CTE SYSTEM</a></strong></p>
<p class="style6"><strong><a class="style7" href="instruction.jsp">EXERCISES INSTRUCTIONS</a> </strong></p>

<p class="style6"><strong><a class="style7" onclick="closed()" >Exit</a> </strong></p>

</body>
<%
//con.close();
}catch(Exception sqlEx){
sqlEx.printStackTrace();
}
%>
</html>


