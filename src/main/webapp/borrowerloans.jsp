<%@page import="com.klef.sdp.springboot.model.Loan" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrower Loans</title>
</head>
<body>
    <%@include file="borrowernavbar.jsp" %>
    <h3 align="center">Your Loans</h3>
    <div class="container">
        <table border="1" width="100%">
            <thead>
                <tr>
                    <th>Loan ID</th>
                    <th>Loan Amount</th>
                    <th>Loan Purpose</th>
                    <th>Application Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="loan" items="${loans}">
                    <tr>
                        <td>${loan.id}</td>
                        <td>${loan.loanAmount}</td>
                        <td>${loan.loanPurpose}</td>
                        <td>${loan.applicationDate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
