<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
<title>PRODUCT REPORT</title>
</head>
<body>
<%
 String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
int pqty=Integer.parseInt(request.getParameter("pqty"));
double price=Double.parseDouble(request.getParameter("price"));
String company=request.getParameter("company");
%>
<div style="width:30%;margin:50px auto;">
<h2 class="text-primary">ORDER DETAILS</h2>
<table class="table table-hover table-striped table-bordered">
<thead class="table-dark">
<tr>
<th>PRODUCT ID</th>
<th>PRODUCT NAME</th>
<th>QUANTITY</th>
<th>PRICE</th>
<th>SALES COST</th>
<th>PRICE</th>
</tr>
<tbody>
<tr>
<td><%=pid %></td>
<td><%=pname %></td>
<td><%=pqty %></td>
<td><%=price %></td>
<td><%=price*pqty %></td>
<td><%=company %></td>
</tbody>
</table>
</div>
</body>
</html>