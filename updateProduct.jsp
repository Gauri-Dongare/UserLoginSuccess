<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.login.Product, com.login.ProductDao,java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updating Product</title>
</head>
<body>
<%String id=request.getParameter("hsn_code"); 
    Product p=ProductDao.getProductById(Integer.parseInt(id));
    %>
<form action="updatejsp.jsp" method="post">
Hsn Code:<input type="hidden" name="hsn_code" value="<%= p.getHsn_code()%> "><br/>
Product Name:<input type="text" name="name" value="<%=p.getName() %>" ><br/>
Stock Left:<input type="text" name="stock_left" value="<%=p.getStock_left() %> "><br/>
Stock Sold:<input type="text" name="stock_sold" value="<%=p.getStock_sold() %> "><br/>
Price:<input type="text" name="price" value="<%=p.getPrice() %> "><br/>
<input type="submit" name="update" value="UPDATE">
</form>
</body>
</html>