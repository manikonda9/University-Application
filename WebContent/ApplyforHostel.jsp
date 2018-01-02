<%@ page language="java" 
import="university.*"
contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="studentHome.jsp" />
<link href="login1.css" rel="stylesheet"/>
<link href="cslA.css" rel="stylesheet"/>

	<script>
	
	function validationOfForm()
	{
		
		
var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
var pat1=/^([1-8][0-9]{5})+$/;
		var username=document.getElementById("userName").value;
		
		 var fathername=document.getElementById("fatherName").value;
		 var email=document.getElementById("mailId").value;
		var address=document.getElementById("Address").value;
		var pincode=document.getElementById("pincode").value;
		var city=document.getElementById("city").value;
		var state=document.getElementById("state").value;
		var country=document.getElementById("country").value; 
		
		 document.getElementById('usernameSpan').innerHTML="";
		    if(username=="" ||username==undefined ||!isNaN(username))
			{
			document.getElementById('usernameSpan').innerHTML="please enter username";
			document.f.userName.focus();
			return false;
			} 
		    
		    
		    document.getElementById('fathernameSpan').innerHTML="";
		    if(fathername=="" ||fathername==undefined ||!isNaN(fathername))
			{
			document.getElementById('fathernameSpan').innerHTML="please enter fathername";
			document.f.fatherName.focus();
			return false;
			} 
		    
		    
		    document.getElementById('mailSpan').innerHTML="";
		    if(email=="" ||email==undefined ||!isNaN(email))
			{
			document.getElementById('mailSpan').innerHTML="please enter mailid";
			document.f.mailId.focus();
			return false;
			} 
		    
		    document.getElementById('mailSpan').innerHTML="";
			   if(!filter.test(email))
				{
					document.getElementById('mailSpan').innerHTML="Please enter valid email id";
					document.f.mailId.focus();
					return false;	
				}
			   
			   
			   
			   document.getElementById('addressSpan').innerHTML="";
				if(address=="")
				   {
					   document.getElementById('addressSpan').innerHTML="Please enter Address";
						document.f.Address.focus();
						return false;   
				   }
				
				document.getElementById('pincodeSpan').innerHTML="";
				if(pincode=="")
				{
					document.getElementById('pincodeSpan').innerHTML="Please enter PinCode";
					document.f.pincode.focus();
				    return false;  
					
				}
				document.getElementById('pincodeSpan').innerHTML="";
				if(!pat1.test(pincode))
				{
					document.getElementById('pincodeSpan').innerHTML="Please enter ValidPinCode";
					document.f.pincode.focus();
				    return false;
				}
				
				document.getElementById('citySpan').innerHTML="";
				if(city=="")
				{
					document.getElementById('citySpan').innerHTML="Please enter City";
					document.f.city.focus();
				    return false;  
					
				}
				
				
				document.getElementById('stateSpan').innerHTML="";
				 if(state=="")
				{
					document.getElementById('stateSpan').innerHTML="Please enter State";
					document.f.state.focus();
				    return false;
				}
				 document.getElementById('countrySpan').innerHTML="";
				if(country=="")
				{
					document.getElementById('countrySpan').innerHTML="Please enter Country";
					document.f.country.focus();
				    return false;  
					
				} 
		    
		    
		
	}
	

	
</script>

</head>
<body>
<%User u=(User)session.getAttribute("user");
String EMAIL=u.getEmailid();
%>
<div class="second3">
<div class="changePassword"> <h2 style= "margin-top:10px">Apply for Hostel</h2></div>
			<div class="cp4"><img src="images/hostelPic2.jpg"></img></div>
			<div class="cp4">	
			<form method="post" name="f" onSubmit="return validationOfForm() ">
	<table class="tab" cellspacing="20">
	  
	    <tr>
		 <td>UserName:</td>
		 	<td><input type="text" name="userName" id="userName" placeholder="Enter username" autofocus/>
		 </td>
		 <td>
		 <span id="usernameSpan"  style="font-style:italic; color:red;"></span>
		 </td>
		</tr>
		
		<tr>
		<td>FatherName:</td>
		 <td><input type="text" name="fatherName" id="fatherName" placeholder="Enter Fathername"/>
		 <span id="fathernameSpan"  style="font-style:italic; color:red;"></span>
		 </td>
		</tr>
		
		<tr>
        <td>EmailId:</td>
        <td><input type="text" name="mailId" id="mailId" value="<%=EMAIL%>" disabled/>
        <span id="mailSpan"  style="font-style:italic; color:red;"></span>
        </td>
        </tr>
        
		<tr>
		<td>Address:</td>
		<td><textarea  rows="5" cols="20" name="Address" id="Address" placeholder="Enter Address"></textarea>
		<span id="addressSpan"  style="font-style:italic; color:red;"></span>
		</td>
		</tr>
		
		<tr>
		<td>Pincode:</td>
		<td><input type="text" name="pincode" id="pincode" placeholder="Enter Pincode"/>
		<span id="pincodeSpan"  style="font-style:italic; color:red;"></span>
		</td>
		</tr>
		
		<tr>
		 <td>City:</td>
		 <td><input type="text" name="city" id="city" placeholder="Enter City"/>
		 <span id="citySpan"  style="font-style:italic; color:red;"></span>
		 </td>
		</tr>
		
		<tr>
        <td>State:</td>
        <td><input type="text" name="state" id="state" placeholder="Enter State"/>
        <span id="stateSpan"  style="font-style:italic; color:red;"></span>
        </td>
        </tr>
        
		<tr>
		<td>Country:</td>
		<td><input type="text" name="country" id="country" placeholder="Enter Country"/>
		<span id="countrySpan"  style="font-style:italic; color:red;"></span>
		</td>
		</tr>
		
		 <tr>
		  <td>
		   <input type ="submit" name="bt2" value ="submit"  class="b1"/>
		  </td>
		  
		 </tr>
				</table>
</form>  
		  <%
		  
		  if(request.getMethod().equalsIgnoreCase("post"))
			{
				
				String username=request.getParameter("userName");
				String fathername=request.getParameter("fatherName");
				//String email=request.getParameter("mailId");
				String address=request.getParameter("Address");
				String pincode=request.getParameter("pincode");
				String city=request.getParameter("city");
				String state=request.getParameter("state");
				String country=request.getParameter("country");
				
				
				User user=new User(username,fathername,EMAIL,address,pincode,city,state,country);
				UserDAO userdao= new UserDAO();
				String status=userdao.forHostel(user);
				if(status=="inserted"){
					%></script><script>window.location.href='Success2.jsp';</script><%
					 //out.write("<script>");
					   //out.write("alert(\"You are successfully applied for admission" + "\")");
					   //out.write("</script>"); 
				   }
				   else
				   {
					 out.write("<script>");
					 out.write("alert(\"Admission failed" + "\")");
					 out.write("</script>");
				   }
			}
		  
		  
		  %>
		  </div>
		  </div>
		  
</body>
</html>