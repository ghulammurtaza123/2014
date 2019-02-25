<%-- 

    Document   : thanks
    Created on : Mar 13, 2012, 8:52:18 PM
    Author     : murtaza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE htmlPUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="javax.swing.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>thanks</title>
    </head>
    <%@ page language="java" %>
    <body background="nat.jpg">
        <%
        int tidd=0;
         String[] names = new String[50];
                     String[] corrects = new  String[50];
                     String[] wrongs= new  String[50];
                     String[] times = new  String[50];
         String[] exercises = new String[50];
                    
        String old_Wrong[]=request.getParameterValues("wrong[]");



StringTokenizer ste = new StringTokenizer(old_Wrong[0], ",");

String correct_wrd = ste.nextToken();
String wrong_wrd = ste.nextToken();
String old_time  = ste.nextToken();
String name = (String)session.getAttribute("named");




try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
String url = "jdbc:odbc:wordsdsn";


Connection con = DriverManager.getConnection(url);
String sql2 = "SELECT * FROM " + name ;
 
PreparedStatement pStmt2 = con.prepareStatement(sql2,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

ResultSet rs2 = pStmt2.executeQuery();
rs2.moveToInsertRow();
                            // updating values in insert row
  rs2.updateString("times",old_time  );
 rs2.updateString( "correct" ,correct_wrd );
 rs2.updateString( "wrong",wrong_wrd );
 rs2.updateString( "exercise","Exercise#6" );
 rs2.updateString( "name",name );
                                   // inserting row in resultset & into database
 rs2.insertRow();

 


String sql3 = "SELECT * FROM " + name ;
PreparedStatement st = con.prepareStatement(sql3,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
ResultSet rs3 = st.executeQuery();
rs3.absolute(-9);
int counting=0;
while(rs3.next()){
System.out.println(counting);
names[counting] =rs3.getString("name");
System.out.println(names[counting]);
corrects[counting] =rs3.getString("correct");
wrongs[counting] =rs3.getString("wrong");
times [counting] =rs3.getString("times");
exercises[counting] =rs3.getString("exercise");

counting=counting+1;
}


JOptionPane.showMessageDialog( null, exercises[0]+ "    Corrects: "+corrects[0]+ "    Wrongs: "+wrongs[0]+ " time: "+times[0]+"sec \n"+
        exercises[1]+ "    Corrects:  "+corrects[1]+ " Wrongs: "+wrongs[1]+ "  time: "+times[1]+ "sec \n"+
        exercises[2]+ "  Corrects: "+corrects[2]+ "  Wrongs: "+wrongs[2]+ "   time: "+times[2]+ "sec \n"+
        exercises[3]+ "  Corrects: "+corrects[3]+ "  Wrongs: "+wrongs[3]+ "   time: "+times[3]+ "sec \n"+
        exercises[4]+ "    Corrects:  "+corrects[4]+ "    Wrongs: "+wrongs[4]+ "   time: "+times[4]+ "sec \n"+
        exercises[5]+ "    Corrects:  "+corrects[5]+ "    Wrongs: "+wrongs[5]+ "   time: "+times[5]+ "sec \n"+
        exercises[6]+ "    Corrects:  "+corrects[6]+ "    Wrongs: "+wrongs[6]+ "   time: "+times[6]+ "sec \n"+
        exercises[7]+ "    Corrects:  "+corrects[7]+ "    Wrongs: "+wrongs[7]+ "   time: "+times[7]+ "sec ");




 
   
        
        
        
        %>
<script>javascript:window.history.forward(1);</script>
       <form name ="gui" method ="post" action="index.jsp">
           <br><br><br><br><br><br><br><br><br>
<center><p><font size=12 face="Comic Sans Ms">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
Thank you for completing exercises!</font></p>
<br><br><br><br><br><br><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
&nbsp;<input style="WIDTH: 97px; HEIGHT: 40px" name="Exit" value="Exit" size="48" type="submit">&nbsp;&nbsp;&nbsp;&nbsp;</center></p>
 </form>   
</body>
  
<%

con.close();
}catch(Exception sqlEx){
System.out.println(sqlEx);
}
%>  
</html>
