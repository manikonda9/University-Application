<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Common page.jsp" />
<link href="Login1.css" rel="stylesheet"/>

<title>Student log in page</title>
</head>
<body>
<div class="first">
	        <div id="d1"><h1>Welcome to the Wisdom University :: Login here!</h1></div>
			<div id="d2"> <img src = "images/img1.jpg"/></div>
			
			<div id="d3">
		 <form method="post">
<fieldset>
<legend>Login</legend>
<table id="log" cellspacing="5" cellpadding="5">
<tbody>
<tr>
<td>Enter Login Credentials</td>
</tr>
<tr>
<td>Email Id :</td>
<td><input type="email" name="name" id="name" placeholder="Enter User Name"/><span id="numberSpan"></span></td>
</tr>
<tr>
<tr>
<td>Password :</td>
<td><input type="password" name="password" id="password" placeholder="Enter Password"/><span id="passwordSpan"></span></td>
</tr>
		 <tr>
		  <td>
		   <input type ="submit" name="bt2" value ="Login" class="b1"/>
		  </td>
		 </tr>
		 <tr>
		    <td>
		    <a href="forgotpassword.jsp">ForgotPassword?</a>
		    </td>
		    <td>
		   <a href="registration.jsp">Register</a>
		   </td>
		 </tr>
		 </tbody>
</table>
</fieldset>
</form>
      </div>
	</div>
	<%
      if(request.getMethod().equalsIgnoreCase("post"))
      {
    	  
    	  String email=request.getParameter("name");
    	  String password=request.getParameter("password");
    	  
    	  UserDAO ud=new UserDAO();
    	  
    	     	  
    	  if(ud.isUserExists(email,password))
    	  {
    		   User currentuser=ud.getUserInfo(email);
    		   session.setAttribute("user",currentuser);
    		   
    		   if(currentuser.getRole().equalsIgnoreCase("student"))
    		   {
    			   response.sendRedirect("Student.jsp");
    		   }
    		   else
    			   response.sendRedirect("profile.jsp");
    	  }
    	  else
    	  {
    		  out.write("<script>");
    		  out.write("alert(\""+"invalid username or password"+"\")");
    		  out.write("</script>");
    	  }
      }
      %>
	
</body>
</html>