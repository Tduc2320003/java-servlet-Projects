<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Bootstrap CSS from WebJars -->
    <link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h1 class="mb-4" style="color: steelblue">CD list</h1>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <table class="table">
        <thead class="table-dark">
        <tr>
            <th scope="col">Description</th>
            <th class="text-end" scope="col">Price</th>
            <th scope="col">&nbsp;</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td><c:out value='${product.description}'/></td>
                <td class="text-end">${product.priceCurrencyFormat}</td>
                <td>
                    <form action="cart" method="post">
                        <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                        <button type="submit" class="btn btn-primary">Add To Cart</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and Popper.js scripts if needed -->
<script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
