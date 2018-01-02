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
    student=ud.getHostelInfo();
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Name</th><th>Father Name</th><th>Email Id</th><th>Address</th><th>City</th><th>State</th><th>Approve</th><th>Reject</th></tr>";
			int i=1;
				for(User eachUser:student){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getUsername()+"</td>";
					tableStr+="<td>"+eachUser.getFathername1()+"</td>";
					tableStr+="<td>"+eachUser.getEmail1()+"</td>";
					tableStr+="<td>"+eachUser.getAddress1()+"</td>";
					tableStr+="<td>"+eachUser.getCity1()+"</td>";
					tableStr+="<td>"+eachUser.getState1()+"</td>";
					tableStr+="<input type="+"hidden"+" id="+eachUser.getEmail1()+" name="+"email"+" value="+eachUser.getEmail1()+" />";
					tableStr+="<td><input type="+"submit"+" id="+eachUser.getEmail1()+" name="+"approve"+" value="+"Approve"+" /></td>";
					tableStr+="<td><input type="+"submit"+" id="+eachUser.getEmail1()+" name="+"reject"+" value="+"Reject"+" /></td></tr>";
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
				u1=ud.getHostelInfo(email);
				ud.approveHostel(u1);
				ud.DeleteHostel(email);
				response.sendRedirect("HostelAddmissions.jsp");
				//out.println(email);
			}
			if(request.getParameter("reject")!=null){
				String email=request.getParameter("email");
				User u1=new User();
				u1=ud.getHostelInfo(email);
				ud.rejectHostel(u1);
				ud.DeleteHostel(email);
				response.sendRedirect("HostelAddmissions.jsp");
				//out.println(email);
			}
		    }
           %>
	</div>
	</div>
</body>
</html>