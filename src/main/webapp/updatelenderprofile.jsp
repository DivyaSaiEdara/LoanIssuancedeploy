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
    <title>Lender Update Profile</title>

</head>
<body>
<%@ include file="lendernavbar.jsp" %>
<h3 align="center">Lender Profile Update Form</h3>
<div class="container">
    <form method="post" action="updatel">
        <label>ID</label>
        <input type="number" class="form-control" name="lid" value="<%=l.getId()%>" readonly required />
        <br/>
        <label for="lname">Enter Name</label>
        <input type="text" class="form-control" id="lname" name="lname" value="<%=l.getName()%>"  required />
        <br/>
        
        <label>Select Gender</label>
        <div>
            <input type="radio" id="male" name="lgender" value="Male" required /> Male
            <input type="radio" id="female" name="lgender" value="Female" required /> Female
            <input type="radio" id="others" name="lgender" value="Others" required /> Others
        </div>
        <br/>
        
        <label for="ldob">Select Date of Birth</label>
        <input type="date" id="ldob" name="ldob" required />
        <br/>
        
        <label for="lemail">Enter Email ID</label>
        <input type="email" id="lemail" name="lemail" class="form-control"  value="<%=l.getEmail()%>" readonly required />
        <br/>
        
        <label for="lpwd">Enter Password</label>
        <input type="password" id="lpwd" name="lpwd" class="form-control" value="<%=l.getPassword()%>"  required />
        <br/>
        
        <label for="llocation">Enter Location</label>
        <input type="text" id="llocation" name="llocation" class="form-control"  value="<%=l.getLocation()%>" required />
        <br/>
        
        <label for="lcontact">Enter Contact</label>
        <input type="text" id="lcontact" name="lcontact" class="form-control" value="<%=l.getContact()%>" required />
        <br/>
        
        <label for="linterest_rate">Enter Default Interest Rate</label>
        <input type="number" id="linterest_rate" name="linterest_rate" class="form-control" value="<%=l.getDefaultInterestRate() %>" step="0.01" required />
        <br/>
        
        <br/>
        
        <input type="submit" value="Update" class="btn btn-success" />
    </form>
</div>
</body>
</html>
