<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="Img1.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SHOW PAGE</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<%
 String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
%>
<h2 class="text-success">WELCOME:<%=uname %></h2>
<h2 class="text-info">YOU REMEMBER YOUR PASSWORD:<%=pass %></h2>
</body>
</html>