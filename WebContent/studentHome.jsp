<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"

    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <link href="Login1.css" rel="stylesheet"/>
	    <title>STUDENT HOME PAGE</title>
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
				 System.out.println("mmk");
	        }
			
	          else{
			 email=user.getEmailid();
				number=user.getNumber();
				 image=user.getPath();
				 imageDisplay="ImageFolder/"+image;
	          }			%>
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
                                <a href="check1.jsp">Admission</a>
                                <ul class="dropdown">
                                   <li><a href="check1.jsp">Apply for Admission</a></li>
                                </ul>
							</li>
							<li>
                                <a href="check10.jsp">Faculty</a>
                                <ul class="dropdown">
                                   <li><a href="check2.jsp">Take Exam</a></li>
                                   <li><a href="check3.jsp">View Results</a></li>
                                </ul>
							</li>
                            <li>
                                <a href="check6.jsp">Hostel</a>
                                <ul class="dropdown">
                                   <li><a href="check7.jsp">View Information</a></li>
                                   <li><a href="check6.jsp">About Hostel</a></li>
                                   <li><a href="check.jsp">Apply for Hostel</a></li>
                                   <li><a href="check5.jsp">My Hostel Details</a></li>
                                </ul>
							</li>
							<li>
                                <a href="check8.jsp">Notice Boards</a>
                                <ul class="dropdown">
                                   <li><a href="check8.jsp">View NoticeBoards</a></li>
                                   <li><a href="check9.jsp">View Time tables</a></li>
                                   <li><a href="course.jsp">View courses</a></li>
                                </ul>
							</li>
                            <li>
                                <a href="Feedback.jsp">Feedback</a>
							</li>
                            <li>
                                <a href="Contactus.jsp">ContactUs</a>
							</li>
							<li>
                                <a href="Student.jsp"><%=email%></a>
								<ul class="dropdown">
                                   <li><a href="check4.jsp">View Profile</a></li>
                                   <li><a href="ChangePassword.jsp">Change Password</a></li>
                                   
                                </ul>
							</li>
			</ul>
		</div>
	</div>
	<div class="last_div"><p>Copyright @ 2016 WISDOM UNIVERSITY</p></div>
	</body>
</html>