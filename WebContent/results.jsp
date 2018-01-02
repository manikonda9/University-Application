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
    String tableStr="";
    ArrayList<User> exam=new ArrayList<User>();
    exam=ud.getexamInfo(email);
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>Exam No.</th><th>Marks</th><th>Max Marks</th><th>Percentage</th></tr>";
			int i=1;
				for(User eachUser:exam){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getMarks()+"</td>";
					tableStr+="<td>"+eachUser.getMax()+"</td>";
					tableStr+="<td>"+eachUser.getPercent()+"</td></tr>";
					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);	
     %>
	</div>
	</div>
</body>
</html>