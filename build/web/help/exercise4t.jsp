<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1"
 http-equiv="content-type">
  <title>exercise4</title>
</head>
<script language="JavaScript">
javascript:window.history.forward(1);
</script>
<body>
    <form action="../instruction.jsp">
<div style="text-align: center;"><big style="color: rgb(255, 0, 0);"><big><span
 style="font-weight: bold;"><br>
Steps
to Follow<br>
</span></big></big>
<div style="text-align: left;">
<div style="text-align: center;"><big style="color: rgb(255, 0, 0);"><img
 style="width: 782px; height: 519px;" alt=""
 src="exercise4.jpg"><br>
<br>
</big>
<ul style="text-align: left;">
  <li><span style="" lang="EN-GB">Guess which square logically
completes the
picture.&nbsp;</span></li>
  <li><span style="" lang="EN-GB">To select the square, click on
it.&nbsp;</span></li>
  <li><span style="" lang="EN-GB">To confirm your choice, click on
the &ldquo;match&rdquo; button.</span></li>
  <li><span style="" lang="EN-GB">To reset your selection, click on the
&ldquo;reset&rdquo; button.&nbsp;</span></li>
  <li><span style="" lang="EN-GB">Time
is kept as the exercise appears.</span></li>
  <li><span style="" lang="EN-GB">Time count ends as you click on the
&ldquo;match&rdquo;
button.<o:p></o:p></span></li>
</ul>
<br>
</div>
<big style="color: rgb(255, 0, 0);"><big><span
 style="font-weight: bold;"></span></big></big></div>
</div>
          <%
        HttpSession s = request.getSession();
s.setAttribute("number4", "4");%>
        <center><input name="Submit1" style="width: 73px; height: 34px" type="submit" value="Back" /></center></form>
</body>
</html>
