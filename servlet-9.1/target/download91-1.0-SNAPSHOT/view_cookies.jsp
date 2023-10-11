<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <title>Murach's Java Servlets and JSP</title>--%>
<%--    <link rel="stylesheet" href="styles/style.css" type="text/css"/>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1>Cookies</h1>--%>

<%--<p>Here's a table with all of the cookies that this --%>
<%--browser is sending to the current server.</p>--%>
<%--<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>

<%--<table>--%>
<%--  <tr>--%>
<%--    <th>Name</th>--%>
<%--    <th>Value</th>--%>
<%--  </tr>--%>
<%--  <c:forEach var="c" items="${cookie}">      --%>
<%--  <tr>--%>
<%--    <td><c:out value='${c.value.name}'/></td>--%>
<%--    <td><c:out value='${c.value.value}'/></td>--%>
<%--  </tr>--%>
<%--  </c:forEach>  --%>
<%--</table>--%>

<%--<p><a href="download?action=viewAlbums">View list of albums</a></p>--%>

<%--<p><a href="download?action=deleteCookies">Delete all persistent cookies</a></p>--%>

<%--</body>--%>
<%--</html>--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Bootstrap CSS from the Maven dependency -->
    <link rel="stylesheet" href="webjars/bootstrap/5.3.2/css/bootstrap.min.css">
</head>

<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <h1 class="mb-4">Cookies</h1>

            <p>Here's a table with all of the cookies that this browser is sending to the current server.</p>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Value</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="c" items="${cookie}">
                    <tr>
                        <td><c:out value='${c.value.name}'/></td>
                        <td><c:out value='${c.value.value}'/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="mb-3">
                <a href="download?action=viewAlbums" class="btn btn-primary btn-lg">View list of albums</a>
            </div>

            <div class="mb-3">
                <a href="download?action=deleteCookies" class="btn btn-danger btn-lg">Delete all persistent cookies</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS from the Maven dependency -->
<script src="webjars/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>
