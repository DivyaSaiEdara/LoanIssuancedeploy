<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page - FINSYNC</title>

    <!-- Custom CSS -->
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        .card {
            background-color: #ffffff; /* White background for better visibility */
            border: 1px solid #ddd; /* Subtle border for definition */
            border-radius: 10px; /* Rounded corners for a modern look */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            transition: transform 0.3s ease; /* Smooth scaling effect on hover */
        }

        .card:hover {
            transform: translateY(-5px); /* Slight lift effect on hover */
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15); /* Enhance shadow on hover */
        }

        .card-body h5 {
            color: #333; /* Dark text for contrast */
            font-weight: bold; /* Emphasize card title */
        }

        .card-body p {
            color: #555; /* Medium-dark text for readability */
        }

        .card-container {
            margin-top: 50px; /* Move the cards further down */
        }
    </style>
</head>
<body>
    <!-- Include Navbar -->
    <%@ include file="mainnavbar.jsp" %>
    
    <div class="container mt-5">
        <!-- Welcome Section -->
        <div class="row">
            <div class="col-12 text-center">
                <p>Your one-stop solution for loan management. Track, manage, and analyze loans with ease.</p>
            </div>
        </div>

        <!-- Features Section -->
        <div class="row card-container">
            <div class="col-md-4 text-center">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Manage Loans</h5>
                        <p class="card-text">Track and manage your loans, payments, and interest in real-time.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Financial Analysis</h5>
                        <p class="card-text">Get detailed insights into your financial data and loan trends.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Loan Statistics</h5>
                        <p class="card-text">Access key statistics about loans, repayments, and borrower performance.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <footer class="bg-dark text-white text-center p-3 mt-5">
        <p>&copy; 2024 FINSYNC. All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JS (Optional for interactive components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
