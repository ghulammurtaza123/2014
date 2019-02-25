<%-- 
    Document   : thanks2
    Created on : Mar 15, 2012, 4:54:34 PM
    Author     : murtaza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ****CTE****</title>
    </head>
     <%@ page language="java" %>
    <body background="nat.jpg">
      <%
   String DATE_FORMAT = "dd-MM-yyyy";    
Calendar c1 = Calendar.getInstance();

                SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
		Date d1 = new Date();
		//		System.out.println("Todays date in Calendar Format : "+c1);
		System.out.println("c1.getTime() : " + c1.getTime());
		System.out.println("c1.get(Calendar.YEAR): "+ c1.get(Calendar.YEAR));
		System.out.println("Todays date in Date Format : " + d1);
		
		c1.add(Calendar.DATE, 20);
		System.out.println("Date + 20 days is : "+ sdf.format(c1.getTime()));




%>


    </body>
</html>
