<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
import="java.util.ArrayList"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="administrator.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<title>Applied Students List::</title>
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
	<div class="cp5">
	
	<%
	UserDAO ud=new UserDAO();
    String tableStr="";
    ArrayList<User> student=new ArrayList<User>();
    student=ud.getApprovedHostelInfo();
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Room.No</th><th>Name</th><th>Father Name</th><th>Email Id</th><th>Address</th><th>Pincode</th><th>City</th><th>State</th><th>Country</th></tr>";
			int i=1;
				for(User eachUser:student){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getRoom()+"</td>";
					tableStr+="<td>"+eachUser.getUsername()+"</td>";
					tableStr+="<td>"+eachUser.getFathername1()+"</td>";
					tableStr+="<td>"+eachUser.getEmail1()+"</td>";
					tableStr+="<td>"+eachUser.getAddress1()+"</td>";
					tableStr+="<td>"+eachUser.getPincode1()+"</td>";
					tableStr+="<td>"+eachUser.getCity1()+"</td>";
					tableStr+="<td>"+eachUser.getState1()+"</td>";
					tableStr+="<td>"+eachUser.getCountry1()+"</td></tr>";
					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);	
     %>
	</div>
	</div>
</body>
</html>