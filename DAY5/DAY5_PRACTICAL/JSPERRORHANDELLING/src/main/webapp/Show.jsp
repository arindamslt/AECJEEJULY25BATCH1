<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page language="java" errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int input1=Integer.parseInt(request.getParameter("input1"));
int input2=Integer.parseInt(request.getParameter("input2"));

%>
<h2 style="color:red">RESULT:<%=input1/input2 %></h2>
</body>
</html>