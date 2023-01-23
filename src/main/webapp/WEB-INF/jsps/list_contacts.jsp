<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contacts</title>
</head>
<body>
<h2>All Contacts</h2>
<table border="1">
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>Email</th>
<th>Mobile</th>
<th>Source</th>
<th>Billing</th>
</tr>

<c:forEach var="contact" items="${contacts }">
<tr>
<th>${contact.firstName }</th>
<th>${contact.lastName }</th>
<th>${contact.email }</th>
<th>${contact.mobile }</th>
<th>${contact.source }</th>
<th><a href="generateBill?id=${contact.id }">billing</a></th>
</tr>
</c:forEach>
</table>
</body>
</html>