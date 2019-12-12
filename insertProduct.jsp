<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.login.Product, com.login.ProductDao,java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>InsertProduct</title>
</head>
<body>
<form action="insert.jsp" method="post">
Hsn code:<input type="text" name="hsn_code"></br>
Product Name:<input type="text" name="name"></br>
Stock Left:<input type="text" name="stock_left"></br>
Stock Sold:<input type="text" name="stock_sold"></br>
Price:<input type="text" name="price"></br>
<input type="submit" name="add" value="ADD">
</form>

</body>
</html>