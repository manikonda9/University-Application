<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="studentHome.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<title>Insert title here</title>
<script type="text/javascript">
function validateForm(){
	var t1=document.getElementById("passwordt1").value;
	var t2=document.getElementById("passwordt2").value;
	var t3=document.getElementById("passwordt3").value;
	
	if(t1=="" ||t1==undefined ||t1==null)
	{
		alert("Please enter old password");
		document.f.passwordt1.focus();
	    return false;
	}
	if(t2=="" ||t2==undefined ||t2==null)
	{
		alert("Please enter new password");
		document.f.passwordt2.focus();
	    return false;
	}
	if(t3=="" ||t3==undefined ||t3==null)
	{
		alert("Please enter confirm new password");
		document.f.passwordt3.focus();
	    return false;
	}
}
</script>
</head>
<body>
<div class="second">
	<div class="changePassword"> <h2 style= "margin-top:10px">Change Password</h2></div>
	<div class="cp1"><img src="images/changePasswrd.jpg"></img></div>
	<div class="cp1">
	<form method="post" name="f" onSubmit="return validateform()">
	<table class="passTable" cellspacing="20">
	  <tbody>
	    <tr>
		 <td>Current Password:</td>
		 <td><input type="password" name="passwordt1" id="passwordt1" placeholder="Enter Current Password"/></td>
		</tr>
		<tr>
        <td>Enter New Password:</td>
        <td><input type="password" name="passwordt2" id="passwordt2" placeholder="Enter New Password"/></td>
        </tr>
		<tr>
		<td>Confirm New Password:</td>
		<td><input type="password" name="passwordt3" id="passwordt3" placeholder="Enter Password"/></td>
		</tr>
		<tr>
		  <td>
		    <input type ="submit" name ="bt1" value ="Save Changes" class="b1"/>
		  </td>
		  <td>
		   <input type ="reset" name="bt2" value ="Cancel" class="b1"/>
		  </td>
		 </tr>
	  </tbody>
	</table>
	</form>
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
    if(request.getMethod().equalsIgnoreCase("post")){
	
	String first=request.getParameter("passwordt1");
	String second=request.getParameter("passwordt2");
	String third=request.getParameter("passwordt3");
	
	UserDAO ud=new UserDAO();
	if(ud.isUserExists(email, first))
	{
		if(second.equals(third)){
		String value=ud.updatePassword(email,second);
		if(value=="inserted")
		{
			out.write("<script>");
	  		  out.write("alert(\""+"password updated successfully"+"\")");
	  		  out.write("</script>");
		}
		else
		{
			  out.write("<script>");
	  		  out.write("alert(\""+"password not updated"+"\")");
	  		  out.write("</script>");
		}
		}
		else
		{
			out.write("<script>");
	  		  out.write("alert(\""+"confirm password not matching"+"\")");
	  		  out.write("</script>");
		}
	}
	
	else
	{
		  out.write("<script>");
  		  out.write("alert(\""+"Incorrect old password"+"\")");
  		  out.write("</script>");
	}
}
%>
	</div>
	</div>
</body>
</html>