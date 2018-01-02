<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password Page::</title>
<jsp:include page="Common page.jsp" />
<link href="Login1.css" rel="stylesheet"/>
</head>
<body>
<div class="mstmt">

			<div id="d9">Forgot Password!!!!!!!!!!!</div>
			<div id="d10">
			<form  method="post">
			<table>
			     <tr>
			         <td>Enter the Email Id:</td>
			         <td><input type="email" name="email" id="emailId"/></td>
			     </tr>
			     <tr>
			         <td><input type="submit" value="Submit"/></td>
			         <td></td>
			     </tr>
			</table>
			</form>
		
			<%
   if(request.getMethod().equalsIgnoreCase("post"))
   {
	   
	 String email=request.getParameter("email");
 	 UserDAO ud=new UserDAO();
 	 User user=ud.getUserInfo(email);
 	  if(ud.isUserExistsPw(user))
 	  {	
 		  Email myMail = new Email();
 		  myMail.emailSender(user.getPassword(),user.getEmailid(),user.getName());
 		 out.write("<script>");
		  out.write("alert(\""+"password has been sent to the email address"+"\")");
		  out.write("</script>");
 		  //out.print("password has been sent to the email address");
 		  //response.sendRedirect("Login.jsp");
 	  }
 	  else
 	  {
 		 out.write("<script>");
		  out.write("alert(\""+"email id entered does not exist"+"\")");
		  out.write("</script>");
 	      //out.print(" email id entered does not exist ");
 	   }
	    
   }

%>
</div>
			</div>
</body>
</html>