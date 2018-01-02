<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="studentHome.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>
<div class="second2">
	<div class="changePassword"> <h2 style= "margin-top:10px">Update Profile</h2></div>
	<div class="cp2">
	<table class="passTable" cellspacing="20">
	  <tbody>
	    <tr>
		 <td>Username:</td>
		 <td><input type="password" name="passwordt1" id="passwordt1" placeholder="Enter Current Password"/></td>
		</tr>
		<tr>
        <td>EmailId:</td>
        <td><input type="password" name="passwordt2" id="passwordt2" placeholder="Enter New Password"/></td>
        </tr>
		<tr>
		<td>Address:</td>
		<td><input type="password" name="passwordt3" id="passwordt3" placeholder="Enter Password"/></td>
		</tr>
		<tr>
		<td>Pincode:</td>
		<td><input type="password" name="passwordt3" id="passwordt3" placeholder="Enter Password"/></td>
		</tr>
		<tr>
		 <td>City:</td>
		 <td><input type="password" name="passwordt1" id="passwordt1" placeholder="Enter Current Password"/></td>
		</tr>
		<tr>
        <td>State:</td>
        <td><input type="password" name="passwordt2" id="passwordt2" placeholder="Enter New Password"/></td>
        </tr>
		<tr>
		<td>Country:</td>
		<td><input type="password" name="passwordt3" id="passwordt3" placeholder="Enter Password"/></td>
		</tr>
		<tr>
		  <td>
		    <input type ="button" name ="bt1" value ="Save Changes" class="b1"/>
		  </td>
		  <td>
		   <input type ="button" name="bt2" value ="Cancel" class="b1"/>
		  </td>
		 </tr>
	  </tbody>
	</table>
	</div>
	</div>
</body>
</html>