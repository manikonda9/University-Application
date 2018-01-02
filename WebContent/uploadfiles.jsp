<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="university.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Common page.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<title>Insert title here</title>
<script>
function validationOfApplication()
{
	document.getElementById('tenthSpan').innerHTML="";
	if(document.getElementById("tenthfile").value == "") 
      {
    	  // alert("uploadfile");
    	   document.getElementById('tenthSpan').innerHTML="Please Upload File";
    	   document.f.tenthfile.focus();
			return false;
      }
	
	document.getElementById('puSpan').innerHTML="";
  if(document.getElementById("pufile").value == ""){
		
		document.getElementById('puSpan').innerHTML="Please Upload File";
		document.f.pufile.focus();
		return false;
	} 
  
  document.getElementById('degreeSpan').innerHTML="";
  if(document.getElementById("graduationfile").value == "") 
  {
	   //alert("uploadfile");
	   document.getElementById('degreeSpan').innerHTML="Please Upload File";
	   document.f.graduationfile.focus();
		return false;
  }
  

document.getElementById('picSpan').innerHTML="";
if(document.getElementById("studentpic").value=="")
{
	//alert("pic");
	document.getElementById('picSpan').innerHTML="Please Upload Picture";
	document.f.studentpic.focus();
	return false;
}

document.getElementById('signatureSpan').innerHTML="";
if(document.getElementById("signature").value=="")
{
	//alert("sig");
	document.getElementById('signatureSpan').innerHTML="Please Upload Signature";
	document.f.signature.focus();
	return false;
	
}

}

</script>
</head>
<body>
<div class="first1">
<form method="post" name="f"  action="UploadServlet"
        enctype="multipart/form-data">
<table>
    <tr>
        <td>X Class Certificate:</td>
        <td><input type="file" name="pic"  id="tenthfile" accept="image/*"><span id="tenthSpan" style="font-style:italic; color:red;" ></span></td>
    </tr>
    <tr>
        <td>XII Class Certificate:</td>
        <td><input type="file" name="pic"  id="pufile" accept="image/*"><span id="puSpan" style="font-style:italic; color:red;" ></span></td>
    </tr>
    <tr>
        <td>Graduation Certificate:</td>
        <td><input type="file" name="pic"  id="graduationfile" accept="image/*"><span id="degreeSpan" style="font-style:italic; color:red;"></span></td>
    </tr>
    <tr>
					    <td>
						Upload Photo:
						</td>
						<td>
						<input type="file"  id="studentpic" name="pic" accept="image/*">
						<span id="picSpan" style="font-style:italic; color:red;"></span></td>
					  </tr>
					  <tr>
					    <td>
						Upload Signature:
						</td>
						<td>
						<input type="file"   id="signature" name="pic" accept="image/*">
						<span id="signatureSpan" style="font-style:italic; color:red;"></span></td>
					  </tr>
					  <tr>
						<td>
							<input type ="submit"  value ="Submit" onclick="return validationOfApplication()" class="button"/>
						</td>
                        <td>
							<input type ="reset" name="reset" class="button"></input>
						</td>
					</tr>
</table>
</form>
</div>
</body>
</html>