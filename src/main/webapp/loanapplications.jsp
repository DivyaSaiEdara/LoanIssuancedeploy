<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>All Loan Applications</h2>
<table border="1">
    <tr>
        <th>Loan ID</th>
        <th>Borrower ID</th>
        <th>Amount</th>
        <th>Purpose</th>
        <th>Date</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <c:forEach var="app" items="${applications}">
        <tr>
            <td>${app.loanId}</td>
            <td>${app.borrowerId}</td>
            <td>${app.loanAmount}</td>
            <td>${app.loanPurpose}</td>
            <td>${app.applicationDate}</td>
            <td>${app.loanStatus}</td>
            <td>
                <form action="/lender/updatestatus" method="post">
                    <input type="hidden" name="loanId" value="${app.loanId}" />
                    <button type="submit" name="status" value="Approved">Approve</button>
                    <button type="submit" name="status" value="Rejected">Reject</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>