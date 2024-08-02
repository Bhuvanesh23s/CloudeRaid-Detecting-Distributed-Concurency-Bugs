
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {color: #FFFFFF}
.style3 {font-weight: bold}
-->
            </style>
		      




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s111,hsign;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(hcode) from bdsdetails ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from bdsdetails  where hcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(20);
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
		  <table width="630" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                <tr>
                  

 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>RID </strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>bug_id 	</strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>creation_date 	</strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>component_name	</strong></div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>product_name	</strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>short_description 	</strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>long_description  	</strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>assignee_name	</strong></div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>reporter_name	</strong></div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>resolution_category </strong></div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>resolution_code	</strong></div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>status_category	</strong></div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>status_code </strong></div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>update_date	</strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>quantity_of_votes </strong></div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>quantity_of_comments </strong></div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>resolution_date</strong></div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>bug_fix_time 	</strong></div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>severity_category </strong></div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>severity_code </strong></div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style2 style57 style56 style5"><strong>hcode</strong></div></td>
                </tr>
		   
		 
        <pre> <h3 align="center"><p align="center" class="style1">
<span class="style1"> Bug Severity Category Chain--->::</span> <%=s111%><br>
 <span class="style1">Bug Severity Category Hash Code --->::</span><%=hsign%></p>
	     </h3></pre>
			<div align="center">
			  <%
							
							}
									i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
								s9=rs.getString(10);
								s10=rs.getString(11);
								s11=rs.getString(12);
								s12=rs.getString(13);
								s13=rs.getString(14);
								s14=rs.getString(15);
								s15=rs.getString(16);
								s16=rs.getString(17);
								s17=rs.getString(18);
								s18=rs.getString(19);
								s19=rs.getString(20);
								s20=rs.getString(21);
								s21=rs.getString(22);
					%>
	      </div>  
			 <tr>
				
				 <td height="0" align="center"  valign="middle"><p align="center" class="style22 style5 style37 style54 style55 style1">&nbsp;</p>
                      <div align="center" class="style22 style5 style37 style54 style55 style1">
                        <div align="center">
                          <%out.println(s1);%>
                        </div>
                      </div></td>
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style5 style37 style54 style55 style1">&nbsp;</p>
                      <div align="center" class="style22 style5 style37 style54 style55 style1">
                        <div align="center">
                          <%out.println(s2);%>
                        </div>
                      </div></td>
                  <td width="116" rowspan="1" align="center" valign="middle" ><div class="style22 style5 style37 style54 style55 style1" style="margin:10px 13px 10px 13px;" >
                     <div align="center">
                       <%out.println(s3);%>
                    </div>
                  </div></td>
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style5 style20 style37 style54 style55 style1">&nbsp;</p>
                      <div align="center" class="style22 style5 style20 style37 style54 style55 style1">
                        <div align="center">
                          <%out.println(s4);%>
                        </div>
                        <p align="center">&nbsp; </p>
                      </div></td>
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style5 style20 style37 style54 style55 style1">&nbsp;</p>
                      <div align="center" class="style22 style5 style20 style37 style54 style55 style1">
                        <div align="center">
                            <%out.println(s5);%>
                        </div>
                        <p align="center">&nbsp; </p>
                      </div></td>
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style5 style20 style37 style54 style55 style1">&nbsp;</p>
                      <div align="center" class="style22 style5 style20 style37 style54 style55 style1">
                        <div align="center">
                          <textarea> <%out.println(s6);%>
                        </textarea>
                        </div>
                        <p align="center">&nbsp; </p>
                      </div></td>
                 
                  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <textarea><%out.println(s7);%></textarea>
                    </div>
                  </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                        <%out.println(s8);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                        <%out.println(s9);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                        <%out.println(s10);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                     <div align="center">
                       <%out.println(s11);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <%out.println(s12);%>
                     </div>
			      </div></td>	
				  
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                        <%out.println(s13);%>
                    </div>
			      </div></td>
				  
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                       <%out.println(s14);%>
                    </div>
			      </div></td>
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <%out.println(s15);%>
                    </div>
			      </div></td>
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                        <%out.println(s16);%>
                    </div>
			      </div></td>
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <%out.println(s17);%>
                    </div>
			      </div></td>
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <%out.println(s18);%>
                    </div>
			      </div></td>
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <%out.println(s19);%>
                    </div>
			      </div></td>
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <%out.println(s20);%>
                    </div>
			      </div></td>
				  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58 style1">
                      <div align="center">
                         <%out.println(s21);%>
                    </div>
			      </div></td>
                </tr>
 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        