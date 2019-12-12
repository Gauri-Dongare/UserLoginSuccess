<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.login.Product, com.login.ProductDao,java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="com.login.customer, com.login.CustomerDao,java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8" />
	<title>Table Style</title>
	<meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
	<style>
	@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

body {
  background-color: #3e94ec;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 400;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}
	
	
	</Style>
</head>
<body>
<div class="table-title">
<h3>Product Details</h3>
<%List<Product> list=ProductDao.display(); 
request.setAttribute("list", list);
%>
</div>
<table class="table-fill">
<thead>
<tr>
<th class="text-left">Hsn Code</th>
<th class="text-left">Product Name</th>
<th class="text-left">Stock Left</th>
<th class="text-left">Stock Sold</th>
<th class="text-left">Price</th>
<th class="text-left">Update</th>
<th class="text-left">Delete</th>
</tr>
</thead>
<tbody class="table-hover">
<c:forEach items="${list}" var="e">
<tr><td class="text-left">${e.getHsn_code() }</td><td class="text-left">${e.getName() }</td><td class="text-left">${e.getStock_left()}</td><td class="text-left">${e.getStock_sold()}</td><td class="text-left">${e.getPrice()} </td>
<td class="text-left"><a href="updateProduct.jsp?hsn_code=${e.getHsn_code()}">Update</a></td><td class="text-left"><a href="deleteProduct.jsp?hsn_code=${e.getHsn_code() }">Delete</a></td>
</tr>
</c:forEach>

<a href="insertProduct.jsp">Add New Product</a>

<h4>Customer List</h4>
<%List<customer> clist=CustomerDao.display(); 
request.setAttribute("list", clist);
%>
<table border="1" width="90%">
<tr><td>Customer Id</td><td>Customer Name</td><td>Phone No</td><td>Email Id</td><td>Password</td><td>Gender</td><td>Address</td><td>Delete</td>
</tr>
<c:forEach items="${list}" var="p">
<tr><td class="text-left">${p.getCust_id() }</td><td class="text-left">${p.getCust_name() }</td><td class="text-left">${p.getPhoneNo() }</td><td class="text-left">${p.getEmail_id() }</td><td class="text-left">${p.getPassword() }</td>
<td class="text-left">${p.getGender() }</td><td class="text-left">${p.getAddress() }</td><td class="text-left"><a href="deleteCustomer.jsp?cust_id=${p.getCust_id() }">Delete</a></td>
</tr>
</c:forEach>

</tbody>
</table>
</body>
</html>