<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="/login" method="post">
		Username : <input name="user" type="text">
		Password : <input name="password" type="password"> 
		<input type="submit" value="Login">
	</form>
	
</body>
</html>