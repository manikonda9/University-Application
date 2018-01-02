<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course details</title>
<jsp:include page="administrator.jsp" />
<link href="Login1.css" rel="stylesheet"/>
		<script>
		
		function validatingDetails()
		{
			var coursename=document.getElementById("coursename").value;
			var courseduration=document.getElementById("courseduration").value;
			var coursefee=document.getElementById("coursefee").value;
			var startingdate=document.getElementById("startingdate").value;
			var endingdate=document.getElementById("endingdate").value;
			
			document.getElementById('name1').innerHTML="";
			if(coursename=="" ||coursename==undefined ||!isNaN(coursename))
			{
			document.getElementById('name1').innerHTML="Fill course name";
			document.f.coursename.focus();
			return false;
			} 
			
			
			document.getElementById('duration').innerHTML="";
			if(courseduration=="" ||courseduration==undefined ||!isNaN(courseduration))
			{
			document.getElementById('duration').innerHTML="Fill course duration";
			document.f.courseduration.focus();
			return false;
			} 
			
			document.getElementById('fee').innerHTML="";
			if(coursefee=="" ||coursefee==undefined ||!isNaN(coursefee))
			{
			document.getElementById('fee').innerHTML="Fill course fee";
			document.f.coursefee.focus();
			return false;
			} 
			
			document.getElementById('date').innerHTML="";
			if(startingdate=="" ||startingdate==undefined ||!isNaN(startingdate))
			{
			document.getElementById('date').innerHTML="Fill start date";
			document.f.startingdate.focus();
			return false;
			} 
			
			document.getElementById('edate').innerHTML="";
			if(endingdate=="" ||endingdate==undefined ||!isNaN(endingdate))
			{
			document.getElementById('edate').innerHTML="Fill end date";
			document.f.endingdate.focus();
			return false;
			} 	
		}
		
		</script>
</head>
<body>
<%
User user=(User)session.getAttribute("user");
	String email=null;
	if(user==null)
	{
		%>
		</script><script>window.location.href='Login.jsp';</script><%
	}
	else{
		email=user.getEmailid();
	}
	%>
<div class="second2">
	<div class="cp5">
	<form method="post" name="f" onSubmit="return validatingDetails()">
		<table>
				<tr>
				<td>Course Name:</td>
				<td><input type="text" name="coursename" id="coursename"/>
				<span id="name1" style="font-style:italic; color:red;"></span>
				</td>
				</tr>
					<tr>
					<td>Course Duration:</td>
				    <td><input type="text" name="courseduration" id="courseduration"/>
				    <span id="duration" style="font-style:italic; color:red;"></span>
				    </td>
					</tr>
				<tr>
				<td>Course Fee:</td>
				<td><input type="text" name="coursefee" id="coursefee"/>
				<span id="fee" style="font-style:italic; color:red;"></span>
				</td>
			    </tr>
			   	
				   	<tr>
					<td>Course StartingDate:</td>
					<td><input type="date" name="startingdate" id="startingdate"/>
					<span id="date" style="font-style:italic; color:red;"></span>
					</td>
				    </tr>
				   
				<tr>
				<td>Course EndingDate:</td>
				<td><input type="date" name="endingdate" id="endingdate"/>
				<span id="edate" style="font-style:italic; color:red;"></span>
				</td>
				</tr>
					
					<tr>
					<td><input type="submit" value="Addcourse"/></td>
					</tr>
		</table>
	</form>
	
	<%
	
	if(request.getMethod().equalsIgnoreCase("post"))
	{
		
		String coursename=request.getParameter("coursename");
		String courseduration=request.getParameter("courseduration");
		String coursefee=request.getParameter("coursefee");
		String startdate=request.getParameter("startingdate");
		String enddate=request.getParameter("endingdate");
		
		User u2=new User(coursename,courseduration,coursefee,startdate,enddate);
		UserDAO userdao= new UserDAO();
		String status=userdao.coursedetails(u2);  
		
		if(status=="inserted")
		{
		  out.write("<script>");
  		  out.write("alert(\""+"Course details successfully saved"+"\")");
  		  out.write("</script>");
		}
		else
		{
			  out.write("<script>");
	  		  out.write("alert(\""+"Course details not saved"+"\")");
	  		  out.write("</script>");
		}
		
	}
	
	%>
</div>
</div>
</body>
</html>