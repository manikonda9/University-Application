<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
 function validate()
 {
	 //alert(location.hostname);
	 var file=document.getElementById("file").value;
	
	 if(file==""||file==undefined||file==null)
		 {
		    alert("Please select file");
		    return false;
		 }
	 else
		 return true;
 }
 
</script>
<style>
input[type=submit]
{
 border-radius:4px;
 height:25px;
 width:70px;
 font-weight:bold;
 font-style:normal;
}
#file
{
 border-radius:4px;
 font-style:italic;
}
 </style>
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
<h1>File Upload</h1>
    <form method="post" action="UploadServlet"
        enctype="multipart/form-data">

        Select file to upload: <input type="file" name="file" id="file" size="60" /><br />
        Select  2nd file to upload: <input type="file" name="file" id="file" size="60" /><br />
        <br /> <input type="submit"  onclick ="return validate()" value="Upload" />
    </form>
</body>
</html>