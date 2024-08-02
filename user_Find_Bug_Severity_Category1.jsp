<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bug Severity Category Type</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-georgia.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style4 {
	color: #FF0000;
	font-size: 14px;
}
.style7 {
	color: #FF0000;
	font-weight: bold;
}
.style11 {color: #FFFF00}
.style12 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1><a href="index.html"><span class="style12">CloudRaid Detecting Distributed Concurrency Bugs via Log Mining and Enhancement</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav"></div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="img"></div>
          <div class="post_content">
            <p align="justify">&nbsp;</p>
			
       	    <h2 align="center"><span class="style7">Bug Severity Category Type    !!! </span><br />
       	      <br />
       	    </h2>
		
	<table width="310" height="92" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF33">
					<td  width="302" height="36" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style6 style11">Bug Severity Category Type</div></td>
					
					</tr>
					 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
					<%
String s1,s2,s13="",s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{

   String RID=request.getParameter("RID");
   String bid=request.getParameter("bid");
   String bdesc=request.getParameter("bdesc");
 
	String query="select * from bdsdetails where RID='"+RID+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
		s13=rs.getString(20);
		
		
			
		%>
					
							<tr bgcolor="#00FFFF">
						
							  <td  width="302" height="50" valign="baseline" nowrap="nowrap" bgcolor="#FFFFFF" style="color:#000000;">
							   
							      <div align="center">
							        <%out.println(s13);%>
					              </div></td>	
								
					</tr>
					<%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
			 
			 
<p align="right"><a href="user_Main.jsp" class="style4">Back</a></p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
