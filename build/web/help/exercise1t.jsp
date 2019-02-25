<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.io.*"%>


<html>
<head>
    <style type="text/css">
        
        #spanid{
            font-size: 12pt;
            font-family:  
            Times New Roman 
            , 
            serif 
        }

    </style>
  <meta content="text/html; charset=ISO-8859-1"
 http-equiv="content-type">
  <title>Exercise1</title>
</head>
<script language="JavaScript">
javascript:window.history.forward(1);
</script>
<body>
    <form action="../instruction.jsp">
<div style="text-align: center;">&nbsp;
&nbsp; &nbsp;&nbsp;<big style="color: rgb(255, 0, 0);"><big><span
 style="font-weight: bold;">Steps
to Follow<br>
</span></big></big><span
 style="font-size: 10.5pt; font-family:Times New Roman,serif;"
 lang="EN-GB"></span><br>
<span style="font-size: 10.5pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB"></span><span
 style="font-size: 10.5pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB"><img style="width: 646px; height: 528px;" alt=""
 src="exercise1.jpg"
 v:shapes="_x0000_i1025"></span><br>
<br style="" clear="all">
<br>
<div style="text-align: left;">
<ul>
  <li>Right Column shows the list
of words.</li>
  <li>Left table shows matrix of
letters.</li>
  <li>First select a word by
clicking on it in the list, then select its letters in the matrix by
clicking on them one by one.</li>
  <li><span
 id="spanid"
 lang="EN-GB">Words can be written
horizontally, vertically or diagonally in the matrix, both forwards and
backwards.</span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">Find all the words written forwards or
backwards into the matrix of letters. </span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">There are also random
letters to fill the matrix.</span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">Only when a whole word is found, click the
&ldquo;ok&rdquo; button and find the next one.</span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">Repeat steps to find next word.<br>
    </span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">To undo the last selected letter, click on the
&ldquo;undo&rdquo; button.<br>
    </span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">To clear all the selected letters, click on the
&ldquo;clear&rdquo; button.<br>
    </span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">Time is kept as the exercise appears.<br>
    </span></li>
  <li><span
 style="font-size: 12pt; font-family:  Times New Roman , serif ;"
 lang="EN-GB">Time count ends as you press the &ldquo;ok&rdquo; button
for the last time.<br>
    </span></li>
</ul>
</div>
</div>
        <%
        HttpSession s = request.getSession();
s.setAttribute("number", "1");%>
    <center><input name="Submit1" style="width: 73px; height: 34px" type="submit" value="Back" /></center></form>
</body>
</html>
