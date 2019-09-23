<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TVR Registration Form</title>
</head>
<body>
<h1>TVR Register Form</h1>
<form action="insertuser.jsp" method="post">
			<table style="with: 50%">
				<tr>
					<td>Customer Name</td>
					<td><input type="text" name="cust_name" /></td>
				</tr>
				<tr>
					<td>Phone Number</td>
					<td><input type="text" name="phoneNo" /></td>
				</tr>
				<tr>
					<td>Email Id</td>
					<td><input type="text" name="email_id" /></td>
				</tr>
					<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><input type="text" name="gender" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr></table>
			<input type="submit" value="CREATE ACCOUNT" /></form>
</body>
</html>