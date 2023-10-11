<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Bootstrap CSS from the Maven dependency -->
    <link rel="stylesheet" href="webjars/bootstrap/5.3.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
            padding: 0;
        }
        h1 {
            font-size: 24px;
            color: steelblue;
        }

        .custom-form-container {
            max-width: 400px;
            padding: 20px;
            border: 2px solid #007bff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        .form-label {
            margin-top: 10px;
        }
    </style>
</head>

<body>
<div class="custom-form-container">
    <h1 class="mb-4">Download Registration</h1>

    <p>To register for our downloads, enter your name and email
        address below. Then, click on the Submit button.</p>

    <form action="download" method="post">
        <input type="hidden" name="action" value="registerUser">
        <div class="form-group">
            <label class="form-label">Email:</label>
            <input type="email" class="form-control" name="email" value="${user.email}" required>
        </div>
        <div class="form-group">
            <label class="form-label">First Name:</label>
            <input type="text" class="form-control" name="firstName" value="${user.firstName}" required>
        </div>
        <div class="form-group">
            <label class="form-label">Last Name:</label>
            <input type="text" class="form-control" name="lastName" value="${user.lastName}" required>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Register</button>
    </form>
</div>

<!-- Bootstrap JS from the Maven dependency -->
<script src="webjars/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>
