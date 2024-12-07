<%@page import="com.klef.sdp.springboot.model.Lender" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Lender l = (Lender)session.getAttribute("lender");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>
<style>
    .profile-container {
        margin-top: 50px; 
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
<%@include file="lendernavbar.jsp" %>

<div class="profile-container">
    <h3>My Profile</h3>
    <p>ID: <%=l.getId()%></p>
    <p>NAME: <%=l.getName()%></p>
    <p>GENDER: <%=l.getGender()%></p>
    <p>DOB: <%=l.getDateOfBirth()%></p>
    <p>EMAIL: <%=l.getEmail()%></p>
    <p>LOCATION: <%=l.getLocation()%></p>
    <p>CONTACT: <%=l.getContact()%></p>
    <p>DEFAULT INTEREST RATE: <%=l.getDefaultInterestRate() %></p>

</div>

</body>
</html>
