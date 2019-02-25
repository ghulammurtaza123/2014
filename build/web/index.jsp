<%-- 
    Document   : index
    Created on : 2010-maj-12, 23:05:43
    Author     : Murtaza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head><title> **** CTE SYSTEM **** </title>
    <style type="text/css">

.style12 {
	text-align: center;
	color: #FF2C00;
        visibility:hidden;

}


</style></head>
    <body background="nat.jpg">
    <BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
    <center><h1> Enter your login details: </h1>
<form METHOD="POST" ACTION="http://localhost:8080/web/MyServlet"  NAME="myForm" >
<BR><Strong>&nbsp;&nbsp;User ID:  </Strong>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" name="userid"/>
<BR>
<BR><Strong>Password: </Strong>    &nbsp;&nbsp;&nbsp; <INPUT TYPE="password" name="pwd"/>
<script type="text/javascript">
    var confirm_name ;
    var confirm_pwd;
    function confirmation(){
    confirm_name=document.myForm.userid.value.length;
    confirm_pwd=document.myForm.pwd.value.length;
  
    if(confirm_name == "0" || confirm_pwd == "0"){
        alert("Login details are missing");
        document.myForm.userid.focus();
        }
    else{
        document.myForm.submit.click();


    }


}
</script>
<BR> <BR>
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Submited" name ="submit"  class="style12"  /><input type="button" value="Submit" name ="button1" onclick="confirmation()"/>
&nbsp;&nbsp;&nbsp;&nbsp;<a href="register.jsp">Register</a>


</form> </center>
</body>
</html>