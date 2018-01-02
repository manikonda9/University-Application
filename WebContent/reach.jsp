<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Common page.jsp" />
<link href="Login1.css" rel="stylesheet"/>
<script
src="http://maps.googleapis.com/maps/api/js">
</script>
<script>
var myCenter=new google.maps.LatLng(12.8447,77.6631);

function initialize()
{
var mapProp = {
  center: myCenter,
  disableDefaultUI:true,
  zoom:16,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("campus"),mapProp);

var marker = new google.maps.Marker({
  position: myCenter,
  title:'Click to zoom'
  });

marker.setMap(map);

// Zoom to 9 when clicking on marker
google.maps.event.addListener(marker,'click',function() {
  map.setZoom(9);
  map.setCenter(marker.getPosition());
  });
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>


<title>Insert title here</title>
</head>
<body>
<div class="dstmt">
<h2 id="header">How To Reach:</h2><hr/><hr/>
<div id="campus"></div>
<div id="messdiv1">
<p id="paragraph1">Bangalore has always been called the Silicon Valley of India. With the pleasant climate, the urban amenities, the rich tradition of technical education, and the highly professional ambience, numerous global and local corporate big-name entities have found a home here. The WISDOM UNIVERSITY campus is located in the heart of Electronics City, one of the prestigious IT destinations in Bangalore, with excellent infrastructure, facilities, and services.<br/><br/>The list of companies located in the high-tech area close to the Institute is a virtual Who's Who of the IT business. WISDOM UNIVERSITY is situated opposite the Infosys corporate headquarters, and is within easy walking distance of other major companies like HP, Siemens, Wipro, GE, Satyam, and others, giving students and faculty opportunities for productive interaction with the industry.</p>
</div>
</div>
</body>
</html>