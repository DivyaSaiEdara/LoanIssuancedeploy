<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lender Login</title>
<style>
    /* Fullscreen background image */
    .background-img {
        position: fixed; /* Fix the image to the viewport */
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: -1; /* Place it behind other content */
        background-image: url("${pageContext.request.contextPath}/image1.jpg"); /* Path to the background image */
        background-size: cover; /* Make the image cover the entire page */
        background-repeat: no-repeat; /* Prevent repeating */
        background-attachment: fixed; /* Fix the background image position */
        object-fit: cover; /* Maintain aspect ratio */
    }

    /* Center the login form with transparency */
    .container {
        background-color: rgba(255, 255, 255, 0.8); /* Light opaque background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 300px;
        margin: 100px auto; /* Center the form vertically and horizontally */
        z-index: 1; /* Place the container above the background */
        position: relative; /* Ensure stacking above the background */
    }

    label {
        font-weight: bold;
    }

    input[type="submit"], input[type="reset"] {
        width: 48%;
        display: inline-block;
        margin-right: 2%;
    }

    input[type="reset"] {
        margin-left: 2%;
    }

    /* Change title color to white */
    h3 {
        color: white;
    }
</style>
</head>
<body>
    <!-- Background image container -->
    <div class="background-img"></div>

    <!-- Include Navbar -->
    <%@ include file="mainnavbar.jsp" %>

    <h4 align="center" style="color:red">
        <c:out value="${message}"></c:out><br/>
    </h4>
    <h3 align="center">Lender Login Form</h3>
    
    <!-- Login Form -->
    <div class="container">
        <form method="post" action="checklenderlogin">
            <label>Enter Email</label>
            <input type="text" class="form-control" name="lemail" required />
            <br/>

            <label>Enter Password</label>
            <input type="password" name="lpwd" class="form-control" required />
            <br/>

            <input type="submit" value="Login" class="btn btn-success" />
            <input type="reset" value="Clear" class="btn btn-success" />
        </form>
    </div>
</body>
</html>