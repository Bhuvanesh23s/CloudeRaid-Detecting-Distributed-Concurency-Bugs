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
.style9 {color: #FFFF00; font-weight: bold; }
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
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Upload Datasets !!! </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p> 
		  
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
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
				      
		
						String fname=request.getParameter("fname");
						
		String sql="delete from bdsdetails";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);
		
	   String RID,
bug_id,	
creation_date,	
component_name,	
product_name,	
short_description,	
long_description,	
assignee_name,	
reporter_name,	
resolution_category,	
resolution_code,	
status_category,	
status_code,	
update_date,	
quantity_of_votes,	
quantity_of_comments,	
resolution_date,	
bug_fix_time,	
severity_category,	
severity_code,
hcode;
		
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
		   
		   		  if( row.getCell(0)==null) { RID= "0";}
				  else RID = row.getCell(0).toString();
	
	   		      if( row.getCell(1)==null) { bug_id = "0";}  
                  else bug_id = row.getCell(1).toString();   
 
                  if( row.getCell(2)==null) { creation_date = "0";}  
                  else creation_date = row.getCell(2).toString();   
				  
				  if( row.getCell(3)==null) { component_name = "0";}
				  else component_name = row.getCell(3).toString();
				  
				  if( row.getCell(4)==null) { product_name= "0";}
				  else product_name = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { short_description= "0";}
				  else short_description = row.getCell(5).toString();
	
	   		      if( row.getCell(6)==null) { long_description = "0";}  
                  else long_description = row.getCell(6).toString();   
 
                  if( row.getCell(7)==null) { assignee_name = "0";}  
                  else assignee_name = row.getCell(7).toString();   
				  
				  if( row.getCell(8)==null) { reporter_name = "0";}
				  else reporter_name = row.getCell(8).toString();
				  
				  if( row.getCell(9)==null) { resolution_category= "0";}
				  else resolution_category = row.getCell(9).toString();
				  
				  if( row.getCell(10)==null) { resolution_code	= "0";}
				  else resolution_code	 = row.getCell(10).toString();
	
	   		      if( row.getCell(11)==null) { status_category = "0";}  
                  else status_category = row.getCell(11).toString();   
 
                  if( row.getCell(12)==null) { status_code = "0";}  
                  else status_code = row.getCell(12).toString();   
				  
				  if( row.getCell(13)==null) { update_date = "0";}
				  else update_date = row.getCell(13).toString();
				  
				  if( row.getCell(14)==null) {quantity_of_votes= "0";}
				  else quantity_of_votes = row.getCell(14).toString();
				  
				  if( row.getCell(15)==null) { quantity_of_comments= "0";}
				  else quantity_of_comments= row.getCell(15).toString();
	
	   		      if( row.getCell(16)==null) { resolution_date = "0";}  
                  else resolution_date = row.getCell(16).toString();   
 
                  if( row.getCell(17)==null) { bug_fix_time = "0";}  
                  else bug_fix_time = row.getCell(17).toString();   
				  
				  if( row.getCell(18)==null) { severity_category = "0";}
				  else severity_category= row.getCell(18).toString();
				  
				  if( row.getCell(19)==null) { severity_code= "0";}
				  else severity_code = row.getCell(19).toString();
				  
				   
				 	  
				  			   
					String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(severity_category));
			
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
					
									
/*Statement stss=connection.createStatement();
stss.executeUpdate("insert into 
bdsdetails(RID,bug_id,creation_date,component_name,product_name,short_description,long_description,assignee_name,reporter_name,resolution_category,resolution_code,status_category,status_code,update_date,quantity_of_votes,quantity_of_comments,resolution_date,bug_fix_time,severity_category,severity_code,hcode) values ('"+RID+"','"+bug_ide+"','"+creation_date+"','"+component_name+"','"+product_name+"','"+short_description+"','"+long_description+"','"+assignee_name+"','"+reporter_name+"','"+resolution_category+"','"+resolution_code+"',
'"+status_category+"','"+status_code+"','"+update_date+"','"+quantity_of_votes+"','"+quantity_of_comments+"','"+resolution_date+"','"+bug_fix_time+"','"+severity_category+"',
'"+severity_code+"','"+h1+"')"); */

PreparedStatement ps=connection.prepareStatement("insert into bdsdetails(RID,bug_id,creation_date,component_name,product_name,short_description,long_description,assignee_name,reporter_name,resolution_category,resolution_code,status_category,status_code,update_date,quantity_of_votes,quantity_of_comments,resolution_date,bug_fix_time,severity_category,severity_code,hcode)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					
							
						ps.setString(1,RID);
						ps.setString(2,bug_id);
ps.setString(3,creation_date);
ps.setString(4,component_name);
ps.setString(5,product_name);
ps.setString(6,short_description);
ps.setString(7,long_description);
ps.setString(8,assignee_name);
ps.setString(9,reporter_name);
ps.setString(10,resolution_category);
ps.setString(11,resolution_code);
ps.setString(12,status_category);
ps.setString(13,status_code);
ps.setString(14,update_date);
ps.setString(15,quantity_of_votes);
ps.setString(16,quantity_of_comments);
ps.setString(17,resolution_date);
ps.setString(18,bug_fix_time);
ps.setString(19,severity_category);
ps.setString(20,severity_code);
ps.setString(21,h1);
ps.executeUpdate();



				     
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
      
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h2>
		  
		  
				</p>
                <p align="right"><a href="user_Main.jsp">Back</a></p>
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
