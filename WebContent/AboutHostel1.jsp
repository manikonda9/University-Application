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
<link href="cslA.css" rel="stylesheet"/>
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
<div class="second3">
            <div class="changePassword"> <h2 style= "margin-top:10px">About Hostel</h2></div>
			<div class="cp3"><img src ="images/hostelPic.jpg"/></div>
			<div class="cp3">
			<p style="color:blue">Wisdom University provides well-furnished hostel facility to its outstation candidates. A home away from home</p>
			<p style="color:blue">Amenities we provide in our hostels are:</p>
			<br/><p>
			<ol style="color:green"><I>
				<li>Nutritious Food</li>
				<li>Pure Drinking Water (Through Aquaguard and water cooler)</li>
				<li>Attached bathroom</li>
				<li>24 hour Security</li>
				<li>Doctor on Call</li>
				<li>Telephone</li>
			</ol></I></p>
		  </div>
		  </div>
</body>
</html>