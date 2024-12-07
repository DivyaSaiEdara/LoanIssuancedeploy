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
<br/>
<h3 align="center"> View All Borrowers</h3>
<br>
<h4 align="center">
Total Borrowers: <c:out value="${borrowerCount}"></c:out> 
</h4><!-- Correct attribute name here -->

<table align="center" border="2" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
<th>ANNUAL INCOME</th>
<th>MONTHLY EXPENSES</th>
</tr>

<c:forEach items="${borrowerList}" var="borrower"> <!-- Corrected variable name here -->
<tr>
<td><c:out value="${borrower.id}"></c:out></td>
<td><c:out value="${borrower.name}"></c:out></td>
<td><c:out value="${borrower.gender}"></c:out></td>
<td><c:out value="${borrower.dateofbirth}"></c:out></td>
<td><c:out value="${borrower.email}"></c:out></td>
<td><c:out value="${borrower.location}"></c:out></td>
<td><c:out value="${borrower.contact}"></c:out></td>
<td><c:out value="${borrower.annualIncome}"></c:out></td>
<td><c:out value="${borrower.monthlyExpenses}"></c:out></td>
</tr>
</c:forEach>


</table>
</body>
</html>
