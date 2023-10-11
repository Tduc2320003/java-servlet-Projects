<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Link to Bootstrap CSS from Maven dependency -->
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            color: steelblue;
        }
        p {
            color : #000
        }
        .custom-container {
            background-color: #ffffff;
            border: 2px solid #3498db;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            padding: 30px;
        }
    </style>
</head>
<body>
<div class="custom-container">
    <h1 class="text-center">Thanks for joining our email list</h1>

    <p class="text-center">Here is the information that you entered:</p>

    <div class="row justify-content-center mb-4">
        <div class="col-auto">
            <label class="fw-bold">Email:</label>
            <span>${user.email}</span><br>
            <label class="fw-bold">First Name:</label>
            <span>${user.firstName}</span><br>
            <label class="fw-bold">Last Name:</label>
            <span>${user.lastName}</span><br>
        </div>
    </div>

    <p class="text-center">This email address was added to our list on ${requestScope.currentDate}</p>

    <p class="text-center">The first address on our list is ${sessionScope.users[0].email}<br>
        The second address on our list is ${sessionScope.users[1].email}
    </p>

    <p class="text-center">For customer service, contact: ${initParam.thanhduc}</p>

    <form action="" method="get" class="text-center mt-3">
        <input type="hidden" name="action" value="join">
        <button type="submit" class="btn btn-primary">Return</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies (if needed) should be included here -->
</body>
</html>
