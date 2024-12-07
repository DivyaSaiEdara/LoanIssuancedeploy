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
<title>Borrower Home</title>

</head>
<body>
<%@include file="borrowernavbar.jsp" %>
<h3 align="center">
    Welcome <%=b.getName()%>
</h3>
</body>
</html>
