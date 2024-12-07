<%@page import="com.klef.sdp.springboot.model.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="jakarta.tags.core" prefix="c" %>
   <%
Admin a = (Admin)session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">
    Welcome <%=a.getUsername()%>
</h3>
<br/><br/>
<h4 align="center">
Total Borrowers:<c:out value="${borrowerCount}"></c:out>
<br/><br>
Total Lenders:<c:out value="${lenderCount}"></c:out>
</h4>
</body>
</html>