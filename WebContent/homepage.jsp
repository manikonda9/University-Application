<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WISDOM UNIVERSITY HOME PAGE</title>
<link href="Login1.css" rel="stylesheet"/>
<link href="bootstrap.min.css" rel="stylesheet"/>
<script src="jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:100%;
      margin: auto;
  }
  </style>
</head>
<body position="fixed">
	<div>
	    <div>
		    <div class="mk"><a href="homepage.jsp"><img src="images/Capture1.PNG"></img></a></div>
			    <div>
				    <div class="mk1"><marquee behavior="scroll" direction="left">Welcome to WISDOM UNIVERSITY<sub>Way to Bright future</sub></marquee></div>
					<div class="mk2">
					    <ul>
                            <li>
                                <a href="faculty.jsp">Faculty</a>
							</li>
                            <li>
                                <a href="reach.jsp">How to reach</a>
							</li>
                            <li><a href="contactus2.jsp">Contact Us</a></li>
                            </ul>	
					</div>
				</div>
				<div class="mk3">
				    <ul>
                          <li>
		                      <a href="aboutus.jsp">ABOUT US</a>
                                  <ul class="dropdown1">
                                      <li><a href="Mission Statement.jsp">Mission Statement</a></li>
                                      <li><a href="Director message.jsp">Director Message</a></li>
				                      <li><a href="Infrastructure.jsp">Infrastructure</a></li>
                                  </ul>
		                  </li>
                          <li>
		                      <a href="#">PEOPLE</a>
                                  <ul class="dropdown">
                                      <li><a href="Administration.jsp">Administration</a></li>
                                      <li><a href="faculty.jsp">Faculty</a></li>
                                  </ul>
		                  </li>
                          <li>
                              <a href="Programs.jsp">ACADEMICS</a>
                                  <ul class="dropdown">
                                      <li><a href="Programs.jsp">Degree Program</a></li>
                                      <li><a href="Login.jsp">Admission</a></li>
                                  </ul>
                          </li>
		                  <li>
                              <a href="placements.jsp">PLACEMENTS</a>
                          </li>
		                  <li>
                              <a href="feedback2.jsp">FEEDBACK</a>
                          </li>
		                  <li>
		                      <a href="Login.jsp">LOGIN</a>
		                  </li>
                   </ul>
				</div>
			</div>
			<a href="Login.jsp" id="a1"><div id="d4"></div></a>
	        <a href="Director message.jsp"><div id="d5"></div></a>
	<div id="d6">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/i1.jpg" style="width:550px;height:250px;">
      </div>

      <div class="item">
        <img src="images/i2.jpg" style="width:550px;height:250px;">
      </div>
    
      <div class="item">
        <img src="images/i3.jpg" style="width:550px;height:250px;">
      </div>

      <div class="item">
        <img src="images/i4.jpg" style="width:550px;height:250px;">
      </div>
      <div class="item">
        <img src="images/i5.jpg" style="width:550px;height:250px;">
      </div>
    
      <div class="item">
        <img src="images/i6.jpg" style="width:550px;height:250px;">
      </div>

      <div class="item">
        <img src="images/i7.jpg" style="width:550px;height:250px;">
      </div> 
      <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    </div>
    </div>    
  </div>
 
	<a href="reach.jsp"><div id="d7"></div></a>
	 
			<div class="last1"><p>Copyright @ 2016 WISDOM UNIVERSITY</p></div>
	</div>		
</body>
</html>