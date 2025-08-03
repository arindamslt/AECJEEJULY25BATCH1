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
<div style="width:50%;margin:50px auto;">
<h2 class="text-primary">STUDENT REGISTRATION</h2>
	<form action="Semester.jsp" method="post">
	
		<input type="text" class="form-control" name="rollno" placeholder="ENTER THE ROLL NO"/>
		<input type="text" class="form-control" name="sname" placeholder="ENTER THE NAME"/>
		<input type="text" class="form-control" name="ayr" placeholder="ENTER THE ADMISSION YEAR"/>
		
	 	 <input type="submit" class="btn btn-outline-primary" value="CONTINUE"/>
	</form>
</div>
</body>
</html>