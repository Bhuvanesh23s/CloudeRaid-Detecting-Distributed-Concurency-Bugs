          <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Upload_Datasets</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium600w.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {
	font-size: 22px;
	color: #FF0000;
}
.style10 {color: #FF0000}
.style11 {color: #FFFF00}
.style12 {font-size: 16px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
         <h1 class="style5"><a href="index.html" class="style6 style10">CloudRaid Detecting Distributed Concurrency Bugs via Log Mining and Enhancement</a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide2.jpg"  width="960" height="314" alt="" /></a> <a href="#"><img src="images/slide3.jpg"  width="960" height="314" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style10"><strong>Find Bug Severity Status  !!! </strong></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
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
 
 <table width="303" height="129" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
         	  
			  <th height="63" bgcolor="#FF0000"><span class="style6 style5 style3 style1 style11 style12"> RID </span></th>
              <th bgcolor="#FF0000"><span class="style6 style5 style3 style1 style11 style12">Bug Severity Category</span></th>
        </tr>
 
 
 
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{

   String Type=request.getParameter("type");
  
  
    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Type));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
  
 
	String query="select * from bdsdetails where hcode='"+h1+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
		s1=rs.getString(2);
		s2=rs.getString(20);
				
			
		%>
					
							 <tr>
			  
              <td  width="163" height="60" align="center" valign="middle" ><span class="style10 style2 style7"><strong>
                <%out.println(s1);%>
              </strong></span></td>
              <td  width="168" height="60" align="center" valign="middle"><span class="style10 style2 style7"><strong>
                <%out.println(s2);%>
              </strong></span></td>
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
          
		 </p>
                <p align="center"><a href="user_Main.jsp">Back</a></p>
       </p>
                
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li></li>
            <li><a href="index.html">Log Out</a><br />
            </li>
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
   
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
 
   		