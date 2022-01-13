<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
	
	<%
		response.setHeader("Cache-Control", "no-store, must-revalidate"); // It prevents to come back on secured page (For security)
		response.setHeader("Pragma", "no-Cache"); // For HTTP 1.0
		response.setHeader("Expires", "0"); // Proxies
	
		if(session.getAttribute("username")==null)
			response.sendRedirect("login.jsp");
		
	%>
	
	<h1>Welcome ${username}</h1> 
	
	<ol>
		<li> <a href="https://jspmjscoe.edu.in"><h3>Official Website</h3></a> </li>
		<li> <a href="videos.jsp"><h3>Go to Videos</h3></a> </li> 
		<li> <a href="aboutus.jsp"><h3>About us</h3></a> </li>
	</ol>
	
	<form action="Logout">
		<input type = "submit" value = "Logout">
	</form>
</body>
</html>