<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>STUDENT FORM</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<%
String rollno=request.getParameter("rollno");
String sname=request.getParameter("sname");
String ayr=request.getParameter("ayr");
%>
<div style="width:30%;margin:50px auto;">
	<form action="PInfo.jsp" method="post">
	<h2 class="text-secondary">SEMESTER DETAILS</h2>
	<select class="form-control" name="sem">
	<option value="">CHOOSE THE SEMESTER</option>
	<option value="I">I</option>
	<option value="II">II</option>
	<option value="III">III</option>
	<option value="IV">IV</option>
	<option value="V">V</option>
	<option value="VI">VI</option>
	<option value="VII">VII</option>
	<option value="VIII">VIII</option>
	</select>
	<select class="form-control" name="yr">
	<option value="">CHOOSE THE YEAR</option>
	<option value="I">I</option>
	<option value="II">II</option>
	<option value="III">III</option>
	<option value="IV">IV</option>
	
	</select>
	<select class="form-control" name="dept">
	<option value="">CHOOSE THE DEPARTMENT</option>
	<option value="CSE">CSE</option>
	<option value="ECE">ECE</option>
	<option value="IT">IT</option>
	<option value="CIVIL">CIVIL</option>
	
	</select>
	<input type="hidden" name="rollno" value="<%=rollno %>"/>
	<input type="hidden" name="sname" value="<%=sname %>"/>
	<input type="hidden" name="ayr" value="<%=ayr %>"/>
	 	 <input type="submit" class="btn btn-outline-primary" value="CONTINUE"/>
	</form>
</div>
</body>
</html>