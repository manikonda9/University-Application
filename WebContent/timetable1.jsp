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
	//User user=(User)session.getAttribute("user");
	//String email=user.getEmailid();

	UserDAO ud=new UserDAO();
	User u1=ud.getApprovedInfo(email);
	String course=u1.getCoursename();
    String tableStr="";
    ArrayList<User> timetable=new ArrayList<User>();
    timetable=ud.getTimeTableInfo(course);
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Course</th><th>Day</th><th>9:00-10:00</th><th>10:00-11:00</th><th>11:30-12:30</th><th>1:30-2:30</th><th>2:30-3:30</th><th>3:30-4:30</th></tr>";
			int i=1;
				for(User eachUser:timetable){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getCoursename()+"</td>";
					tableStr+="<td>"+eachUser.getDay()+"</td>";
					tableStr+="<td>"+eachUser.getFirst()+"</td>";
					tableStr+="<td>"+eachUser.getSecond()+"</td>";
					tableStr+="<td>"+eachUser.getThird()+"</td>";
					tableStr+="<td>"+eachUser.getFourth()+"</td>";
					tableStr+="<td>"+eachUser.getFifth()+"</td>";
					tableStr+="<td>"+eachUser.getSixth()+"</td></tr>";
					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);	
     %>
	</div>
	</div>
</body>
</html>