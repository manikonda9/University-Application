<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="studentHome.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<link href="cslA.css" rel="stylesheet"/>
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
				if(ud.isUserExistsInHostel(email)){
					out.print("you already applied for hostel- wait for admin approval");
				}
				else if(ud.isUserExistsInApprovedHostel(email)){
					response.sendRedirect("myroom.jsp");
				}
				else if(ud.isUserExistsInRejectedHostel(email)){
					out.print("your hostel admission rejected by admin");
					out.print(" you want to apply again-"+"<a href="+"ApplyforHostel.jsp"+">Apply Here</a>");
				}
				else{
					out.print("You are not yet Applied for the Hostel Admission-First Apply for Hostel Admission");
				}
			}
			else if(ud.isUserExistsInStudents(email))
			{
				out.print("Your Admission not yet Approved by Admin- wait for Approval");
			}
			else if(ud.isUserExistsInRejected(email))
			{
				out.print("Your Admission was rejected by Admin");
			}
			else
			{
				out.println("You are not yet Applied for the Admission-First Apply for Admission");
				String str="<a href="+"applyforadmission.jsp"+">Apply Here</a>";
				out.println(str);
			}
	     %>
	</div>
	</div>
</body>
</html>