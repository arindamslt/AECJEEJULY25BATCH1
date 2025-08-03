<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PRODUCT  FORM</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-primary">ADD ORDER</h2>
	<form action="Controller.jsp" method="post">
		<input type="text" class="form-control" name="pid"  placeholder="ENTER THE PRODUCT ID"/>
		<input type="text" class="form-control" name="pname" placeholder="ENTER YOUR PRODUCT NAME"/>
		<input type="text" class="form-control" name="pqty" placeholder="ENTER YOUR PRODUCT QUANTITY"/>
		<input type="text" class="form-control" name="price" placeholder="ENTER YOUR PRODUCT PRICE"/>
	 		 <input type="submit" class="btn btn-outline-danger" value="ORDER"/>
	</form>
</div>
</body>
</html>