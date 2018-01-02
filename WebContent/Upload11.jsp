<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Image</title>
<style>
  input[type="submit"]
  {
	margin-top:8px;
	margin-bottom:8px;
	border-radius:5px;
	font-size:20px;
	color:#3399FF;
	width:100px;
	height:25px;
	font-weight:bold;
	border:1px solid #E0F0FF;
	font-family:"Times New Roman";
	background: -webkit-linear-gradient(right,#FFFFCC, #66CCFF); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(right, #FFFFCC, #66CCFF); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(right,white, #99CCFF); /* For Firefox 3.6 to 15 */
    background: linear-gradient(right,white, #99CCFF); /* Standard syntax (must be last) */
  }
   input[type="submit"]:hover
{
  cursor:pointer;
  box-shadow:8px 10px 10px grey;
  color:#003399;
}
</style>
<script>
   function validate()
   {
	   var file2=document.getElementById("file").value;
		
		 if(file2==""||file2==undefined||file2==null)
			 {
			    alert("Please select file");
			    return false;
			 }
		 else
			 {
			 
			      var file_extension = file2.split('.').pop();  
			     // alert(file_extension);
		        if ((file_extension == "jpg") || (file_extension == "png") || (file_extension == "gif")) 
		          {
		             return true;
		          }
		        else
		        {
		         //alert("Go ahead");
		         //document.getElementById("uploadImgForm").submit();
		        	alert("Choose Valid image");
		        	return false;
		        }
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
   
    <h1 style="color:teal">Profile Image Upload</h1>
    <form method="post" name="myform" action="UploadServletPage"
        enctype="multipart/form-data">
        <span style="color:teal"> Select file to upload:</span> <input type="file" width="120px" height="140px" name="file" id="file" /><br />
        <br /> <input type="submit" onclick="return validate()" value="Upload" />
    </form>
</body>
<%
  if(request.getMethod().equalsIgnoreCase("post"))
  { System.out.println("MMK");
  %></script><script>window.location.href='studentHome.jsp';</script><%
  }
%>
</html>