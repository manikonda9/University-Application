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
    ArrayList<User> feedback=new ArrayList<User>();
    feedback=ud.getFeedback();
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Name</th><th>Email id</th><th>Mobile Number</th><th>Topic</th><th>Feedback</th></tr>";
			int i=1;
				for(User eachUser:feedback){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getFirstname()+"</td>";
					tableStr+="<td>"+eachUser.getEmailid()+"</td>";
					tableStr+="<td>"+eachUser.getMobilenumb()+"</td>";
					tableStr+="<td>"+eachUser.getTopic()+"</td>";
					tableStr+="<td>"+eachUser.getFeedback()+"</td></tr>";
 					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);	
     %>
	</div>
	</div>
</body>
</html>