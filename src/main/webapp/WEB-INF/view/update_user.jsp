<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Update Users Info</h2>
	<form action="updateUser" method="post">
		<pre>
			<input type="hidden" name="id" value="${user.id}">
			First Name<input type="text" name="userName" value="${user.userName}">
			Last Name<input type="text" name="firstName"
				value="${user.firstName}">
			<input type="submit" value="update">
		</pre>
	</form>
</body>
</html>