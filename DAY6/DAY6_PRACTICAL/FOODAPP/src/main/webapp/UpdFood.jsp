<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE FOOD PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-primary">FOOD PRICE UPDATE</h2>
	<form action="FoodUpdServe" method="post">
	 <input type="text" class="form-control" name="fid"  placeholder="ENTER THE FOOD ID"/>
				<input type="text" class="form-control" name="price" placeholder="ENTER THE PRICE"/>
	 		 <input type="submit" class="btn btn-outline-success" value="UPDATE"/>
	</form>
</div>
</body>
</html>