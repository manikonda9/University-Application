<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="studentHome.jsp" />
<link href="Login1.css" rel="stylesheet"/>
	    <title>STUDENT HOME PAGE</title>
    </head>
	<body>
	<div class="second2">
	<div class="cp1">
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
			//String email="kondaiah121@gmail.com";
			UserDAO ud=new UserDAO();
			if(ud.isUserExistsInAdmissions(email))
			{
				out.print("Your Admission  Approved by Admin");
			}
			else if(ud.isUserExistsInStudents(email))
			{
				out.print("Your Admission not yet Approved by Admin-wait for approval");
			}
			else if(ud.isUserExistsInRejected(email))
			{
				out.print("Your Admission was rejected by Admin");
			}
			else
			{
				out.println("You are not yet Applied for the Admission");
				String str="<a href="+"applyforadmission.jsp"+">Apply Here</a>";
				out.println(str);
			}
	     %>
	</div>
	</div>
	</body>
</html>