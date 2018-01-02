<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
import="java.util.ArrayList"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Course details</title>
<jsp:include page="studentHome.jsp" />
<link href="Login1.css" rel="stylesheet"/>
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
    ArrayList<User> course=new ArrayList<User>();
    course=ud.getCourseInfo();
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Course Name</th><th>Course Duration</th><th>Course Fee</th><th>Start Date</th><th>End Date</th></tr>";
			int i=1;
				for(User eachUser:course){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getCoursename()+"</td>";
					tableStr+="<td>"+eachUser.getCourseduration()+"</td>";
					tableStr+="<td>"+eachUser.getCoursefee()+"</td>";
					tableStr+="<td>"+eachUser.getStartdate()+"</td>";
					tableStr+="<td>"+eachUser.getEnddate()+"</td></tr>";
					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);	
     %>
	</div>
	</div>
</body>
</html>