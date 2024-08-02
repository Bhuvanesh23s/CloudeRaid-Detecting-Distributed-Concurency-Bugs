<style type="text/css">
<!--
.style1 {color: #FF0000}
.style2 {color: #FFFF00}
-->
</style>
          <table width="630" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                <tr>
                  

 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">RID </div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">bug_id 	</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">creation_date 	</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">component_name	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">product_name	</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">short_description 	</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">long_description  	</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">assignee_name	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">reporter_name	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">resolution_category </div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">resolution_code	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">status_category	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">status_code </div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">update_date	</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">quantity_of_votes </div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">quantity_of_comments </div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">resolution_date</div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">bug_fix_time 	</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">severity_category </div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">severity_code </div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style2">hcode</div></td>

                </tr>
                <%@ include file="connect.jsp" %>
                <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21;
						int i=0;
						try 
						{
						   	String query="select * from bdsdetails"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
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
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
</table>
              