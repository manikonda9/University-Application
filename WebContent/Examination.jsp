<%@ page language="java"
import="java.util.*,java.text.DateFormat,
java.text.SimpleDateFormat"
import="university.*"

 contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Examination Page:</title>
<jsp:include page="studentHome.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<script>

function Question(statement, op1, op2, op3, op4, marks, ans)
{
    this.statement=statement;
    this.op1=op1;
    this.op2=op2;
    this.op3=op3;
    this.op4=op4;
    this.marks=marks;
    this.ans=ans;
}


var questions = [new Question("1. The New Operator", "Returns a pointer to the variable", "Creates a variable called new", "Obtains memory for a new variable", "Tells how much meory is available", 10, 3),
             new Question("2. Java uses ___ to represent characters", "ASCII code", "Unicode", "Byte code", "None of the above", 10, 2),
             new Question("3. The minimum value of char type variable is?","u0020","u00ff","u0010","u0000",10,4),
             new Question("4. Step by step instructions written to solve any problem is called","pseducode","algorithm","assembler","class",10,2),
             new Question("5. Diagramatic or symbolic representation of an algorithm is called", "Data-Flow diagram", "E-R diagram", "Flowchart", "None of the above", 10, 3),
             new Question("6. Which of the following does not deal with exceptions?","throws","throw","finalize","finally",10,3),
             new Question("7. Which class is base class for all exceptions?","String","Error","Throwable ","RuntimeException",10,3),
             new Question("8. What is the name of the method used to start a thread execution?","init();","start();","run();","resume();",10,2),
             new Question("9. Which of the following will directly stop the execution of a Thread?","wait()","notify()","notifyall() ","exits synchronized code",10,1),
             new Question("10.Which method must be defined by a class implementing the java.lang.Runnable interface?","void run()","public void run()","public void start() ","void run(int priority)",10,2)];

var score=0;
var count=0;

function checkAnswer()
{
    var ans=0;
    if(document.getElementById("rd1").checked)
	    ans=1;
    else if(document.getElementById("rd2").checked)
	    ans=2;
    else if(document.getElementById("rd3").checked)
	    ans=3;
    else if(document.getElementById("rd4").checked)
	    ans=4;

    if(ans==questions[count].ans)
        score+=questions[count].marks;	
  document.getElementById("hiddenText").value=score;
 // alert(document.getElementById("hiddenText").value);
    

    next();
}

function next()
{
     count++;

    if (count < questions.length) {
        document.getElementById("div1").innerHTML = questions[count].statement;
        document.getElementById("l1").innerHTML = questions[count].op1;
        document.getElementById("l2").innerHTML = questions[count].op2;
        document.getElementById("l3").innerHTML = questions[count].op3;
        document.getElementById("l4").innerHTML = questions[count].op4;
    }

    else {
        //alert("Final Score: " + score);
        document.getElementById('nextbtn').disabled = 'hidden';
    }

  document.getElementById('rd1').checked = false;
  document.getElementById('rd2').checked = false;
  document.getElementById('rd3').checked = false;
  document.getElementById('rd4').checked = false;
}

function start()
{

    document.getElementById("div1").innerHTML=questions[count].statement;
	document.getElementById("l1").innerHTML=questions[count].op1;
    document.getElementById("l2").innerHTML=questions[count].op2;
    document.getElementById("l3").innerHTML=questions[count].op3;
    document.getElementById("l4").innerHTML = questions[count].op4;
}

</script>


</head>
<body onload="start()">
<%
User u=(User)session.getAttribute("user");
	String email1=null;
	if(u==null)
	{
		%></script><script>window.location.href='Login.jsp';</script><%
	}
	else{
		email1=u.getEmailid();
	}
	%>
<div class="second2">
<div class="changePassword"><h2 style= "margin-top:10px">Total 10 questions:</h2></div>
	<div class="cp5">

<div id="div1"></div>
    
    <input type="radio" id="rd1" name="radio" value="1" /> <label for="rd1" id="l1"> </label> <br/>
    <input type="radio" id="rd2" name="radio" value="2"/> <label for="rd2" id="l2"> </label>  <br/>
    <input type="radio" id="rd3" name="radio" value="3"/> <label for="rd3" id="l3"> </label>  <br/>
    <input type="radio" id="rd4" name="radio" value="4"/> <label for="rd4" id="l4"> </label>  <br/>
    <input type="button" value="Next" id="nextbtn" onclick=" checkAnswer()"/>
    
   
<div id="final"></div>
<form method="post">
<input type="submit" value="Submit" name="submit"/>
<input type="hidden" name="hiddenText1" id="hiddenText"  />

</form>
<%      
User user=(User)session.getAttribute("user");
String email=user.getEmailid();
    		
      if(request.getMethod().equalsIgnoreCase("post")){

             UserDAO userdao= new UserDAO();
             User u2=userdao.getApprovedInfo(email);
             String course=u2.getCoursename();
            
    		String score1=request.getParameter("hiddenText1");
    		if(score1=="")
    		{
    			score1="0";
    		}
    		/* out.println("score is "+score1); */
    		String maxmarks="100";
    		String percentile=score1+"%";
    		
    	String status=userdao.examination(email,score1,maxmarks,percentile,course);
    	if(status=="inserted")
    	{
    		response.sendRedirect("Success1.jsp");
    	}
      }
%>
</div>
</div>
</body>
</html>