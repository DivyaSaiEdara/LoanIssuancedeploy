<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">View All Lenders</h3>
<br>
<br/><h4 align="center">
Total Lenders: <c:out value="${lenderCount}"></c:out> 
</h4>

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
</tr>

<c:forEach items="${lenderList}" var="lender"> <!-- Corrected variable name for lender list -->
<tr>
<td><c:out value="${lender.id}"></c:out></td>
<td><c:out value="${lender.name}"></c:out></td>
<td><c:out value="${lender.gender}"></c:out></td>
<td><c:out value="${lender.dateOfBirth}"></c:out></td>
<td><c:out value="${lender.email}"></c:out></td>
<td><c:out value="${lender.location}"></c:out></td>
<td><c:out value="${lender.contact}"></c:out></td>
<td><c:out value="${lender.defaultInterestRate}"></c:out></td>
</tr>
</c:forEach>

</table>
</body>
</html>
