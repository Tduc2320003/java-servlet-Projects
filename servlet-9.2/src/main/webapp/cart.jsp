<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <!-- Bootstrap CSS from WebJars -->
    <link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
<%--    <link rel="stylesheet" href="styles/main.css" type="text/css"/>--%>
    <style>
        /* Custom CSS for cart page */
        .quantity-input {
            width: 50px;
            margin-top: 5px;
        }
        .btn-secondary {
            margin-top: 7px;
        }
        .btn-primary{
            margin-top: 7px;
        }
        h1 {
            color : steelblue;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h1>Your Cart</h1>

    <table class="table">
        <thead>
        <tr>
            <th>Quantity</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var="item" items="${cart.items}">
            <tr>
                <td>
                    <form action="" method="post" style="display: flex">
                        <input type="hidden" name="productCode"
                               value="<c:out value='${item.product.code}'/>">
                        <input type="number" class="form-control quantity-input" name="quantity"
                               value="<c:out value='${item.quantity}'/>" id="quantity">
                        <input type="submit" class="btn btn-primary" style=" margin-left: 7px" value="Update">
                    </form>
                </td>
                <td><c:out value='${item.product.description}'/></td>
                <td>${item.product.priceCurrencyFormat}</td>
                <td>${item.totalCurrencyFormat}</td>
                <td>
                    <form action="" method="post">
                        <input type="hidden" name="productCode"
                               value="<c:out value='${item.product.code}'/>">
                        <input type="hidden" name="quantity"
                               value="0">
                        <input type="submit" class="btn btn-danger" value="Remove Item">
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity
        and click on the Update button.</p>

    <form action="" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" class="btn btn-secondary" value="Continue Shopping">
    </form>

    <form action="" method="post">
        <input type="hidden" name="action" value="checkout">
        <input type="submit" class="btn btn-primary" value="Checkout">
    </form>
</div>

<!-- Bootstrap JS and Popper.js scripts if needed -->
<script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

</body>
</html>
