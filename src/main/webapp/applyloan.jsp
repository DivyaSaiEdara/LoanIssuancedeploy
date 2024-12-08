<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Loan Application Form</title>
    <script>
        function validateLoanForm() {
            const loanAmount = document.querySelector('input[name="loanAmount"]').value;
            if (loanAmount <= 0) {
                alert("Loan amount must be a positive number.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <%@include file="borrowernavbar.jsp" %>
    <h3 align="center">Loan Application Form</h3>
    <div class="container">
        <form method="post" action="applyloan" onsubmit="return validateLoanForm();">
    <label>Borrower ID</label>
    <input type="number" name="borrowerId" class="form-control" 
           value="${borrowerId}" readonly />
    <br/>

    <label>Loan Amount</label>
    <input type="number" name="loanAmount" class="form-control" step="0.01" required />
    <br/>

    <label>Loan Purpose</label>
    <select name="loanPurpose" class="form-control" required>
        <option value="Home">Home</option>
        <option value="Education">Education</option>
        <option value="Business">Business</option>
        <option value="Personal">Personal</option>
    </select>
    <br/>

    <label>Application Date</label>
    <input type="date" name="applicationDate" class="form-control" required />
    <br/>

    <input type="submit" value="Submit Application" class="btn btn-success" />
    <input type="reset" value="Clear" class="btn btn-warning" />
</form>
        
    </div>
</body>
</html>
