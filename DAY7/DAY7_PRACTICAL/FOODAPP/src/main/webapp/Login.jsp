<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FOOD APP LOGIN</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-INFO">FOOD APP LOGIN</h2>
	<form action="LoginServe" method="post">
	 <input type="text" class="form-control" name="uname"  placeholder="ENTER THE USERNAME"/>
		<input type="password" class="form-control" name="pass" placeholder="ENTER FTHE PASSWORD"/>
		
	 		 <input type="submit" class="btn btn-outline-danger" value="LOGIN"/>
	</form>
</div>
</body>
</html>