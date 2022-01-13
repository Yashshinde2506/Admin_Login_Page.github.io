<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos Page</title>
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
<ul type="square">
<li> <iframe width="560" height="315" src="https://www.youtube.com/embed/0VBrL9RNdsU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> </li> 
<li> <iframe width="560" height="315" src="https://www.youtube.com/embed/g8Qav3vIv9s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> </li> 
</ul>

	<form action="Logout">
		<input type = "submit" value = "Logout">
	</form>
</body>
</html>