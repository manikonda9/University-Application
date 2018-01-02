<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FeedBack::</title>
<jsp:include page="Common page.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<script type="text/javascript">
function validateForm(){
	var t1=document.getElementById("t1").value;
	var t2=document.getElementById("t2").value;
	var t3=document.getElementById("t3").value;
	var t4=document.getElementById("t4").value;
	var t5=document.getElementById("t5").value;
	
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
		alert("Please enter topic");
		document.f.t4.focus();
	    return false;
	}
	if(t5=="" ||t5==undefined ||t5==null)
	{
		alert("Please enter topic");
		document.f.t5.focus();
	    return false;
	}
}
</script>
</head>
<body>
<div class="first">
	        <div id="d1"><h1>FeedBack:::</h1><hr id="line1"/><hr id="line1"/></div>
            <div class="d1">
			 <form method="post" name="f" onSubmit="return validateForm()">
		    <table>
			<tr>
              <td>Name:</td>
              <td><input type="text" id="t1" name="name" placeholder="Name*" class="fil_con required" /></td>
              </tr>
              <tr>
              <td>Email Id:</td>
              <td><input type="text" id="t2" name="email" placeholder="Email*" class="fil_con required email" /></td>
              </tr>
              <tr>
              <td>Mobile Number:</td>
              <td><input type="text" id="t3" name="telephone" placeholder="Phone*" maxlength=10 class="fil_con required number" /></td>
              </tr>
             <tr>
             <td>Feedback Topic:</td>
             <td><input type="text" id="t4" name="topic" placeholder="topic*" class="fil_con required" /></td>
             </tr>
              <tr>
              <td>Feedback:</td>
              <td><textarea name="comments" id="t5" rows="6" cols="25" class="fil_textmsg" placeholder="feedback"></textarea></td>
              </tr>
              <tr>
              <td><input type="submit" class="con_btn" value="submit" /></td></tr>
			  </table>
			  </form>
<%
	
    if(request.getMethod().equalsIgnoreCase("post")){
	
	
	String first=request.getParameter("name");
	String second=request.getParameter("email");
	String third=request.getParameter("telephone");
	String fourth=request.getParameter("topic");
	String fifth=request.getParameter("comments");
	
	UserDAO ud=new UserDAO();

		String value=ud.feedback(first,second,third,fourth,fifth);
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