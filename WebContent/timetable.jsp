<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
import="java.util.ArrayList"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Course details</title>
<jsp:include page="administrator.jsp" />
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
	}
     %>
	</div>
	</div>
</body>
</html>