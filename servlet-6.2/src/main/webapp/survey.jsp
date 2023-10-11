<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Include Bootstrap CSS from WebJars -->
    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom styles for the form */
        body {
            background-color: #f8f9fa;
        }

        .custom-form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ced4da;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        h1 {
            color : steelblue;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="custom-form-container">
                <h1 class="text-center">Thanks for taking our survey!</h1>
                <p>Here is the information that you entered:</p>

                <div class="form-group">
                    <label>Email:</label>
                    <span>${user.email}</span>
                </div>
                <div class="form-group">
                    <label>First Name:</label>
                    <span>${user.firstName}</span>
                </div>
                <div class="form-group">
                    <label>Last Name:</label>
                    <span>${user.lastName}</span>
                </div>
                <div class="form-group">
                    <label>Heard From:</label>
                    <span>${user.heardFrom}</span>
                </div>
                <div class="form-group">
                    <label>Updates:</label>
                    <span>${user.wantsUpdates}</span>
                </div>

                <c:if test="${user.wantsUpdates == 'Yes'}">
                    <div class="form-group">
                        <label>Contact Via:</label>
                        <span>${user.contactVia}</span>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS from WebJars (optional, if you need Bootstrap JavaScript features) -->
<script src="webjars/bootstrap/5.2.3/js/bootstrap.bundle.min.js"></script>
</body>

</html>
