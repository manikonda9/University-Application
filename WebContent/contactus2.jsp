<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us::</title>
<jsp:include page="Common page.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<script type="text/javascript">
function validateForm(){
	var t1=document.getElementById("t1").value;
	var t2=document.getElementById("t2").value;
	var t3=document.getElementById("t3").value;
	var t4=document.getElementById("t4").value;
	
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var pat2 = /^([7-9])([0-9]){9}$/;
	
	if(t1=="" ||t1==undefined ||t1==null)
	{
		alert("Please enter name");
		document.f.t1.focus();
	    return false;
	}
	if(t2=="" ||t2==undefined ||t2==null)
	{
		alert("Please enter emailid");
		document.f.t2.focus();
	    return false;
	}
	if(!filter.test(t2))
	{
		alert("Please enter valid email id");
		document.f.t2.focus();
		return false;	
	}
	if(t3=="" ||t3==undefined ||t3==null)
	{
		alert("Please enter mobilenumber");
		document.f.t3.focus();
	    return false;
	}
	if(!pat2.test(t3))
	{
		alert("Please enter valid mobilenumber");
		document.f.t3.focus();
		return false;
	}
	if(t4=="" ||t4==undefined ||t4==null)
	{
		alert("Please enter comments");
		document.f.t4.focus();
	    return false;
	}
}
</script>
</head>
<body>
<div class="first">
	        <div id="d1"><h1>Contact us</h1><hr id="line1"/><hr id="line1"/></div>
            <div class="d1">
			  <h2>Wisdom University</h2>
              <p>26/C, Electronics City,<br/>Hosur Road,<br/>Bangalore - 560100<br/>Phone: +91 80 4140 7777/  2852 7627<br/>Fax: +91 80 4140 7704</p>     
         <br/><br/>
         <form method="post" name="f" onSubmit="return validateForm()">
		    <table>
			<tr>
              <td>Name:</td><td><input type="text" name="name" id="t1" placeholder="Name*" class="fil_con required" /></td></tr>
              <tr><td>Email Id:</td><td><input type="text" name="email" id="t2" placeholder="Email*" class="fil_con required email" /></td></tr>
              <tr><td>Mobile Number:</td><td><input type="text" name="telephone" id="t3" placeholder="Phone*" maxlength=10 class="fil_con required number" /></td></tr>
              <tr><td>Comments:</td><td><textarea name="comments" id="t4" rows="6" cols="25" class="fil_textmsg" placeholder="Comments"></textarea></td></tr>
              <tr><td><input type="submit" class="con_btn" value="submit" /></td></tr>
			  </table>
			  </form>
			  <%
	 
if(request.getMethod().equalsIgnoreCase("post")){
	
	
	String first=request.getParameter("name");
	String second=request.getParameter("email");
	String third=request.getParameter("telephone");
	String fourth=request.getParameter("comments");
	
	UserDAO ud=new UserDAO();

		String value=ud.insertComments(first,second,third,fourth);
		if(value=="inserted")
		{
			out.write("<script>");
	  		  out.write("alert(\""+"Success fully submitted"+"\")");
	  		  out.write("</script>");
		}
		else
		{
			  out.write("<script>");
	  		  out.write("alert(\""+"submission failed"+"\")");
	  		  out.write("</script>");
		}
	
}
%>
        </div>
        </div>
</body>
</html>