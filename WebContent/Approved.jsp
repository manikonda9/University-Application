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
<script type="text/javascript">
function validateForm(){
	var course=document.getElementById("course").selectedIndex;
	
	document.getElementById('courseSpan').innerHTML="";
	   if(course==0){
		   document.getElementById('courseSpan').innerHTML="Please Select Course";
		   document.f.course.focus();
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
		%></script><script>window.location.href='Login.jsp';</script><%
	}
	else{
		email=user.getEmailid();
	}
	%>
    <div class="second4">
	<div class="cp5">
	<form method="post" name="f" onSubmit="return validateForm()" >
<table>
<tr>
				<td>Select Course:</td>
					      <td><select id="course" name="course">
                            <option>--Select Course--</option>
                            <option>CSE</option>
                            <option>IT</option>
                            <option>ECE</option>
                            <option>EEE</option>
                            <option>CIVIL</option>
                        </select><span id="courseSpan" style="font-style:italic; color:red;" ></span></td>
					  </tr>
					  <tr>
    <td><input type="submit" name="submit" value="Submit"/></td>
    <td><input type="reset" name="reset" value="Reset"/></td>
</tr>
					  </table>
					  </form>
	
	<%if(request.getMethod().equalsIgnoreCase("post")){
		
		String course=request.getParameter("course");
	
	UserDAO ud=new UserDAO();
    String tableStr="";
    ArrayList<User> student=new ArrayList<User>();
    student=ud.getApprovedStudentsInfo(course);
    //out.println(student.size());
			tableStr+="<table id="+"dynamic_table"+" border='1'><tr><th>S.No</th><th>Name</th><th>Selected Course</th><th>Email Id</th><th>Dob</th><th>SSC%</th><th>PUC%</th></tr>";
			int i=1;
				for(User eachUser:student){
					tableStr+="<tr><td>"+i+"</td>";
					tableStr+="<td>"+eachUser.getFirstname()+"</td>";
					tableStr+="<td>"+eachUser.getCoursename()+"</td>";
					tableStr+="<td>"+eachUser.getEmailid()+"</td>";
					tableStr+="<td>"+eachUser.getDob()+"</td>";
					tableStr+="<td>"+eachUser.getTenthper()+"</td>";
					tableStr+="<td>"+eachUser.getPuper()+"</td></tr>";
					i++;
				}
				
			tableStr+="</table>";
			out.println(tableStr);
	}
     %>
	</div>
	</div>
</body>
</html>