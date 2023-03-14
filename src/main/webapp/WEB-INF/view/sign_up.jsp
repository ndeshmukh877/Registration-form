<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration form</title>
<style type="text/css">
table  {
	margin: auto;
	border: 2px solid black;
	border-collapse: collapse;
	padding: 5px;
	margin-top: 20px;
	
}
td{
padding: 4px;
}
</style>
</head>

<body style="background-color: Lavender;">
	<h1 style="text-align: center;">Registration Form</h1>

	<form action="save" method="post">

		<table style="text-align: center;">
			<tr>
				<td>Organization Name:</td>
				<td><input type="text" name="organizationName"></td>
				<td style="color: red; font-style: italic;">${error1}</td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstName"></td>
				<td style="color: red; font-style: italic;">${error2}</td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lastName"></td>
				<td style="color: red; font-style: italic;">${error3}</td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="userName"></td>
				<td style="color: red; font-style: italic;">${error4}</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
				<td style="color: red; font-style: italic;">${error5}</td>
			</tr>
			<tr>
				<td>Re-Type Password:</td>
				<td><input type="password" name="PasswordConform"></td>
				<td style="color: red; font-style: italic;">${error6}</td>
			</tr>
			<tr>
				<td>My Security Question:</td>
				<td><input type="text" name="securityQuestion"></td>
				<td style="color: red; font-style: italic;">${error7}</td>
			</tr>
			<tr>
				<td>Enter Security Answer:</td>
				<td><input type="text" name="securityAnswer"></td>
				<td style="color: red; font-style: italic;">${error8}</td>
			</tr>
			<tr>
				<td>Primary Email:</td>
				<td><input type="email" name="primaryEmail"></td>
				<td style="color: red; font-style: italic;">${error9}</td>
			</tr>
			<tr>
				<td>Secondary Email:</td>
				<td><input type="email" name="secondaryEmail"></td>
			</tr>
			<tr>
				<td><input type="checkbox" required>I have accept the <strong
					style="color: blue;">Term And conditions</strong></td>
			</tr>
			<tr>
				<td><input style="background-color: PowderBlue; padding: 4px"
					type="submit" value="SIGN ME UP">
			</tr>
		</table>
	</form>
	${msg}
</body>
</html>