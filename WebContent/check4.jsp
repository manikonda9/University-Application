<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="studentHome.jsp"/>
<link href="Login1.css" rel="stylesheet"/>
<link href="cslA.css" rel="stylesheet"/>
</head>
<body>
    <div class="second3">
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
				response.sendRedirect("viewProfile.jsp");
			}
			else if(ud.isUserExistsInStudents(email))
			{
				out.print("Your Admission not yet Approved by Admin-wait for approval after that you can view your profile");
			}
			else if(ud.isUserExistsInRejected(email))
			{
				out.print("Your Admission was rejected by Admin- you are no more access");
			}
			else
			{
				out.print("you first apply for admission after that you can see your profile");
			}
	     %>
	</div>
	</div>
</body>
</html>