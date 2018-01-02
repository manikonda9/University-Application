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
	String email1=null;
	if(user==null)
	{
		%></script><script>window.location.href='Login.jsp';</script><%
	}
	else{
		email1=user.getEmailid();
	}
	%>
    <div class="second2">
	<div class="cp5">
	<form method="post">
	<%
	UserDAO ud=new UserDAO();
    String tableStr="";
    ArrayList<User> student=new ArrayList<User>();
    student=ud.getRejectedStudentsInfo();
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Name</th><th>Selected Course</th><th>Email Id</th><th>Dob</th><th>SSC%</th><th>PUC%</th><th>Approve</th><th>Reject</th></tr>";
			int i=1;
				for(User eachUser:student){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getFirstname()+"</td>";
					tableStr+="<td>"+eachUser.getCoursename()+"</td>";
					tableStr+="<td>"+eachUser.getEmailid()+"</td>";
					tableStr+="<td>"+eachUser.getDob()+"</td>";
					tableStr+="<td>"+eachUser.getTenthper()+"</td>";
					tableStr+="<td>"+eachUser.getPuper()+"</td>";
					tableStr+="<input type="+"hidden"+" id="+eachUser.getEmailid()+" name="+"email"+" value="+eachUser.getEmailid()+" />";
					tableStr+="<td><input type="+"submit"+" id="+eachUser.getEmailid()+" name="+"approve"+" value="+"Approve"+" /></td>";
					tableStr+="<td><input type="+"submit"+" id="+eachUser.getEmailid()+" name="+"reject"+" value="+"Reject"+" /></td></tr>";
					//tableStr+="<td><a href="+"#"+">Reject</a></td></tr>";
					//tableStr+="<td><a href="+"#"+">Approve</a></td>";
					//tableStr+="<td><a href="+"#"+">Reject</a></td></tr>";
					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);	%>
			</form>
			<%
			if(request.getMethod().equalsIgnoreCase("post"))
		      {
			if(request.getParameter("approve")!=null){
				String email=request.getParameter("email");
				User u1=new User();
				u1=ud.getRejectedInfo(email);
				ud.approve(u1);
				ud.Deleterejected(email);
				response.sendRedirect("rejected.jsp");
				//out.println(email);
			}
			if(request.getParameter("reject")!=null){
				String email=request.getParameter("email");
				User u1=new User();
				u1=ud.getRejectedInfo(email);
				ud.rejectFinal(u1);
				ud.Deleterejected(email);
				response.sendRedirect("rejected.jsp");
				//out.println(email);
			}
		    }
           %>
	</div>
	</div>
</body>
</html>