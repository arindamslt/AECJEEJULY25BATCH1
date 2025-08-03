<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! public String getCompany(double price)
{
  String company=null;
  if(price>25000.00)
  {
	  company="SONY";
  }
  else
  {
	  company="SAMSUNG";
  }
	return company;  
}
%>
<%
double price=Double.parseDouble(request.getParameter("price"));
%>
<jsp:forward page="ProductReport.jsp">
<jsp:param value="<%=this.getCompany(price) %>" name="company"/>
</jsp:forward>
</body>
</html>