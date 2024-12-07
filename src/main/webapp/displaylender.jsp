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
    <h3 align="center"> Display Lender </h3>
    ID: <c:out value="${l.id}"></c:out><br/>
    NAME:<c:out value="${l.name}"></c:out><br/>
    GENDER: <c:out value="${l.gender}"></c:out><br/>
    DOB: <c:out value="${l.dateOfBirth}"></c:out><br/>
    EMAIL: <c:out value="${l.email}"></c:out><br/>
    LOCATION: <c:out value="${l.location}"></c:out><br/>
    CONTACT: <c:out value="${l.contact}"></c:out><br/>
    ANNUAL INCOME: <c:out value="${l.defaultInterestRate}"></c:out><br/>
</div>

</body>
</html>