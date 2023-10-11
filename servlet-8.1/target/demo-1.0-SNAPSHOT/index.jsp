<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Link to Bootstrap CSS from Maven dependency -->
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f5f5f5;
            box-shadow: inset 0 0 50px rgba(0,0,0,0.5);
        }
        h1 {
            color: steelblue;
        }
        p {
            color : #000
        }

        .form-container {
            max-width: 400px;
            padding: 20px;
            border: 2px solid #3498db;
            border-radius: 10px;
            background-color: #ffffff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        .form-control {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1 class="text-center">Join our email list</h1>
    <p class="text-center">To join our email list, enter your name and email address below.</p>
    <p><i>${message}</i></p>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">

        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" value="${user.email}" >
        </div>

        <div class="mb-3">
            <label for="firstName" class="form-label">First Name:</label>
            <input type="text" class="form-control" id="firstName" name="firstName" value="${user.firstName}" >
        </div>

        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name:</label>
            <input type="text" class="form-control" id="lastName" name="lastName" value="${user.lastName}" >
        </div>

        <button type="submit" class="btn btn-primary">Join Now</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies (if needed) should be included here -->
</body>
</html>
