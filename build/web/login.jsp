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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> ****CTE****</title>
    
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
            border-width: 0;
            color: #FF2C00;
        }
        .style12 {
            text-align: center;
            color: #FF2C00;
            visibility:hidden;
        }

    </style>
    <body onload="index.jsp">
    
     <%@ page language="java" %>
     <%
        request.getSession().invalidate(); 
     System.out.println("Session is closed");
     %>
    </body>
</html>
