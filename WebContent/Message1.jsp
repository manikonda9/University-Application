<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,java.util.*,java.util.Date.*,java.io.File,java.text.*,university.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload</title>
</head>
<body>
<%
User user=(User)session.getAttribute("user");
	String email=null;
	if(user==null)
	{
		%></script><script>window.location.href='Login.jsp';</script><%
	}
	else{
		email=user.getEmailid();
	}
	%>
   
   <%
   
  // User user=(User)session.getAttribute("user");
	//String email=user.getEmailid();
   //System.out.println("This"+str);
   String photopath=(String)request.getAttribute("file");
   String url="jdbc:oracle:thin:@localhost:1521:XE";
		 String username="system";
		 String Password="admin";
		 Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
       String status="";
       try
       {
    	   Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, username, Password);
    	   String query="update registration set photo=? where email_id=?";
    	   pstmt=con.prepareStatement(query);
    	   pstmt.setString(1,photopath);
    	   pstmt.setString(2,email);
    	   if(pstmt.executeUpdate()>0)
    		   status="Image Uploaded Successfully..";
    	   else
    		   status="Uploading Failed..";
    	   //System.out.println(status);
    	   request.setAttribute("message", status);
       }
       catch(Exception e)
       {
    	   System.out.println("Exception in Message1.jsp");
       }
       
      
     %>
      <h3>${requestScope.message}</h3>
</body>
</html>