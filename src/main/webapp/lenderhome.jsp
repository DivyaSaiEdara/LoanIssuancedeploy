<%@ page import="com.klef.sdp.springboot.model.Lender" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Lender l = (Lender)session.getAttribute("lender");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lender Home</title>
<style>
    .welcome-text {
        text-align: center;
        margin-top: 20%; 
        font-size: 24px; 
        font-family: Arial, sans-serif; 
        color: #333333; 
    }
</style>
</head>
<body>
<%@include file="lendernavbar.jsp" %>
<div class="welcome-text">
    Welcome <%=l.getName()%>
</div>
</body>
</html>
