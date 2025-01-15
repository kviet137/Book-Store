<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>

<h1 class="text-center">Cart</h1>

<div class="container mt-4">
    <h2>Your Cart</h2>

    <c:if test="${not empty order}">
        <table class="table">
            <thead>
            <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="detail" items="${order.orderDetails}">
                <tr>
                    <td>${detail.book.title}</td>
                    <td>$${detail.book.price}</td>
                    <td>${detail.quantity}</td> <!-- Show quantity -->
                    <td>
                        <!-- Remove Item Button -->
                        <form action="/cart/remove" method="post">
                            <input type="hidden" name="orderDetailId" value="${detail.id}">
                            <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <!-- Total Amount -->
<%--        <h3>Total: $${order.totalAmount}</h3>--%>
    </c:if>

    <!-- Proceed to Checkout Button -->
    <a href="/checkout" class="btn btn-primary">Proceed to Checkout</a>
</div>

<jsp:include page="../include/footer.jsp"/>
