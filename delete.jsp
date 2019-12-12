<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.login.Product, com.login.ProductDao,java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <jsp:useBean id="e" class="com.login.Product"></jsp:useBean>
    <jsp:setProperty property="*" name="e"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
<% int i=ProductDao.delete(e);
if(i>0)
	response.sendRedirect("loginsuccessfull.jsp");
%>
</body>
</html>