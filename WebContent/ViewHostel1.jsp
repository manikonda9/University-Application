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
<div class="clear">
			<h2 style ="color:green"> Welcome to Wisdom willa </h2><br/>
			<p><strong style ="font-size:18px">Accommodation Charges:</strong></p> 
			<p>Earmarked for continuing students</p><br/><p>Top floor is Air-conditioned for <strong>Wisdom Block 1</strong> hostel &amp; 
			top two floors are Air-conditioned for <strong>Wisdom Block 2</strong> hostel</p> <br/>
			
			<table class="tab1" border="1" cellspacing="0" cellpadding="1"> 
			<tbody> <tr> <tr><td colspan="3" style ="color:green">Accommodation for national Students</td></tr><td rowspan="3"> 
			<p>&nbsp;Air-conditioned Rooms</p></td><td>&nbsp;3 Seater Rooms</td> 
<td>&nbsp;Rs. 1,30,000 per person, per annum</td> </tr> <tr> <td>&nbsp;2 Seater Rooms with attached toilets</td> <td>&nbsp;Rs. 1,60,000 per person, per annum&nbsp;</td> </tr> <tr> <td class="antiGry">&nbsp;Single Seater Rooms</td> <td><span>&nbsp;Rs. 1,60,000 per person, per annum</span>&nbsp;</td> </tr> <tr> <td colspan="3">&nbsp;</td> </tr> <tr> <td rowspan="3"> <p>&nbsp;Non-Air-conditioned Rooms</p> <p>&nbsp;</p> </td> <td>&nbsp;3 Seater Rooms</td> <td>&nbsp;Rs. 85,000 per person, per annum</td> </tr> <tr> <td>&nbsp;2 Seater Rooms with attached toilets</td> <td>&nbsp;Rs. 1,05,000 per person, per annum&nbsp;</td> </tr> <tr> <td>&nbsp;Single Seater Rooms</td> <td><span>&nbsp;Rs. 1,00,000 per person, per annum</span>&nbsp;</td> </tr> 
 
 <tr><td colspan="3"style ="color:green">Accommodation for International Students</td></tr>
 <tr> <td rowspan="3"> 
			<p>&nbsp;Air-conditioned Rooms</p> </td> <td>&nbsp;3 Seater Rooms</td> 
<td>&nbsp;3000 USD per person, per annum</td> </tr> <tr> <td>&nbsp;2 Seater Rooms with attached toilets</td> 
<td>&nbsp;3500 USD per person, per annum&nbsp;</td> </tr> 
<tr> <td>&nbsp;Single Seater Rooms</td> <td><span>&nbsp;4000 USD per person, per annum</span>&nbsp;</td> </tr>
 <tr> <td colspan="3">&nbsp;</td> </tr>
 <tr> <td rowspan="3"> <p>&nbsp;Non-Air-conditioned Rooms</p> 
 <p>&nbsp;</p> </td> <td>&nbsp;3 Seater Rooms</td>
 <td>&nbsp;2500 USD per person, per annum</td> </tr> <tr> 
 <td>&nbsp;2 Seater Rooms with attached toilets</td> <td>&nbsp;3000 USD per person, per annum&nbsp;</td> </tr> 
 <tr> <td>&nbsp;Single Seater Rooms</td> <td><span>&nbsp;3200 USD per person, per annum</span>&nbsp;</td> </tr>
</tbody> </table> <p>&nbsp;</p> <p>&nbsp;<strong></div>
		
			  
</body>
</html>