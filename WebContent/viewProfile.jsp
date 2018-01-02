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
<title>Insert title here</title>
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
<div class="second2">
	<div class="changePassword"><h2 style= "margin-top:10px">View Profile</h2></div>
	<div class="cp2">
	<%
	//User user=(User)session.getAttribute("user");
	//String email=user.getEmailid();
	User u=new User();
	UserDAO ud=new UserDAO();
	u=ud.getApprovedInfo(email);
	%>
	<table class="passTable" cellspacing="20">
	  <tbody>
	    <tr>
		 <td>Username:</td>
		 <td><%=u.getFirstname() %></td>
		</tr>
		<tr>
        <td>EmailId:</td>
        <td><%=u.getEmailid() %></td>
        </tr>
		<tr>
		<td>Address:</td>
		<td><%=u.getAddress() %></td>
		</tr>
		<tr>
		<td>Pincode:</td>
		<td><%=u.getPincode() %></td>
		</tr>
		<tr>
		 <td>City:</td>
		 <td><%=u.getCity() %></td>
		</tr>
		<tr>
        <td>State:</td>
        <td><%=u.getState() %></td>
        </tr>
		<tr>
		<td>Country:</td>
		<td><%=u.getCountry() %></td>
		</tr>
	</tbody>
	</table>
	</div>
	</div>
</body>
</html>