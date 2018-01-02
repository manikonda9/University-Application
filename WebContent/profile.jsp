<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="administrator.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
<div class="second2">
	<div class="changePassword"><h2 style= "margin-top:10px">View Profile</h2></div>
	<div class="cp2">
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
	<table class="passTable" cellspacing="20">
	  <tbody>
	    <tr>
		 <td>Username:</td>
		 <td>Wisdom University</td>
		</tr>
		<tr>
        <td>EmailId:</td>
        <td><%=email %></td>
        </tr>
		<tr>
		<td>Address:</td>
		<td>26/C Electronic city</td>
		</tr>
		<tr>
		<td>Pincode:</td>
		<td>560100</td>
		</tr>
		<tr>
		 <td>City:</td>
		 <td>Bangalore</td>
		</tr>
		<tr>
        <td>State:</td>
        <td>Karnataka</td>
        </tr>
		<tr>
		<td>Country:</td>
		<td>India</td>
		</tr>
	</tbody>
	</table>
	</div>
	</div>
</body>
</html>