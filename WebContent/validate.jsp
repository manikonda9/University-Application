<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="Common page.jsp" />
<link href="aboutus.css" rel="stylesheet"/>
<link href="Login1.css" rel="stylesheet"/>
</head>
<body>
<div class="first">
   <%     
   	 session.invalidate();
     response.sendRedirect("logout.jsp");
             %>
             </div>
</body>
</html>