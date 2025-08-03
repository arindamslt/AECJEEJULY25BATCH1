<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STUDENT DETAILS</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<h2>STUDENT INFORMATION LIST</h2>
<%
String rollno=request.getParameter("rollno");
String sname=request.getParameter("sname");
String ayr=request.getParameter("ayr");
String sem=request.getParameter("sem");
String yr=request.getParameter("yr");
String dept=request.getParameter("dept");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
String city=request.getParameter("city");
%>
<div style="width:50%;margin:50px auto;">
<h2 class="text-primary">STUDENT DETAILS RECORD</h2>
<table class="table table-hover table-striped table-bordered">
<thead class="table-dark">
<tr>
<th>ROLLNO</th>
<th>NAME</th>
<th>YEAR OF ADMISSION</th>
<th>SEMESTER</th>
<th>YEAR</th>
<th>DEPARTMENT</th>
<th>PHONE NUMBER</th>
<th>EMAIL</th>
<th>CITY</th>
</tr>
<tbody>
<tr>
<td><%=rollno %></td>
<td><%=sname %></td>
<td><%=ayr %></td>
<td><%=sem %></td>
<td><%=yr %></td>
<td><%=dept %></td>
<td><%=phno %></td>
<td><%=email %></td>
<td><%=city %></td>
</tbody>
</table>
</div>
</body>
</html>