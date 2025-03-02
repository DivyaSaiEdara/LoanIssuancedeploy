<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Borrower Registration Form</title>
<script>
function validatePassword() {
    const password = document.querySelector('input[name="bpwd"]').value;
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
<%@include file="mainnavbar.jsp" %>
<h3 align="center">Borrower Registration Form</h3>
<div class="container">
<form method="post" action="insertborrower" onsubmit="return validatePassword()">

    <label>Enter Name</label>
    <input type="text" class="form-control" name="bname" required />
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
    <input type="email" name="bemail" class="form-control" required />
    <br/>
    
    <label>Enter Password</label>
    <input type="password" name="bpwd" class="form-control" required />
    <br/>
    
    <label>Enter Location</label>
    <input type="text" name="blocation" class="form-control" required />
    <br/>
    
    <label>Enter Contact</label>
    <input type="number" name="bcontact" class="form-control" required />
    <br/>
    
    <label>Enter Annual Income</label>
    <input type="number" name="bincome" class="form-control" step="0.01" required/>
    <br/>
    
    <label>Enter Monthly Expenses</label>
    <input type="number" name="bexpenses" class="form-control" step="0.01" required />
    <br/>
    
    <input type="submit" value="Register" class="btn btn-success" />
    <input type="reset" value="Clear" class="btn btn-success" />
    
</form>
</div>
</body>
</html>