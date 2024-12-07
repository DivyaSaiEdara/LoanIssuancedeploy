<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lender Management</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<br/>

<h3 align="center"> Delete Lender</h3>
<table align="center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
<th>DEFAULT INTEREST RATE</th>
<th>ACTION</th>
</tr>

<c:forEach items="${lenderList}" var="lender">
<tr>
<td><c:out value="${lender.id}"></c:out></td>
<td><c:out value="${lender.name}"></c:out></td>
<td><c:out value="${lender.gender}"></c:out></td>
<td><c:out value="${lender.dateOfBirth}"></c:out></td>
<td><c:out value="${lender.email}"></c:out></td>
<td><c:out value="${lender.location}"></c:out></td>
<td><c:out value="${lender.contact}"></c:out></td>
<td><c:out value="${lender.defaultInterestRate}"></c:out></td>


<td>
<a href="<c:url value='delete1?id=${lender.id}' />">Delete</a>
</td>
</tr>
</c:forEach>

</table>
</body>
</html>
