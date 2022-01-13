<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-store, must-revalidate"); //For HTTP 1.1 // It prevents to come back on secured page (For security)
		response.setHeader("Pragma", "no-Cache"); // For HTTP 1.0
		response.setHeader("Expires", "0"); // Proxies
		
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	<h2># About us</h2> 
	<ol>
		<li>It has 'Logout' button on every page.</li>
		<li>It removes previous login data as user cannot login using 'Back' option on browser.</li>
	</ol>
	
	<ul type="square">
		<li><h3>Project by Yash Shinde.</h3></li>
	</ul>
	<form action="Logout">
		<input type = "submit" value = "Logout">
	</form>
</body>
</html>