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
<script type ="text/javascript">
  function validateForm(){
	  var t1=document.getElementById("Title").value;
		var t2=document.getElementById("Desc").value;
		var t3=document.getElementById("Date").value;
	
		
		if(t1=="" ||t1==undefined ||t1==null)
		{
			alert("Please enter name");
			document.f.Title.focus();
		    return false;
		}
		if(t2=="" ||t2==undefined ||t2==null)
		{
			alert("Please enter emailid");
			document.f.Desc.focus();
		    return false;
		}
		if(t3=="" ||t3==undefined ||t3==null)
		{
			alert("Please enter mobilenumber");
			document.f.Date.focus();
		    return false;
		}
		
	  } 
  </script>
</head>
<body>
<%
User user1=(User)session.getAttribute("user");
	String email=null;
	if(user1==null)
	{
		%></script><script>window.location.href='Login.jsp';</script><%
	}
	else{
		email=user1.getEmailid();
	}
	%>
<div class="second2">
	<div class="cp5">
<form  method="post" name="f" onSubmit="return validateForm()">
    <table>
    <caption>Edit Notice</caption>
    <tbody>
    <tr>
    <td>Title:</td>
    <td><input type="text" name="Title" id="Title" placeholder="Title"/>
    <span id="title"></span>
    </td>
    </tr>
    <tr>
    <td>Description:</td><td><textarea name ="Desc" id="Desc"  placeholder="Description" rows="10" cols ="50"/></textarea>
    <span id="desc"></span>
    </td>
    </tr>
    <tr>
    <td>Date:</td>
    <td><input type="date" name="Date" id="Date"  placeholder="Date(DD/MM/YYYY)"/>
     <span id="date"></span></td></tr>
    <tr>
    <td><input type="submit" name ="update" value="Add" /></td>
    </tr></tbody></table>
    </form>
    <%
    if(request.getMethod().equalsIgnoreCase("post"))
	{
		
		String title =request.getParameter("Title");
		String Desc=request.getParameter("Desc");
		String value=request.getParameter("Date");
		
		
		User user=new User(title,Desc,value);
		UserDAO userdao= new UserDAO();
		String status=userdao.update(user);  
		
		if(status=="inserted")
		{
		  out.write("<script>");
  		  out.write("alert(\""+"details successfully saved"+"\")");
  		  out.write("</script>");
		}
		else
		{
			  out.write("<script>");
	  		  out.write("alert(\""+"details not saved"+"\")");
	  		  out.write("</script>");
		}
        
		
	}
    
    %>
    </div>
    </div>
</body>
</html>