<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search History</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style3 {font-size: 16px}
.style4 {font-size: 15px}
.style5 {color: #FFFF00}
.style6 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="admin_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="user_Login.jsp"><span>User</span></a></li>
          <li><a href="about_Project.html"><span></span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h2><span class="style1">CloudRaid Detecting Distributed Concurrency Bugs<br/>
          <small>via Log Mining and Enhancement</small></span></h2>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="294" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="294" alt="" /> </a><a href="#"><img src="images/slide3.jpg" width="960" height="294" alt="" /></a></div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style6">User  <%=application.getAttribute("user")%> Search History </h2>
          
          <div class="clr"></div>
       
            <p></p>
            <p> 
			<%@ include file="connect.jsp" %>
		  <table width="581" border="1" align="center"  cellpadding="0" cellspacing="0"  >
            <tr>
              <th width="52" height="31" bgcolor="#FF0000" scope="col"><span class="style5 style3 style14"><strong>SI NO </strong></span></th>
              <th width="143" bgcolor="#FF0000" scope="col"><span class="style5 style3 style14"><strong>Community</strong></span></th>
			  <th width="117" bgcolor="#FF0000" scope="col"><span class="style5 style3 style14"><strong>Post_Name</strong></span></th>
              <th width="127" bgcolor="#FF0000" scope="col"><span class="style5 style3 style14"><strong>Keyword</strong></span></th>
              <th width="130" bgcolor="#FF0000" scope="col"><span class="style5 style3 style14"><strong>Date and Time </strong></span></th>
            </tr>
			         
			
            <%

    String user=(String)application.getAttribute("user"); 	
	String s1="",s2="",s3="",s4="",s5="";
    int i=1;

      	try 
	{
        
           String query="select * from search Where user_name='"+user+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		
	
%>
            <tr>
              <td height="47"><div align="center" class="style4"><span class="style15"><%=i%></span></div></td>
              <td><div align="center" class="style4"><span class="style15"><%=s2%></span></div></td>
              <td><div align="center" class="style4"><span class="style15"><%=s3%></span></div></td>
              <td><div align="center" class="style4"><span class="style15"><%=s4%></span></div></td>
			  <td><div align="center" class="style4"><span class="style15"><%=s5%></span></div></td>
            </tr>
				  <%
i=i+1;
		}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            <tr>
              <td height="20">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
			  <td>&nbsp;</td>
            </tr>
        </table>
            </p>
            
            <p>&nbsp;</p>
            <p align="right"><a href="user_Main.jsp">Back</a></p>
            <div class="clr"></div>
        </div>
        <div class="article">
          
          <div class="clr"></div>
        
          
          <div class="clr"></div>
        </div>
       
      </div>
      <div class="sidebar">
        <div class="searchform">
         
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>User </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="user_Main.jsp"><span>User Main  </span></a></li>
          <li><a href="user_Login.jsp"><span>Log Out </span></a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
     
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>
