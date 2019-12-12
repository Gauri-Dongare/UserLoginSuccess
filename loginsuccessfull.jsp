<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@ page import="com.login.customer, com.login.CustomerDao,java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>loginSuccessfull</title>
<style>
body{
background-image: url("bga%20(2).jpg") ;
         background-size:cover;
         background-repeat: no-repeat;
     }
 </style>   
</head>
<body>

<h1>Customer List</h1>
<%List<customer> clist=CustomerDao.display(); 
request.setAttribute("list", clist);
%>
<table border="1" width="90%">
<tr><td>Customer Id</td><td>Customer Name</td><td>Phone No</td><td>Email Id</td><td>Password</td><td>Gender</td><td>Address</td><td>Delete</td>
</tr>
<c:forEach items="${list}" var="p">
<tr><td>${p.getCustId() }</td><td>${p.getCustName() }</td><td>${p.getPhoneNo() }</td><td>${p.getEmailId() }</td><td>${p.getPassword() }</td>
<td>${p.getGender() }</td><td>${p.getAddress() }</td><td><a href="deleteCustomer.jsp?CustId=${p.getCustId() }">Delete</a></td>
</tr>
</c:forEach>
</table>



</body>
</html>