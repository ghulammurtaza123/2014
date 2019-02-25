<%--
    Document   : instruction 1
    Created on : 2010-jul-26, 20:31:39
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">



<html>

<head>
<meta content="sv" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>****** CTE SYSTEM ******</title>
<style type="text/css">
.style1 {
	text-decoration: none;




}
a:visited{
    color:red;

}
.style2 {
	color: red;
	text-align: center;
        visibility: visible;
}
.style3 {
	font-size: xx-large;
        visibility: hidden;
}
.visible {visibility: visible}
.hidden {visibility: hidden}


</style>
</head>
<script language = "JavaScript">
javascript:window.history.forward(1);
</script>
<body background="nat.jpg">

<p>&nbsp;</p>
    <p class="style2"><span class="style3"><strong>INSTRUCTIONS</strong></span></p>
<form action="index.jsp" name="fir"><br><br><br>
<ol style="font-size:25px">
	<li ><a class="style1"  href="help/exercise1t.jsp" id="1" onclick="news(this.id)"> FIND THE WORD!</a></li>
        <li><a class="style1" href="help/exercise2t.jsp" id="2" onclick="news(this.id)"> DISCOVER THE PICTURE!</a></li>
	<li><a class="style1" href="help/exercise3t.jsp" id="3" onclick="news(this.id)"> ALIKE OR DIFFERENT!</a></li>
        <li><a class="style1" href="help/exercise4t.jsp" id="4" onclick="news(this.id)"> COMPLETE THE PICTURE!</a></li>
	<li><a class="style1" href="help/exercise5t.jsp" id="5" onclick="news(this.id)"> WHICH OF THE TWO!</a></li>
        <li><a class="style1" href="help/exercise6t.jsp" id="6" onclick="news(this.id)"> WHERE IS IT LOCATED!</a></li>
</ol><BR>
<BR><BR>
<script type="text/javascript">
    var temp=new Array();
    var temp1;
    var temp2;
    var temp3;
    var temp4;
    var temp5;
    var temp6;

    var t=null;
    var visible_link = true;

<%String name = (String)session.getAttribute("number");%>
    <%String name2 = (String)session.getAttribute("number2");%>
        <%String name3 = (String)session.getAttribute("number3");%>
            <%String name4 = (String)session.getAttribute("number4");%>
                <%String name5 = (String)session.getAttribute("number5");%>
                    <%String name6 = (String)session.getAttribute("number6");%>

   
       
temp1 =<%=name%>;
temp2 =<%=name2%>;
temp3 =<%=name3%>;
temp4 =<%=name4%>;
temp5 =<%=name5%>;
temp6 =<%=name6%>;

       
/*
document.write(temp2);
document.write(temp[3]);
document.write(temp[4]);
document.write(temp[5]);
document.write(temp[6]);*/
     



   //    document.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
//document.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp");

        </script>
<h2><div align="right"><a href=mainpage.jsp id="first"  STYLE="text-decoration:none" ><font color=blue >Go to the Main Page >> </font></a></div></h2>

      







</form>
</body>

</html>

