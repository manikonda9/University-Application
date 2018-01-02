<%@ page language="java"

import="university.*"

 contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Common page.jsp" />
<link href="Login1.css" rel="stylesheet"/>
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration page</title>
<script>
function validate1()
{
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var regPostcode = /^([7-9])([0-9]){9}$/;
	var reg=/^(?=.*\d)[a-zA-Z0-9]{8,}$/;
	
	var name=document.getElementById("Uname").value;
	var mail=document.getElementById("emailid").value;
	var pass=document.getElementById("pasword").value;
	var confpass=document.getElementById("conformpassword").value;
	var numb=document.getElementById("mobilenumb").value;
	
	if(name==""||name==null||name==undefined)
	{
		alert("enter User name");
		document.f.Uname.focus();
		return false;		
	}
	if(mail==""||!filter.test(mail))
	{
		alert("enter valid mailid");
		document.f.emailid.focus();
		return false;
		
	}
	if(reg.test(pass) == false ||(pass.length==0))
	{
		alert("password should contain atleast one digit and 8 charaters");
		document.f.pasword.focus();
		return false;
	}
	if(pass!=confpass){	
		alert("password is not matching");
		document.f.conformpassword.focus();
		return false;
	}
	if(regPostcode.test(numb) == false)
	{
		alert("mobile number should contain exactly 10 digits");
		document.f.mobilenumb.focus();
		return false;
	}
	
	
	}
</script>
</head>
<body>
			<div class="mstmt">
			<div id="d9">Register here!!!!!!!!!!!</div>
			<div id="d10">
	<form method="post" name="f" >	
<table cellspacing="10" cellpadding="10" align="center" border-collapse="none">
<tbody>
<tr>
<td>User Name :</td>
<td><input type="text" name="Uname" id="Uname" placeholder="Enter User Name"/></td>
</tr>
<tr>
<td>Email-id :</td>
<td><input type="text" name="emailid" id="emailid" placeholder="Enter email id"/></td>
</tr>
<tr>
<td>Password :</td>
<td><input type="password" name="password" id="pasword" placeholder="Enter Password"/></td>
</tr>
<tr>
<td>Conform Password :</td>
<td><input type="password" name="conformpassword" id="conformpassword" placeholder="Conform  your Password"/></td>
</tr>
	<tr>
		<td>Mobile Number:</td>
		<td>
			<input type="text" name="mobilenumb" id="mobilenumb" placeholder="Enter Mobile Number"/>
		</td>
	</tr>
	<!--  <tr>
					    <td>
						Upload Photo:
						</td>
						<td>
						<input type="file"  id="studentpic" name="studentpic" accept="image/*">
						<span id="picSpan" style="font-style:italic; color:red;"></span></td>
					  </tr>
					  <tr>
					    <td>
						Upload Signature:
						</td>
						<td>
						<input type="file"  id="signature" name="signature" accept="image/*">
						<span id="signatureSpan" style="font-style:italic; color:red;"></span></td>
					  </tr>-->
		 <tr>
		  <td>
		    <input type ="submit" name ="bt1" value ="Register" onclick="return validate1()"  class="b1"/></td>
		   <td><input type ="submit" name ="bt2" value ="Login" class="b1"/>
		  </td>
		 </tr>
		 </tbody>
</table>
</form>
	</div>
	</div>	
<%
	//if(request.getMethod().equalsIgnoreCase("post")){
		if(request.getParameter("bt1")!=null){
	String name=request.getParameter("Uname");
	String username=request.getParameter("emailid");
	String password=request.getParameter("password");
	String mobilenumber=request.getParameter("mobilenumb");
	String photo=request.getParameter("studentpic");
	String sign=request.getParameter("signature");
	//File image=request.getContextPath();
	User user=new User(name,username,password,mobilenumber,photo,sign);
	UserDAO userdao= new UserDAO();
	
	//session.setAttribute("status",status);
	if(userdao.isUserExistsPw(user))
	{
		out.write("<script>");
		 out.write("alert(\"You already registred with WISDOM" + "\")");
		 out.write("</script>");
	}
	if(!userdao.isUserExistsPw(user)){
		String status=userdao.register(user);
	out.write("<script>");
	out.write("alert(\""+status+ "\")");
	out.write("</script>");
	}
		}
	if(request.getParameter("bt2")!=null){
	response.sendRedirect("Login.jsp");
	}
//}
%>
	</body>
</html>