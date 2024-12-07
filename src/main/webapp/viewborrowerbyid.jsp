<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
.container
{
text-align:center
}
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">View Borrower By ID</h3><br/>
<br/>

<div class="container">

<form method="post" action="displayborrower">
<label>SELECT BORROWER ID</label>
<select class="form-select" name="id" required>
<option value="">---Select----</option>
<c:forEach items="${borrowerList}" var="borrower">
<option value="${borrower.id}">${borrower.id}-${borrower.name}</option>
</c:forEach>

</select>
<br/>
<br/>
<input type="submit" value="view" class="btn btn-success"/>

</form>
</div>
</body>
</html>