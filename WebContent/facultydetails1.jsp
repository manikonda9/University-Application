<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
import="java.util.ArrayList"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="studentHome.jsp" />
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
	//User user=(User)session.getAttribute("user");
	//String email=user.getEmailid();

	UserDAO ud=new UserDAO();
	User u1=ud.getApprovedInfo(email);
	String course=u1.getCoursename();

    String tableStr="";
    ArrayList<User> faculty=new ArrayList<User>();
    faculty=ud.getFacultyInfo(course);
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Name</th><th>Department</th><th>Email Id</th><th>Dob</th><th>Designation</th></tr>";
			int i=1;
				for(User eachUser:faculty){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getFirstname()+"</td>";
					tableStr+="<td>"+eachUser.getCoursename()+"</td>";
					tableStr+="<td>"+eachUser.getEmailid()+"</td>";
					tableStr+="<td>"+eachUser.getDob()+"</td>";
					tableStr+="<td>"+eachUser.getDesignation()+"</td></tr>";
 					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);	
     %>
	</div>
	</div>
</body>
</html>