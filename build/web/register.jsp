<%-- 
    Document   : register
    Created on : Feb 15, 2011, 6:20:45 PM
    Author     : murtaza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head><title>Register</title>
    <style type="text/css">

.style12 {
	text-align: center;
	color: #FF2C00;
        visibility:hidden;

}


</style></head>
    <body background="nat.jpg">
    <BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
 <center><h2>Login details are missing. Register yourself</h2>
<form METHOD="POST" ACTION="http://localhost:8080/web/register" NAME="myForm">
<BR><Strong> Name: </Strong>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" NAME="userid"/>
<BR><BR><Strong> Email:</Strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" NAME="emails"/>
<BR><BR><Strong>Password: </Strong> &nbsp;<INPUT TYPE="password" NAME="pwd"/>
<script type="text/javascript">
    var confirm_name ;
    var confirm_pwd;
    var confirm_add;
    
    
    function confirmation(){
    confirm_name=document.myForm.userid.value.length;
    confirm_pwd=document.myForm.pwd.value.length;
     confirm_emaill=document.myForm.emails.value.length;
     
     var x=document.myForm.emails.value;
var atpos=x.indexOf("@");          //address begin with @
var dotpos=x.lastIndexOf(".");     //address ends with .
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)    
  {
  alert("Not a valid e-mail address");
 document.myForm.email.focus();
  }
    if(confirm_name == "0" || confirm_pwd == "0" || confirm_emaill == "0"){
        alert("Account details are missing");
        document.myForm.userid.focus();
        }
    else{
        document.myForm.submit.click();


    }


}
</script>
<BR> <BR>
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Registered" name ="submit"  class="style12"  /><input type="button" value="Register" name ="button1" onclick="confirmation()"/>

<input type="button" value="Already Registered" name ="button2" onClick="history.go(-1)">
 
</form> </center>
</body>
</html>