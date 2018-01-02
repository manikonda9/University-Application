<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator Home page</title>
<link href="Login1.css" rel="stylesheet"/>
<script>
	    function change(){
             var myWindow = window.open("Upload11.jsp", "", "width=600, height=400 position=center");
	    }
</script>
    </head>
	<body position="fixed">
	        <%
	        String email=null;
			String number=null;
			 String image=null;
			 String imageDisplay=null;
			
            User user=(User)session.getAttribute("user");
	        if(user==null)
	        {
	        	//session.invalidate();
	        	%></script><script>window.location.href='Login.jsp';</script><%
				 System.out.println("manasa");
	        }
			
	          else{
			 email=user.getEmailid();
				number=user.getNumber();
				 image=user.getPath();
				 imageDisplay="ImageFolder/"+image;
	          }
			%>
	<div class="div_main">
	    <div class="div_main1"><img id="user_pic" src="<%=imageDisplay%>" onclick="change()"></img></div>
		<div class="div_main2"><marquee id="marq" behavior="scroll" direction="left">Welcome to WISDOM UNIVERSITY<sub>Way to Bright future</sub></marquee></div>
		<div class="div_small"><ul>
                                <li><a href="validate.jsp">Logout</a></li>
                                </ul>
                                </div>
		<div class="div_main3">
		    <ul>
                            <li>
                                <a href="Applied.jsp">Admission</a>
                                <ul class="dropdown">
                                   <li><a href="Applied.jsp">Applied Admission</a></li>
                                   <li><a href="Approved.jsp">Approved Admission</a></li>
                                   
                                </ul>
							</li>
							<li>
                                <a href="courses.jsp">Courses</a>
                                <ul class="dropdown">
                                   <li><a href="Addcourse.jsp">Add Courses</a></li>
                                   <li><a href="Addtimetables.jsp">Add Timetables</a></li>
                                   <li><a href="timetable.jsp">View Timetables</a></li>
                         
                                </ul>
							</li>
                            <li>
                                <a href="ViewHostel1.jsp">Hostel</a>
                                <ul class="dropdown">
                                   <li><a href="ViewHostel1.jsp">View Information</a></li>
                                   <li><a href="AboutHostel1.jsp">About Hostel</a></li>
                                   <li><a href="HostelAddmissions.jsp">Hostel Admissions</a></li>
                                   <li><a href="HostelApproved.jsp">Hostel Students</a></li>
                                </ul>
							</li>
							<li>
                                <a href="ViewNotice.jsp">Notice Boards</a>
                                <ul class="dropdown">
                                   <li><a href="ViewNotice.jsp">View NoticeBoards</a></li>
                                   <li><a href="Notices.jsp">ADD Notices</a></li>
                                </ul>
							</li>
                            <li>
                                <a href="feedback1.jsp">Feedbacks</a>
                                <ul class="dropdown">
                                   <li><a href="contacts.jsp">ContactUs details</a></li>
                                </ul>
							</li>
                            <li>
                                <a href="facultydetails.jsp">Faculty Details</a>
                                <ul class="dropdown">
                                   <li><a href="students.jsp">Students Details</a></li>
                                   <li><a href="results1.jsp">Exam results</a></li>
                                </ul>
							</li>
							<li>
                                <a href="profile.jsp"><%=email%></a>
								<ul class="dropdown">
                                   <li><a href="profile.jsp">View Profile</a></li>
                                   <li><a href="changepassword1.jsp">Change Password</a></li> 
                                   
                                </ul>
							</li>
			</ul>
		</div>
	</div>
	<div class="last_div"><p>Copyright @ 2016 WISDOM UNIVERSITY</p></div>
	
	</body>
</html>