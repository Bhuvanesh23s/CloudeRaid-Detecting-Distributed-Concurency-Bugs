
<%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");      
    try{
	
		
		
		if(type.equalsIgnoreCase("admin"))
		{
		
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			
			application.setAttribute("admin",username);
			
			String sql="SELECT * FROM admin where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("admin_Main.jsp");
			}
			else
			{
				response.sendRedirect("wrong_Login.jsp");
			}
		}
		
		
		
		 if(type.equalsIgnoreCase("user"))
		{
		
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			

			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
			
			   String uname=rs.getString(2);
			   
			   application.setAttribute("user",uname);
			
				response.sendRedirect("user_Main.jsp");
			}
			else
			{
				response.sendRedirect("wrong_Login.jsp");
			}
		}
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>