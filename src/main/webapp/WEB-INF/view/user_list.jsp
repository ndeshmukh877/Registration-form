<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table, tr, th, td {
	margin: auto;
	border: 1px solid black;
	border-collapse: collapse;
	padding: 7px;
	margin-top: 20px;
}
</style>
</head>
<body style="background-color: Lavender;">
	<h2 style="text-align: center;">All User List</h2>
	<table>
		<tr>
			<th>User Name</th>
			<th>Name</th>
			<th>Update</th>
		</tr>

		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.userName}</td>
				<td>${user.firstName}</td>
				<td><a href="update?id=${user.id}">update</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>