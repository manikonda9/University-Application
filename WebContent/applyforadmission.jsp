<%@ page 
import="university.*"
language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="studentHome.jsp" />
<link href="Login1.css" rel="stylesheet"/>
	    <title>Application form</title>
	    
	    <script>
	    
            /* window.onload=function(){
            var yearArray = ["1980","1981","1982","1983","1984","1985","1986","1987","1988","1989","1990","1991","1992","1993","1994","1995","1996","1997","1998","1999","2000"];
			//alert(document.getElementById('yearDropDown'));
            var yearList = document.getElementById('yearDropDown');
            for (var i = 0; i < yearArray.length; ++i) {
                yearList[yearList.length] = new Option(yearArray[i], yearArray[i]);
               
            }
            }

        function populateMonth() {
            var MonthArray = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
            var monthList = document.getElementById('monthDropDown');
            
            monthList.length = 1;
            for (var i = 1; i <= MonthArray.length; ++i) {
                monthList[monthList.length] = new Option(MonthArray[i-1],(i-1));
            }
            monthList.options[0].selected = 'selected';
            monthList.disabled = "";                     
           // document.getElementById('Result').innerHTML = "";
			//document.getElementById('displayButton').disabled = "disabled";
        }

        function populateDay() {
            var yearList = document.getElementById('yearDropDown');
            var monthList = document.getElementById('monthDropDown');
            var dayList = document.getElementById('daydropdown');

            var year = yearList.options[yearList.selectedIndex].value;
            var month = monthList.options[monthList.selectedIndex].value;
            var day = calculateNumberOfDays(year, month);

            dayList.length = 1;
            for (var i = 1; i <= day; i++) {
                dayList[dayList.length] = new Option(i,i);
            }

            dayList.options[0].selected = 'selected';
            dayList.disabled = "";
           
           //document.getElementById('Result').innerHTML = "";
          // document.getElementById('displayButton').disabled = "disabled";
                          
        }

          function enableDisplay() {
            //document.getElementById('displayButton').disabled = "";
        }  

        function calculateNumberOfDays(year, month) {
            
            var monthArr = new Array(2);
            monthArr[0] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
            monthArr[1] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
            
            var isLeap = checkLeap(year) ? 1 : 0;

            return monthArr[isLeap][month];    
        }

        function checkLeap(year) {
            return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
        }
 */        
	    
	  function validationOfApplication()
	  {
		var pat1=/^([1-8][0-9]{5})+$/;
		var pat2=/^([7-9][0-9]{9})+$/;
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		var mobileverification = /^([7-9])([0-9]){9}$/;
	    var firstname=document.getElementById("fName").value;
	    var lastname=document.getElementById("lName").value;
	    var fathername=document.getElementById("fatherName").value;
	    var email=document.getElementById("emailId").value;
	    var mobilenumb=document.getElementById("mobile").value;
	    var city=document.getElementById("City").value;
	    var pincode=document.getElementById("Pin_Code").value;
	    
	    var state=document.getElementById("State").value;
	    
	    var address=document.f.Address.value;
	    
	    var country=document.getElementById("Country").value;
	    
	    
	    var nationality=document.getElementById("nationality").value;
	    
	    var tenthboard=document.getElementById("tenthBoard").value;
	    var tenthper=document.getElementById("tenthPer").value;
	    var tenthyearofpassing=document.getElementById("tenthYrOfPassing").value;	
	    
	    
	    var puboard=document.getElementById("puBoard").value;
	    var puper=document.getElementById("puPer").value;
	    var puyearofpassing=document.getElementById("puYrOfPassing").value;					
	    
	    var dob=document.getElementById("dob").value;
	   // var month=document.getElementById("monthDropDown").selectedIndex;
	   // var day=document.getElementById("daydropdown").selectedIndex;
	   // var course=document.getElementById("course").selectedIndex;
	    
		document.getElementById('fNameSpan').innerHTML="";
	    if(firstname=="" ||firstname==undefined ||!isNaN(firstname))
		{
		document.getElementById('fNameSpan').innerHTML="please enter Firstname";
		document.f.fName.focus();
		return false;
		} 
	    
	    document.getElementById('lNameSpan').innerHTML="";
	    if(lastname=="" ||lastname==undefined ||!isNaN(lastname))
		{
		document.getElementById('lNameSpan').innerHTML="please enter Lastname";
		document.f.lName.focus();
		return false;
		}
	    
	    document.getElementById('fatherNameSpan').innerHTML="";
	    if(fathername=="" ||fathername==undefined ||!isNaN(fathername))
		{
		document.getElementById('fatherNameSpan').innerHTML="please enter Fathername";
		document.f.fatherName.focus();
		return false;
		} 
	   
	   document.getElementById('genderSpan').innerHTML="";
	   if(!document.getElementById('male').checked && !document.getElementById('female').checked)
		{
		document.getElementById('genderSpan').innerHTML="Please Select gender";
		document.f.male.focus();
		return false;
		}
	    
	   document.getElementById('dobSpan').innerHTML="";
	   if(dob==""||dob==null||dob==undefined){
		   document.getElementById('dobSpan').innerHTML="Please Select Data of birth";
		   document.f.dob.focus();
			return false; 
		   
	   }
	  /*  document.getElementById('dobSpan').innerHTML="";
	   if(month==0){
		   document.getElementById('dobSpan').innerHTML="Please Select Month";
		   document.f.monthDropDown.focus();
			return false; 
		   
	   }
	   document.getElementById('dobSpan').innerHTML="";
	   if(day==0){
		   document.getElementById('dobSpan').innerHTML="Please Select Date";
		   document.f.daydropdown.focus();
			return false; 
		   
	   } */
	   
	   document.getElementById('emailIdSpan').innerHTML="";
	   if(email=="")
		   {
		   document.getElementById('emailIdSpan').innerHTML="Please enter email id";
		   document.f.emailId.focus();
		   return false;
		   }
	   
	   document.getElementById('emailIdSpan').innerHTML="";
	   if(!filter.test(email))
		{
			document.getElementById('emailIdSpan').innerHTML="Please enter valid email id";
			document.f.emailId.focus();
			return false;	
		}

	   document.getElementById('mobileSpan').innerHTML="";
	   if(mobilenumb=="")
	   {
		   document.getElementById('mobileSpan').innerHTML="Please enter mobilenumber";
		   document.f.mobile.focus();
			return false;   
	   }
	   document.getElementById('mobileSpan').innerHTML="";
		if(!pat2.test(mobilenumb))
		{
			document.getElementById('mobileSpan').innerHTML="Please enter valid mobilenumber";
			document.f.mobile.focus();
			return false;
		}
		
		document.getElementById('adressSpan').innerHTML="";
		if(address=="")
		   {
			   document.getElementById('adressSpan').innerHTML="Please enter Address";
				document.f.Address.focus();
				return false;   
		   }
		
		document.getElementById('citySpan').innerHTML="";
		if(city=="")
		{
			document.getElementById('citySpan').innerHTML="Please enter City";
			document.f.City.focus();
		    return false;  
			
		}
		document.getElementById('pin_codeSpan').innerHTML="";
		if(pincode=="")
		{
			document.getElementById('pin_codeSpan').innerHTML="Please enter PinCode";
			document.f.Pin_Code.focus();
		    return false;  
			
		}
		document.getElementById('pin_codeSpan').innerHTML="";
		if(!pat1.test(pincode))
		{
			document.getElementById('pin_codeSpan').innerHTML="Please enter PinCode";
			document.f.Pin_Code.focus();
		    return false;
		}
		
		document.getElementById('stateSpan').innerHTML="";
		 if(state=="")
		{
			document.getElementById('stateSpan').innerHTML="Please enter State";
			document.f.State.focus();
		    return false;
		}
		 document.getElementById('countrySpan').innerHTML="";
		if(country=="")
		{
			document.getElementById('countrySpan').innerHTML="Please enter Country";
			document.f.Country.focus();
		    return false;  
			
		} 
		document.getElementById('nationalitySpan').innerHTML="";
		if(nationality=="")
		{
			document.getElementById('nationalitySpan').innerHTML="Please enter Nationality";
			document.f.nationality.focus();
		    return false;  
			
		} 
		document.getElementById('tenthSpan').innerHTML="";
		if(tenthboard=="")
		{	
			document.getElementById('tenthSpan').innerHTML="Please Enter X Board";
			document.f.tenthBoard.focus();
			return false;
		}
		document.getElementById('tenthSpan').innerHTML="";
		if(tenthper=="")
		{	
			document.getElementById('tenthSpan').innerHTML="Please Enter X Percentage";
			document.f.tenthPer.focus();
			return false;
		}
		document.getElementById('tenthSpan').innerHTML="";
		if(tenthyearofpassing=="")
		{	
			document.getElementById('tenthSpan').innerHTML="Enter X Passing Year";
			document.f.tenthYrOfPassing.focus();
			return false;
		}
		 document.getElementById('puSpan').innerHTML="";
         if(puboard=="")
    	  {
			
			document.getElementById('puSpan').innerHTML="Please Enter XII Board";
			document.f.puBoard.focus();
			return false;
		}
         document.getElementById('puSpan').innerHTML="";
    	  if(puper=="")
    	  {
			document.getElementById('puSpan').innerHTML="Please Enter XII Percentage";
			document.f.puPer.focus();
			return false;
		}
    	  document.getElementById('puSpan').innerHTML="";
    	  if(puyearofpassing==""){
			
			document.getElementById('puSpan').innerHTML="Enter XII Passing Year";
			document.f.puYrOfPassing.focus();
			return false;
		}
       document.getElementById('courseSpan').innerHTML="";
   	   if(course==0){
   		   document.getElementById('courseSpan').innerHTML="Please Select Course";
   		   document.f.course.focus();
   			return false;   
   	   }
      
      
  /*    document.getElementById('tenthFileSpan').innerHTML="";
  	if(document.getElementById("tenthfile").value == "") 
        {
      	  // alert("uploadfile");
      	   document.getElementById('tenthFileSpan').innerHTML="Please Upload File";
      	   document.f.tenthfile.focus();
  			return false;
        }
  	
  	document.getElementById('puFileSpan').innerHTML="";
    if(document.getElementById("pufile").value == ""){
  		
  		document.getElementById('puFileSpan').innerHTML="Please Upload File";
  		document.f.pufile.focus();
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
  	
  }*/
	  } 
	    </script>
</head>
<body>


			<div class="first1">
	        <div id="d1"><h1>Welcome to the Wisdom University Online Admission Portal</h1></div>
	        <div >
	<form method="post" name="f" onSubmit="return validationOfApplication()">
	<%User u=(User)session.getAttribute("user");
String EMAIL=u.getEmailid();
String mobileNUMBER=u.getNumber();
%>
        <fieldset>
                <legend>Application Form</legend>
				<table cellspacing="6" cellpadding="6">
		     		<tr>
						<td colspan="2">Enter Details here</td>
					</tr>
					<tr>
						<td>First Name :</td>
						<td><input type="text" name="fName" id="fName" placeholder="Enter First Name"/><span id="fNameSpan" style="font-style:italic; color:red;"></span></td>
					</tr>
                     <tr>
						<td>Last Name :</td>
						<td><input type="text" name="lName" id="lName" placeholder="Enter Last Name"/><span id="lNameSpan" style="font-style:italic; color:red;"></span></td>
					</tr>
					<tr>
						<td>Father's Name :</td>
						<td><input type="text" name="fatherName" id="fatherName" placeholder="Enter Father's Name"/><span id="fatherNameSpan" style="font-style:italic; color:red;"></span></td>
					</tr>
					<tr>
					    <td><label>Gender :</label></td>
					    <td>
                            <input type ="radio" name ="gender" id="male" value ="Male"/><label>Male</label>
    					   <input type ="radio" name ="gender"  id="female" value ="Female"/><label>Female</label><span id="genderSpan" style="font-style:italic; color:red;"></span>
     
                        </td>
    					</tr>
					<tr>
						<td>Date of Birth :</td>
					    <!-- <td>
                          
                            <select id="yearDropDown"  name="year" onchange="populateMonth()">
                             <option selected="selected">--Select Year--</option>
                            </select>
                            
                           
                            <select disabled="disabled"  name="month" id="monthDropDown" onchange="populateDay()">
                   				<option disabled="disabled" selected="selected">--Select Month--</option>
                          	</select>
                           
                              
                        <select disabled="disabled" id="daydropdown" name="date" onchange="enableDisplay()" >
                           <option disabled="disabled" selected="selected">-- Select Date--</option>
                        </select> -->
                        <td><input type="date" name="dob" id="dob" />
                            <span id="dobSpan"  style="font-style:italic; color:red;"></span>
			            </td>
					</tr>
					<tr>
					    <td>Email Id:</td>
                        <td><input type="text" name="emailId" id="emailId" value="<%=EMAIL%>" disabled/><span id="emailIdSpan" style="font-style:italic; color:red;"></span></td>
					</tr>
                     <tr>
					    <td>Mobile Number:</td>
                        <td><input type="text" name="mobile" id="mobile" value="<%=mobileNUMBER%>" disabled/><span id="mobileSpan" style="font-style:italic; color:red;"></span></td>
					</tr>
                    <tr>
                          <td>Address:<br /><br /><br /></td>
                          <td><textarea name="Address"  rows="4" cols="30" placeholder=""></textarea><span id="adressSpan" style="font-style:italic; color:red;" ></span></td>
                    </tr>
                    <tr>
                          <td>City:</td>
                          <td>
                              <input type="text" name="City" id="City"  placeholder="Enter city name"maxlength="30" /><span id="citySpan" style="font-style:italic; color:red;" ></span>
                           </td>
                    </tr>
                    <tr>    
                        <td>Pin Code:</td>
                           <td><input type="text" name="Pin_Code" id="Pin_Code"  placeholder="Enter Pincode" maxlength="6" /><span id="pin_codeSpan" style="font-style:italic; color:red;" ></span>
                           </td>
                     </tr>
					  <tr>
                           <td>State:</td>
                           <td><input type="text" name="state" id="State" placeholder="Enter State name"/><span id="stateSpan" style="font-style:italic; color:red;" ></span></td>
                      </tr>
                      <tr>
                           <td>Country:</td>
                           <td><input type="text" name="Country"  id="Country" placeholder="Enter country name"/><span id="countrySpan" style="font-style:italic; color:red;" ></span></td>
                       </tr>
                       
                       <tr>    
                           <td>Nationality:</td>
                           <td><input type="text" name="nationaity" id="nationality" /><span id="nationalitySpan" style="font-style:italic; color:red;" ></span></td>
                      </tr>
		              <tr>
                      
                            <td>QUALIFICATION:</td>
                            <td>
                                 <table>
                                      <tr>
                                        <td align="center"><b>Sl.No.</b></td>
                                        <td align="center"><b>Examination</b></td>
                                        <td align="center"><b>Board</b></td>
                                        <td align="center"><b>Percentage</b></td>
                                        <td align="center"><b>Year of Passing</b></td>
						
                                     </tr>
 
                                     <tr>
                                        <td>1</td>
                                        <td>Class X</td>
                                        <td><input type="text" name="ClassX_Board"  id="tenthBoard"  maxlength="30" /></td>
                                        <td><input type="text" name="tenthper" id="tenthPer" maxlength="30" /></td>
                                        <td><input type="text" name="ClassX_YrOfPassing"  id="tenthYrOfPassing" maxlength="30" /><span id="tenthSpan" style="font-style:italic; color:red;" ></span></td>
										
                                     </tr>
 
                                     <tr>
                                        <td>2</td>
                                        <td>Class XII</td>
                                        <td><input type="text" name="ClassXII_Board" id="puBoard" maxlength="30" /></td>
                                        <td><input type="text" name="puper" id="puPer"  maxlength="30" /></td>
                                        <td><input type="text" name="ClassXII_YrOfPassing" id="puYrOfPassing" maxlength="30" /><span id="puSpan" style="font-style:italic; color:red;" ></span></td>
                                        
									  </tr>
                                 </table>
                             </td>
					  </tr>
				<!--	  <tr>
        <td>X Class Certificate:</td>
        <td><input type="file" name="pic"  id="tenthfile" accept="image/*"><span id="tenthFileSpan" style="font-style:italic; color:red;" ></span></td>
    </tr>
    <tr>
        <td>XII Class Certificate:</td>
        <td><input type="file" name="pic"  id="pufile" accept="image/*"><span id="puFileSpan" style="font-style:italic; color:red;" ></span></td>
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
					  </tr>-->
					  <tr>
					      <td>Select Course:</td>
					      <td><select id="course" name="course">
                            <option>--Select Course--</option>
                            <option>CSE</option>
                            <option>IT</option>
                            <option>ECE</option>
                            <option>EEE</option>
                            <option>CIVIL</option>
                        </select><span id="courseSpan" style="font-style:italic; color:red;" ></span></td>
					  </tr>
                      <tr>
						<td>
							<input type ="submit" name="continue" value ="Submit" class="button"/>
						</td>
                        <td>
							<input type ="reset" name="reset" class="button"></input>
						</td>
					</tr>
	</table>
	</fieldset>
	</form>
	</div>
    </div>
  <%
	if(request.getMethod().equalsIgnoreCase("post")){
	
	String firstname=request.getParameter("fName");
	String lastname=request.getParameter("lName");
	String fathername=request.getParameter("fatherName");
	String gender=request.getParameter("gender");
	String dob=request.getParameter("dob");
	//String month=request.getParameter("month");
	//String year=request.getParameter("year");
	
	//String dateofbirth=day + "/" +month+ "/" +year;
	
	//String mailid=request.getParameter("emailId");
	
	//String mobilenumber=request.getParameter("mobile");
	
	String address=request.getParameter("Address");
	
	String city=request.getParameter("City");
	
	 String pincode=request.getParameter("Pin_Code");
	 
	 String state=request.getParameter("state");
	 
	 String country=request.getParameter("Country");
	 
	 String nationality=request.getParameter("nationaity");
	 
	 String tenthper=request.getParameter("tenthper");
	 String puper=request.getParameter("puper");
	String course=request.getParameter("course");
	 
   User user=new User(firstname,lastname, EMAIL, mobileNUMBER, dob,address,nationality,city, state,country, pincode,gender,fathername,tenthper,puper,course);
	UserDAO userdao= new UserDAO();
	int status=userdao.application(user);
	//System.out.println(status);
	
	   if(status>0){
		   %></script><script>window.location.href='Success.jsp';</script><%
		   //response.sendRedirect("Success.jsp");
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
	</body>
</html>