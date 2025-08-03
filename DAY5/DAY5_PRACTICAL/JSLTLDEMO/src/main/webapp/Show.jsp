<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>PID:<c:out value="${param.pid }"></c:out></h2>
<h2>PNMAE:<c:out value="${param.pname }"></c:out></h2>
<h2>QUANTITY:<c:out value="${param.pqty }"></c:out></h2>
<h2>PRICE:<c:out value="${param.price }"></c:out></h2>
<p>
<h2>FOREACH LOOP</h2>
<c:forEach var="n" begin="1" end="10">
<c:out value="${n}"></c:out>
</c:forEach>
</body>
</html>