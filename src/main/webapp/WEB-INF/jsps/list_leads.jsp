<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leads</title>
</head>
<body>
<a href="viewCreateLeadPage">New Lead</a>
<h2>All Leads</h2>
<table border="1">
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Email</th>
<th>Mobile</th>
<th>Source</th>
</tr>

<c:forEach var="lead" items="${leads }">
<tr>
<th><a href="leadInfo?id=${lead.id }">${lead.firstName }</a></th>
<th>${lead.lastName }</th>
<th>${lead.email }</th>
<th>${lead.mobile }</th>
<th>${lead.source }</th>
</tr>
</c:forEach>

</table>
</body>
</html>