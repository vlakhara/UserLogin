<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

	response.setHeader("Pragma","no-cache");

	response.setHeader("Expires", "0");	
	
	if(session.getAttribute("uName")==null){
		response.sendRedirect("LoginForm.jsp");
	}
%>

	<h1>Welcome ${uName.substring(0,1).toUpperCase()}${uName.substring(1)}!..... </h1>
	<form action="Logout" method="post">
		<input type="submit" value="Logout">
	</form>
	
</body>
</html>