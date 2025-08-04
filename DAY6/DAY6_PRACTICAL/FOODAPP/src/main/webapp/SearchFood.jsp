<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.FoodDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SEARCH FOOD</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
</head>
<body>
<div style="width:30%;margin:50px auto;">
<h2 class="text-info">SEARCH FOOD BASED FOOD ID</h2>
	<form action="SearchFood.jsp" method="post">
	 <input type="text" class="form-control" name="fid"  placeholder="ENTER THE FOOD ID"/>
	 <input type="submit" class="btn btn-outline-danger" value="SEARCH"/>
	</form>
	<p>
	<table class="table table-hover table-striped table-bordered">
<thead class="table-dark">
<tr>
<th>FOOD ID</th>
<th>FOOD NAME</th>
<th>PRICE</th>
</thead>
<tbody>
<%
String fid=request.getParameter("fid");
FoodDao fdao=new FoodDao();
ResultSet rs=fdao.searchFid(fid);
if(rs.next())
{
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getDouble(3) %></td>
</tr>
<%
}
%>



</tbody>
</table>
</div>
</body>
</html>