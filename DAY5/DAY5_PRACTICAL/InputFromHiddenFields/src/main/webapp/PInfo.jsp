<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PERSONAL INFORMATION</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<%
String rollno=request.getParameter("rollno");
String sname=request.getParameter("sname");
String ayr=request.getParameter("ayr");
String sem=request.getParameter("sem");
String yr=request.getParameter("yr");
String dept=request.getParameter("dept");
%>
<div style="width:30%;margin:50px auto;">
	<form action="Show.jsp" method="post">
	<h2 class="text-danger">PERSONAL INFORMATION</h2>
		<input type="text" class="form-control" name="phno" placeholder="ENTER THE PHONE NO"/>
		<input type="text" class="form-control" name="email" placeholder="ENTER YOUR EMAIL ID"/>
		<input type="text" class="form-control" name="city" placeholder="ENTER THE CITY"/>
		<input type="hidden" name="rollno" value="<%=rollno %>"/>
	<input type="hidden" name="sname" value="<%=sname %>"/>
	<input type="hidden" name="ayr" value="<%=ayr %>"/>
	<input type="hidden" name="sem" value="<%=sem %>"/>
	<input type="hidden" name="yr" value="<%=yr %>"/>
	<input type="hidden" name="dept" value="<%=dept %>"/>
	 	 <input type="submit" class="btn btn-outline-primary" value="FINISH"/>
	</form>
</div>
</body>
</html>