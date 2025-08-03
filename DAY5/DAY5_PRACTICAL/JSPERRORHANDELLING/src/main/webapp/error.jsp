<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 style="color:red;">YOU HAVE SOME GIVEN WRONG INPUT</h2>
<h2 style="color:red;"><%=exception.getMessage() %></h2>
<h2 style="color:red;"><%=exception.getClass() %></h2>
</body>
</html>