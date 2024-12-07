<%@page import="com.klef.sdp.springboot.model.Borrower" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Borrower b = (Borrower)session.getAttribute("borrower");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>
<style>
   
    .profile-container {
        margin-top: 50px; /
        text-align: center; 
        font-size: 18px; 
        font-family: Arial, sans-serif; 
        background-color: #f9f9f9; 
        padding: 30px; 
        border-radius: 8px; 
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); 
        max-width: 600px; 
        margin-left: auto;
        margin-right: auto;
    }

    .profile-container h3 {
        margin-bottom: 20px; 
    }

    .profile-container p {
        margin-bottom: 10px; 
    }
</style>
</head>
<body>
<%@include file="borrowernavbar.jsp" %>

<div class="profile-container">
    <h3>My Profile</h3>
    <p>ID: <%=b.getId()%></p>
    <p>NAME: <%=b.getName()%></p>
    <p>GENDER: <%=b.getGender()%></p>
    <p>DOB: <%=b.getDateofbirth()%></p>
    <p>EMAIL: <%=b.getEmail()%></p>
    <p>LOCATION: <%=b.getLocation()%></p>
    <p>CONTACT: <%=b.getContact()%></p>
    <p>ANNUAL INCOME: <%=b.getAnnualIncome()%></p>
    <p>MONTHLY EXPENSES: <%=b.getMonthlyExpenses()%></p>
</div>

</body>
</html>
