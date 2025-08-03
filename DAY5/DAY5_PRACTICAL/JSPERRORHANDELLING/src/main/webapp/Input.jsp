<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INPUT PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-primary">ERROR HANDELLING IN JSP</h2>
	<form action="Show.jsp" method="post">
		<input type="text" class="form-control" name="input1"  placeholder="ENTER THE FIRST VALUE"/>
		<input type="text" class="form-control" name="input2" placeholder="ENTER THE SECOND VALUE"/>
		
	 		 <input type="submit" class="btn btn-outline-danger" value="CALCULATE"/>
	</form>
</div>
</body>
</html>