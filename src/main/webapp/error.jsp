<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            padding: 20px;
        }
        .error-container {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            padding: 15px;
            border-radius: 5px;
        }
        h1 {
            font-size: 24px;
        }
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Error</h1>
        <p>${error}</p>
        <a href="borrowerhome.jsp">Go back to Home</a> <!-- Provide a link back to the home page -->
    </div>
</body>
</html>
