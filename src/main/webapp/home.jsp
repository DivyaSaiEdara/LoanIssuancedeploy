<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page - FINSYNC</title>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Fullscreen video background */
        .background-video {
            position: fixed; /* Fix the video to viewport */
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Place it behind other content */
            object-fit: cover; /* Maintain aspect ratio */
        }

        /* Content container with transparency */
        .container {
            background-color: rgba(255, 255, 255, 0.8); /* Light opaque background */
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
        }

        .card {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
        }

        .card-body h5 {
            color: #333;
            font-weight: bold;
        }

        .card-body p {
            color: #555;
        }

        .card-container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Add Video Background -->
    <video autoplay muted loop class="background-video">
        <source src="${pageContext.request.contextPath}/bgvideo.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <!-- Include Navbar -->
    <%@ include file="mainnavbar.jsp" %>

    <!-- Main Content -->
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