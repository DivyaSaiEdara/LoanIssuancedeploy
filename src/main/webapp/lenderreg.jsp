<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lender Registration Form</title>
    <script>
    function validatePassword() {
        const password = document.querySelector('input[name="lpwd"]').value;
        const passwordPattern = /^(?=.*[A-Z])(?=.*\d).{8,}$/; // At least one number, minimum length of 5

        if (!passwordPattern.test(password)) {
            alert("Password must be at least 8 characters long, contain at least one number, and one uppercase letter.");
            return false;
        }

        return true; // Allow form submission if the password is valid
    }
    </script>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<h3 align="center">Lender Registration Form</h3>
<div class="container">
    <form method="post" action="insertlender" onsubmit="return validatePassword()">

        <label for="lname">Enter Name</label>
        <input type="text" class="form-control" id="lname" name="lname" required />
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
        <input type="email" id="lemail" name="lemail" class="form-control" required />
        <br/>
        
        <label for="lpwd">Enter Password</label>
        <input type="password" id="lpwd" name="lpwd" class="form-control" required />
        <br/>
        
        <label for="llocation">Enter Location</label>
        <input type="text" id="llocation" name="llocation" class="form-control" required />
        <br/>
        
        <label for="lcontact">Enter Contact</label>
        <input type="text" id="lcontact" name="lcontact" class="form-control" required />
        <br/>
        
        <label for="linterest_rate">Enter Default Interest Rate</label>
        <input type="number" id="linterest_rate" name="linterest_rate" class="form-control" step="0.01" required />
        <br/>
        
        <input type="submit" value="Register" class="btn btn-success" />
        <input type="reset" value="Clear" class="btn btn-warning" />
    </form>
</div>
</body>
</html>