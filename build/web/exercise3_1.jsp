<%--
    Document   : exercise3
    Created on : 2010-jan-01, 03:57:57
    Author     : Murtaza
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
<title> Exercise# 3 </title>

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

</head>
<%@ page language="java" %>
<body background="nat.jpg" onload="swdStart('timer',1)">
    <br><br>
    <script language="JavaScript">
javascript:window.history.forward(1);
</script>
    <%
String veg = null;
String arti = null;
String dressi = null;
String floweri= null;
String cuttelri = null;
String transporti = null;
String roundi = null;
String sporti= null;
String livingi = null;
String liquid = null;

try{
String url = "jdbc:derby://localhost:1527/record";
String user="re";
        String password="re";
      
        Connection conn= DriverManager.getConnection(url,user, password);
        Statement st= conn.createStatement();
ResultSet rs=null;
String sql = "SELECT * FROM recording WHERE veg IS NOT NULL "
        + "AND round IS NOT NULL "
        + "AND dress IS NOT NULL "
        + "AND  flower IS NOT NULL "
        + "AND  art IS NOT NULL "
        + "AND  living IS NOT NULL "
        + "AND  cutlry IS NOT NULL "
        + "AND  transport IS NOT NULL "
        + "AND  container IS NOT NULL "
        + "AND  sport IS NOT NULL ";
  

    
 rs = st.executeQuery(sql);
  String[] values=new String[14];
 String[] art=new String[155];

String[] dress=new String[155];
String[] cuterly=new String[155];
String[] flower=new String[155];
String[] round=new String[155];
String[] transport=new String[155];
String[] vegetable=new String[155];
String[] sports=new String[155];
String[] living=new String[155];
String[] container=new String[155];
String[] art2=new String[3];
int[] one=new int[2];
int[] two=new int[2];
int[] three=new int[2];
int[] four=new int[2];
int[] five=new int[2];
String[] round2=new String[3];
String[] transport2=new String[3];
String[] vegetable2=new String[3];
String[] sports2=new String[3];
String[] living2=new String[3];
String[] container2=new String[3];
String[] art22=new String[3];
String[] dress22=new String[3];
String[] cuterly22=new String[3];
String[] flower22=new String[3];
String[] round22=new String[3];
String[] transport22=new String[3];
String[] vegetable22=new String[3];
String[] sports22=new String[3];
String[] living22=new String[3];
String[] container22=new String[3];

 int i=0;
while(rs.next()){
veg =rs.getString("veg");
vegetable[i]=veg;
roundi =rs.getString("round");
round[i]=roundi;
dressi =rs.getString("dress");
dress[i]=dressi;
floweri=rs.getString("flower");
flower[i]=floweri;
arti=rs.getString("art");
art[i]=arti;
livingi =rs.getString("living");
living[i]=livingi;
cuttelri=rs.getString("cutlry");
cuterly[i]=cuttelri;
transporti =rs.getString("transport");
transport[i]=transporti;
liquid=rs.getString("container");
container[i]=liquid;
sporti =rs.getString("sport");
sports[i]=sporti;

i=i+1;
}
Random generator = new Random();

 for(int j=0;j<2;j++){
one[j]=generator.nextInt( 7);

System.out.println(one[j]);
two[j]=generator.nextInt( 7 );

System.out.println(two [j]);
three[j]=generator.nextInt( 7 );

System.out.println(three[j]);
four[j]=generator.nextInt( 9);

System.out.println(four[j]);
five[j]=generator.nextInt( 9 );

System.out.println(five[j]);
 }
     if((one[0]==one[1])||(two[0]==two[1])||(three[0]==three[1])||(four[0]==four[1])||(five[0]==five[1])){
one[0]=4;
one[1]=5;
two[0]=7;
two[1]=3;
three[0]=5;
three[1]=4;
        four[1]=8;
        four[0]=5;
        five[0]=1;
        five[1]=8;
}
 art22[0]=art[five[0]];
art22[1]=art[five[1]];
vegetable22[0]=vegetable[two[0]];
round22[0]=round[four[0]];
living22[0]=living[two[0]];
//sports22[0]=sports[two[0]];
vegetable22[1]=vegetable[two[1]];
round22[1]=round[four[1]];
living22[1]=living[two[1]];
//sports22[1]=sports[two[1]];
container22[0]=container[one[0]];
transport22[0]=transport[three[0]];
cuterly22[0]=cuterly[three[0]];
container22[1]=container[one[1]];
transport22[1]=transport[three[1]];
cuterly22[1]=cuterly[three[1]];
dress22[0]=dress[two[0]];
dress22[1]=dress[two[1]];
flower22[0]=flower[five[0]];
flower22[1]=flower[five[1]];
System.out.println("four"+four[0]);
  switch(four[0]){
  case 1:

       art2[0]=dress22[1];
       values[0]="dress";
       vegetable2[1]=round22[1];
       values[1]="round";
       sports2[0]=dress22[0];
       values[2]="dress";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=round22[0];
       values[4]="round";
       art2[1]=art22[1];
       values[5]="art";
       container2[1]=vegetable22[1];
       values[6]="vege";
      transport2[0]=transport22[0];
      values[7]="transport";
      sports2[1]=art22[0];
      values[8]="art";
      vegetable2[0]=vegetable22[0];
      values[9]="vege";
      transport2[1]=container22[1];
      values[10]="contain";
      round2[1]=transport22[1];
      values[11]="transport";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=container22[0];
     values[13]="contain";
  break;
  case 2:

       art2[0]=art22[0];
       values[0]="art";
       vegetable2[1]=vegetable22[1];
       values[1]="vege";
       sports2[0]=dress22[0];
       values[2]="dress";
       living2[1]=round22[0];
       values[3]="round";
       round2[0]=living22[1];
       values[4]="living";
       art2[1]=container22[0];
       values[5]="contain";
       container2[1]=vegetable22[0];
       values[6]="vege";
      transport2[0]=transport22[0];
      values[7]="trans";
      sports2[1]=dress22[1];
      values[8]="dress";
      vegetable2[0]=container22[1];
      values[9]="contain";
      transport2[1]=round22[1];
      values[10]="round";
      round2[1]=transport22[1];
      values[11]="trans";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=art22[1];
     values[13]="art";
  break;
  case 3:

       art2[0]=art22[0];
       values[0]="art";
       vegetable2[1]=vegetable22[1];
       values[1]="vege";
       sports2[0]=container22[0];
       values[2]="contain";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=round22[0];
       values[4]="round";
       art2[1]=living22[0];
       values[5]="living";
       container2[1]=container22[1];
       values[6]="contain";
      transport2[0]=transport22[0];
      values[7]="trans";
      sports2[1]=dress22[1];
      values[8]="dress";
      vegetable2[0]=vegetable22[0];
      values[9]="vege";
      transport2[1]=transport22[1];
      values[10]="tran";
      round2[1]=round22[1];
      values[11]="round";
      living2[0]=art22[1];
      values[12]="art";
     container2[0]=dress22[0];
     values[13]="dress";
  break;
  case 4:

       art2[0]=vegetable22[0];
       values[0]="vege";
       vegetable2[1]=art22[0];
       values[1]="art";
       sports2[0]=vegetable22[1];
       values[2]="vege";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=round22[0];
       values[4]="round";
       art2[1]=art22[1];
       values[5]="art";
       container2[1]=flower22[0];
       values[6]="flower";
      transport2[0]=transport22[0];
      values[7]="trans";
      sports2[1]=dress22[1];
      values[8]="sport";
      vegetable2[0]=dress22[0];
      values[9]="dress";
      transport2[1]=transport22[1];
      values[10]="trans";
      round2[1]=flower22[1];
      values[11]="flower";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=round22[1];
     values[13]="round";
  break;
  case 5:

       art2[0]=vegetable22[1];
       values[0]="vege";
       vegetable2[1]=art22[0];
       values[1]="art";
       sports2[0]=dress22[1];
       values[2]="dress";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=cuterly22[0];
       values[4]="cut";
       art2[1]=art22[1];
       values[5]="art";
       container2[1]=transport22[0];
       values[6]="transp";
      transport2[0]=container22[1];
      values[7]="cont";
      sports2[1]=cuterly22[1];
      values[8]="cut";
      vegetable2[0]=vegetable22[0];
      values[9]="vege";
      transport2[1]=transport22[1];
      values[10]="transp";
      round2[1]=dress22[0];
      values[11]="dress";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=container22[0];
     values[13]="cont";
  break;
  case 6:

       art2[0]=flower22[0];
       values[0]="flower";
       vegetable2[1]=vegetable22[1];
       values[1]="vege";
       sports2[0]=dress22[0];
       values[2]="dress";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=cuterly22[1];
       values[4]="cut";
       art2[1]=transport22[0];
       values[5]="trans";
       container2[1]=container22[1];
       values[6]="contain";
      transport2[0]=cuterly22[0];
      values[7]="cut";
      sports2[1]=vegetable22[0];
      values[8]="vege";
      vegetable2[0]=dress22[1];
      values[9]="dress";
      transport2[1]=transport22[1];
      values[10]="trans";
      round2[1]=flower22[1];
      values[11]="flower";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=container22[0];
     values[13]="contain";
  break;
  case 7:

       art2[0]=flower22[0];
       values[0]="flower";
       vegetable2[1]=vegetable22[1];
       values[1]="vege";
       sports2[0]=dress22[0];
       values[2]="dress";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=cuterly22[1];
       values[4]="cut";
       art2[1]=art22[0];
       values[5]="art";
       container2[1]=container22[1];
       values[6]="contain";
      transport2[0]=cuterly22[0];
      values[7]="cut";
      sports2[1]=vegetable22[0];
      values[8]="vege";
      vegetable2[0]=dress22[1];
      values[9]="dress";
      transport2[1]=art22[1];
      values[10]="art";
      round2[1]=flower22[1];
      values[11]="flower";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=container22[0];
     values[13]="contain";
  break;
  case 8:

       art2[0]=container[0];
       values[0]="contain";
       vegetable2[1]=vegetable22[1];
       values[1]="vege";
       sports2[0]=dress22[0];
       values[2]="dress";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=cuterly22[1];
       values[4]="cut";
       art2[1]=transport22[0];
       values[5]="trans";
       container2[1]=container22[1];
       values[6]="contain";
      transport2[0]=flower22[0];
      values[7]="flower";
      sports2[1]=vegetable22[0];
      values[8]="vege";
      vegetable2[0]=dress22[1];
      values[9]="dress";
      transport2[1]=transport22[1];
      values[10]="trans";
      round2[1]=flower22[1];
      values[11]="flower";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=cuterly22[0];
     values[13]="cut";
  break;
  default:
  art2[0]=art22[0];
  values[0]="art";
       vegetable2[1]=vegetable22[1];
       values[1]="vege";
       sports2[0]=flower22[0];
       values[2]="flower";
       living2[1]=living22[1];
       values[3]="living";
       round2[0]=round22[0];
       values[4]="round";
       art2[1]=art22[1];
       values[5]="art";
       container2[1]=container22[1];
       values[6]="contain";
      transport2[0]=transport22[0];
      values[7]="trans";
      sports2[1]=flower22[1];
      values[8]="flower";
      vegetable2[0]=vegetable22[0];
      values[9]="vege";
      transport2[1]=transport22[1];
      values[10]="trans";
      round2[1]=round22[1];
      values[11]="round";
      living2[0]=living22[0];
      values[12]="living";
     container2[0]=container22[0];
     values[13]="contain";

  }

 /* first = listy[0].toCharArray();
 sec = listy[1].toCharArray();
 thr = listy[2].toCharArray();
 four = listy[3].toCharArray();
 five = listy[4].toCharArray();
 six = listy[5].toCharArray();
 seven = listy[6].toCharArray();
 eight = listy[7].toCharArray();
 nine = listy[8].toCharArray();
 ten = listy[9].toCharArray();
 elva = listy[10].toCharArray();
 tolv = listy[11].toCharArray();
 thirt = listy[12].toCharArray();
 fyrta = listy[13].toCharArray();
 femta = listy[14].toCharArray();
 sexta = listy[15].toCharArray();*/
%>

<form name ="gui" method ="post" action="select-exercise.jsp">
<center>
    <BR>
     <BR>
      <BR>
       <BR>
    <table name="img" background="white" border="5">

     <tr id="a">
          <td><IMG src=<%=art2[0]%> width="175" height="175" id="1" onclick="data1(this.id,this.name)" name=<%=values[0] %>></td>

          <td><IMG src=<%=vegetable2[1]%> width="175" height="175" id="2" onclick="data1(this.id,this.name)" name=<%=values[1] %>></td>
      
        <td><IMG src=<%=sports2[0]%> width="175" height="175" id="3" onclick="data1(this.id,this.name)" name=<%=values[2] %>></td>

        <td><IMG src=<%=living2[1]%> width="175" height="175" id="4" onclick="data1(this.id,this.name)" name=<%=values[3] %>></td>
     
        <td><IMG src=<%=round2[0]%> width="175" height="175" id="5" onclick="data1(this.id,this.name)" name=<%=values[4] %>></td>

        <td><IMG src=<%=art2[1]%> width="175" height="175" id="6" onclick="data1(this.id,this.name)" name=<%=values[5] %>></td>
     
        <td><IMG src=<%=container2[1]%> width="175" height="175" id="7" onclick="data1(this.id,this.name)" name=<%=values[6] %>></td>
       </tr>

      <tr>
        <td><IMG src=<%=transport2[0]%> width="175" height="175" id="8" onclick="data1(this.id,this.name)" name=<%=values[7] %>></td>
      
        <td><IMG src=<%=sports2[1]%> width="175" height="175" id="9" onclick="data1(this.id,this.name)" name=<%=values[8] %>></td>

        <td><IMG src=<%=vegetable2[0]%> width="175" height="175" id="10" onclick="data1(this.id,this.name)" name=<%=values[9] %>></td>
     
        <td><IMG src=<%=transport2[1]%> width="175" height="175" id="11" onclick="data1(this.id,this.name)" name=<%=values[10] %>></td>

        <td><IMG src=<%=round2[1]%> width="175" height="175" id="12" onclick="data1(this.id,this.name)" name=<%=values[11] %>></td>
      
        <td><IMG src=<%=living2[0]%> width="175" height="175" id="13" onclick="data1(this.id,this.name)" name=<%=values[12] %>></td>

        <td><IMG src=<%=container2[0]%> width="175" height="175" id="14" onclick="data1(this.id,this.name)" name=<%=values[13] %>></td>
      </tr>

  </table>

  </table>
    </center>
 <script type="text/javascript">
            //var pre;
            //var txt=0;
            var to=null;
            var imgi=new Array();
            var memo=1;
            var time=0;
          var trick=0;
            var count=0;
            var z=new Array();
            var oldname=null;
             var omissions=0;


            //pre=document.gui.secchar.id;


function data1(d,naam){
 //var rowind=c.rowIndex;

 //var txt=c.rowIndex;
// var ind=c.cellIndex;
 imgi[memo]=document.getElementById(d).src;
 document.gui.thechar.value=imgi[memo];
if(to==null){

             document.getElementById(d).src="nat.jpg";
         oldname=naam;

         to=1;

     }
     else{

         document.getElementById(d).src="nat.jpg";
        document.gui.tre.value=naam;

     }
            //alert(naam);
     //x = document.getElementById('a');
     //y= {x.getElementsByTagName("TD");
 //zo=y.item(ind).firstChild.data;
    //document.gui.hiddenBox.value=zo;
    //if(time == 0){
   // swdStart('timer',1);
    // time=1;}

    count+=1;
    z[memo]=d;
 document.gui.sec.value=d;
    if(count==2){
    compare();
    }
memo+=1;
trick += 1;
}

   //fresh=document.gui.hiddenBox.value;

var swdCycleTime=50;


// Functional Code

var swd,swdObj,swdct,swdnow,swdcycle;
var swdObjAry=new Array();

function swdStart(id,ud){
 swdObj=document.getElementById(id);
 swdObj.value=0;
 swdnow=new Date();
 swdObj.now=swdnow.getTime();
 swdObj.ud=ud*1000;
 swdObj.d=0;
 if (!swdObj.c){
  swdObj.c=1;
  swdObjAry[swdObjAry.length]=swdObj;
 }
 if (swdObj.c==2){ swdObj.c=1; }
}

function swdCycle(){
 swdcycle=new Date().getTime();
 for (swd0=0;swd0<swdObjAry.length;swd0++){
  if (swdcycle>swdObjAry[swd0].now+swdObjAry[swd0].ud&&swdObjAry[swd0].c==1){
   swdObjAry[swd0].d++;
   swdObjAry[swd0].now=swdObjAry[swd0].now+swdObjAry[swd0].ud;
   swdObjAry[swd0].value=swdObjAry[swd0].d;
  }
 }
}

function swdStop(id){
 swdObj=document.getElementById(id);
 swdObj.c=2;
}


setInterval('swdCycle()',swdCycleTime);

//-->






 </script>


  <script type="text/javascript">
var rightimg;
var helper=0;
var recordnew=0;

var correctwrd=0;
var wrongwrd=0;
var counter=0;
var flag=0;

 var mem=new Array();

 var dum=null;
     var wrongee=0;
      function compare(){


 dumm =document.gui.tre.value;
    if(counter<6){


       if(oldname!=dumm){
           wrongee+=1;
           flag=0;
           //alert( wrongee);
       }
       else{
           correctwrd+=1;
           flag=1;
           }



        to=null;
        count=0;
    //memo=document.gui.sec.value;
    time=1;
    counter+=1;
    //check=0;
   // count=0;
    //right=0;

    //whiter();
  //  alert( counter);
    }
else{
    if(oldname!=dumm){
           wrongee+=1;
           //alert( wrongee);
       }
       else{
           correctwrd+=1;
           }

   document.gui.Submit1.click();
}

 //alert("correct="+oldname+"wrong="+dumm);




   }
   function omit() {


   var totals=wrongee + correctwrd;
if(totals<7){
    omissions =(7 - (totals));
}else{
    omissions=0;
    }
confirmation();

}
   function betterMo() {


wrongee=0;
correctwrd=0;
 counter=0;
    to=null;
    oldname=null;
    memo=1;
   count=0;

for (var i=1;i<=trick;i++){
   // alert(z[i]);
  recordnew = z[i];
   document.getElementById(recordnew).src=imgi[i];
}



}
function undo(){
   // document.gui.thechar.value= helper;
   helper= document.gui.sec.value;
   rightimg=document.gui.thechar.value;
   //alert(helper);
 document.getElementById(helper).src=rightimg;
 //wrong=wrong-1;
 //document.gui.hiddenBox.value=wrong;
count=count-1;
if(flag==1){

     correctwrd=correctwrd-1;
     //document.gui.first.value=record;

 }else{

     wrongee=wrongee-1;
     //document.gui.first.value=record;

 }


}

function confirmation(){


        swdStop('timer');
            time =document.gui.secchar.value ;
            time=parseInt(time)+60;
            if (time>=60){
                min=time/60;
                min=parseInt(min);
                secd=time%60;
                 alert(" Your score for this excercise ?\n\n Omissions:   "+omissions+"\n Wrong:    "+wrongee+"\n Time:            "+min+" minute  "+secd+" sec ");
            }
            else{
        alert(" Your score for this excercise ?\n\n  Omissions:   "+omissions+"\n Wrong:    "+wrongee+"\n Time:                 "+ time+" sec");
            }
        //alert(" Your score for this excercise ?\n  Correctly Match: "+correctwrd+"\n  Wrong : "+wrongee+"\n  Time: "+ time+"sec")
   document.gui.button2.click();

 
}

       </script>


<input name="secchar" class="style12" style="width: 112px; height: 24px" type="text"  id="timer" onkeypress="return false ; " value=" "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="style12" value="Reload Page" name ="button2">
<br /><br /><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="Button1" style="width: 90px; height: 32px" type="button" value="CLEAR" onclick="betterMo()" />&nbsp;&nbsp;
	<input name="Reset1" style="width: 89px; height: 33px" type="button" value="UNDO" onclick="undo()" />&nbsp;&nbsp;
	<input name="ommit" style="width: 89px; height: 33px" type="button" value="OMISSION" onclick="omit()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center><input name="Submit1" style="width: 73px; height: 34px" type="button" value="OK" onclick="confirmation()" class="style12" />
<br /><input name="thechar" class="style12" style="width: 112px; height: 24px" type="text"  /><br /><input name="sec" class="style12" style="width: 112px; height: 24px" type="text" /><br /><input name="tre" class="style12" style="width: 112px; height: 24px" type="text" /></form>

</body>


<%
conn.close();
}catch(Exception sqlEx){
System.out.println(sqlEx);
}
%>
</html>

