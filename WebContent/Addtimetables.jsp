<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="administrator.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<script type="text/javascript">
    function validateForm(){
    
    	var day=document.getElementById("day").value;
    	var t1=document.getElementById("first").value;
    	var t2=document.getElementById("second").value;
    	var t3=document.getElementById("third").value;
    	var t4=document.getElementById("fourth").value;
    	var t5=document.getElementById("fifth").value;
    	var t6=document.getElementById("sixth").value;
    	var course=document.getElementById("course").selectedIndex;
    	
    	
    	document.getElementById('courseSpan').innerHTML="";
    	   if(course==0){
    		   document.getElementById('courseSpan').innerHTML="Please Select Course";
    		   document.f.course.focus();
    			return false;   
    	   }
    	
    	if(day=="" ||day==undefined ||day==null)
		{
    		alert("Please enter Day");
    		document.f.day.focus();
		    return false;
		}
    	if(t1=="" ||t1==undefined ||t1==null)
		{
    		alert("Please enter First Period Details");
    		document.f.first.focus();
		    return false;
		}
    	if(t2=="" ||t2==undefined ||t2==null)
		{
    		alert("Please enter Second Period Details");
    		document.f.second.focus();
		    return false;
		}
    	if(t3=="" ||t3==undefined ||t3==null)
		{
    		alert("Please enter Third Period Details");
    		document.f.third.focus();
		    return false;
		}
    	if(t4=="" ||t4==undefined ||t4==null)
		{
    		alert("Please enter Fourth Period Details");
    		document.f.fourth.focus();
		    return false;
		}
    	if(t5=="" ||t5==undefined ||t5==null)
		{
    		alert("Please enter Fifth Period Details");
    		document.f.fifth.focus();
		    return false;
		}
    	if(t6=="" ||t6==undefined ||t6==null)
		{
    		alert("Please enter Sixth Period Details");
    		document.f.sixth.focus();
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
<div class="second2">
	<div class="cp6">
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
    <td>Day</td>
    <td><input type="text" name="day" id="day"/></td>
    </tr>
    <tr>
    <td>9:00AM-10:00AM</td>
    <td><input type="text" name="first" id="first"/></td>
    </tr>
    <tr>
    <td>10:00AM-11:00AM</td>
    <td><input type="text" name="second" id="second"/></td>
    </tr>
    <td>11:30AM-12:30PM</td>
    <td><input type="text" name="third" id="third"/></td>
    </tr>
    <tr>
    <td>1:30PM-2:30PM</td>
    <td><input type="text" name="fourth" id="fourth"/></td>
    </tr>
    <tr>
    <td>2:30PM-3:30PM</td>
    <td><input type="text" name="fifth" id="fifth"/></td>
    </tr>
    <tr>
    <td>3:30PM-4:30PM</td>    
    <td><input type="text" name="sixth" id="sixth"/></td>
</tr>
<tr>
    <td><input type="submit" name="submit" value="Submit"/></td>
    <td><input type="reset" name="reset" value="Reset"/></td>
</tr>
</table>
</form>
<%
if(request.getMethod().equalsIgnoreCase("post")){
	
	String course=request.getParameter("course");
	String day=request.getParameter("day");
	String first=request.getParameter("first");
	String second=request.getParameter("second");
	String third=request.getParameter("third");
	String fourth=request.getParameter("fourth");
	String fifth=request.getParameter("fifth");
	String sixth=request.getParameter("sixth");
	
	//User user=new User(course,day,first,second,third,fourth,fifth,sixth);
	UserDAO ud=new UserDAO();
	int status=ud.AddTimetable(course,day,first,second,third,fourth,fifth,sixth);
	
	if(status>0)
	{
	  out.write("<script>");
		  out.write("alert(\""+"Time Table successfully saved"+"\")");
		  out.write("</script>");
	}
	else
	{
		  out.write("<script>");
  		  out.write("alert(\""+"Time Table details not saved"+"\")");
  		  out.write("</script>");
	}
}
%>
</div>
</div>
</body>
</html>