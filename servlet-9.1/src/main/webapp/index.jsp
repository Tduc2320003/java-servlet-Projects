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
        }

        .custom-container {
            display: flex;

            /*align-items: center;*/
            justify-content: center;
            min-height: 100vh;
        }

        .jumbotron {
            background-color: #007bff;
            color: #fff;
            padding: 2rem 1rem;
            border-radius: 0;
        }

        .album-link {
            margin-bottom: 1rem;
        }
    </style>
</head>

<body>

<div class="jumbotron jumbotron-fluid text-center mb-0">
    <h1 class="display-4">List of Albums</h1>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:if test="${cookie.firstNameCookie.value != null}">
        <p class="lead">Welcome back, <strong><c:out value='${cookie.firstNameCookie.value}'/></strong>!</p>
    </c:if>
</div>

<div class="container custom-container mt-3">
    <div class="row">
        <div class="row-md-6">
            <!-- Your album links here -->
            <div class="album-link">
                <a href="download?action=checkUser&amp;productCode=8601" class="btn btn-primary btn-lg btn-block">86 (the band) - True Life Songs and Pictures</a>
            </div>
            <div class="album-link">
                <a href="download?action=checkUser&amp;productCode=pf01" class="btn btn-primary btn-lg btn-block">Paddlefoot - The First CD</a>
            </div>
            <div class="album-link">
                <a href="download?action=checkUser&amp;productCode=pf02" class="btn btn-primary btn-lg btn-block">Paddlefoot - The Second CD</a>
            </div>
            <div class="album-link">
                <a href="download?action=checkUser&amp;productCode=jr01" class="btn btn-primary btn-lg btn-block">Joe Rut - Genuine Wood Grained Finish</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS from the Maven dependency -->
<script src="webjars/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>
