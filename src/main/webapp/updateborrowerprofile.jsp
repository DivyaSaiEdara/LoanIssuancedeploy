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
<title>Update Profile </title>
</head>
<body>
<%@include file="borrowernavbar.jsp" %>
<h3 align="center">Borrower Update Profile Form</h3>
<div class="container">
<form method="post" action="update">
    <label>ID</label>
    <input type="number" class="form-control" name="bid" value="<%=b.getId()%>" readonly required />
    <br/>
    <label>Enter Name</label>
    <input type="text" class="form-control" name="bname" value="<%=b.getName()%>" required />
    <br/>
    
    <label>Select Gender</label>
    <input type="radio" name="bgender" class="form-control-input" value="Male" required /> Male
    <input type="radio" name="bgender" class="form-control-input" value="Female" required /> Female
    <input type="radio" name="bgender" class="form-control-input" value="Others" required /> Others
    <br/>
    
    <label>Select Date of Birth</label>
    <input type="date" name="bdob" required />
    <br/>
    
    <label>Enter Email ID</label>
    <input type="email" name="bemail" class="form-control" value="<%=b.getEmail()%>" readonly required />
    <br/>
    
    <label>Enter Password</label>
    <input type="password" name="bpwd" class="form-control"value="<%=b.getPassword()%>" required />
    <br/>
    
    <label>Enter Location</label>
    <input type="text" name="blocation" class="form-control" value="<%=b.getLocation()%>" required />
    <br/>
    
    <label>Enter Contact</label>
    <input type="number" name="bcontact" class="form-control" value="<%=b.getContact()%>" required />
    <br/>
    
    <label>Enter Annual Income</label>
    <input type="number" name="bincome" class="form-control" step="0.01" value="<%=b.getAnnualIncome()%>"/>
    <br/>
    
    <label>Enter Monthly Expenses</label>
    <input type="number" name="bexpenses" class="form-control" step="0.01" value="<%=b.getMonthlyExpenses()%>" />
    <br/>
    
    <input type="submit" value="Update" class="btn btn-success" />
    <input type="reset" value="Clear" class="btn btn-success" />
    
</form>
</div>
</body>
</html>
