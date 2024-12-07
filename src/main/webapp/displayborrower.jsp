<%@page import="com.klef.sdp.springboot.model.Borrower" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Customer</title>

</head>
<body>
<%@include file="adminnavbar.jsp" %>

<div class="profile-container">
    <h3 align="center"> Display Borrower </h3>
    ID: <c:out value="${b.id}"></c:out><br/>
    NAME:<c:out value="${b.name}"></c:out><br/>
    GENDER: <c:out value="${b.gender}"></c:out><br/>
    DOB: <c:out value="${b.dateofbirth}"></c:out><br/>
    EMAIL: <c:out value="${b.email}"></c:out><br/>
    LOCATION: <c:out value="${b.location}"></c:out><br/>
    CONTACT: <c:out value="${b.contact}"></c:out><br/>
    ANNUAL INCOME: <c:out value="${b.annualIncome}"></c:out><br/>
    MONTHLY EXPENSES: <c:out value="${b.monthlyExpenses}"></c:out><br/>
</div>

</body>
</html>
