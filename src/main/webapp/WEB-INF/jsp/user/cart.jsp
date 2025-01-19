<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page="../include/header.jsp"/>

<div class="container my-5">
    <h1 class="text-center mb-4">Your Shopping Cart</h1>

    <!-- Display Flash Message -->
    <c:if test="${not empty removedItemMessage}">
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                ${removedItemMessage}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>
    <c:if test="${not empty checkoutCompletedMessage}">
        <div class="alert alert-info alert-dismissible fade show" role="alert">
                ${checkoutCompletedMessage}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <!-- Cart Table -->
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="table-primary">
            <tr>
                <th scope="col">Book</th>
                <th scope="col">Title</th>
                <th scope="col">Quantity</th>
                <th scope="col">Price</th>
                <th scope="col">Total</th>

            </tr>
            </thead>
            <tbody>
            <c:set var="subtotal" value="0" />
            <c:set var="totalItems" value="0" />
            <c:forEach var="orderDetail" items="${order.orderDetails}">
                <tr>
                    <!-- Display Book Image -->
                    <td>
                        <img src="${orderDetail.book.imageUrl}" alt="${orderDetail.book.title}" class="img-fluid" style="width: 100px; height: 140px;"/>
                    </td>
                    <td><a href="/book/detail/${orderDetail.book.id}" class="text-primary text-decoration-none">${orderDetail.book.title}</a></td>
                    <td>
                        <!-- Editable Quantity Input -->
                        <form action="/cart/update/quantity" method="post" class="d-flex align-items-center quantity-form">
                            <input type="hidden" name="orderDetailId" value="${orderDetail.id}" />
                            <input type="number" name="quantity" min="0" value="${orderDetail.quantity}" class="form-control form-control-sm me-2 quantity-input" aria-label="Quantity for ${orderDetail.book.title}" style="width: 70px;" required />
                            <button type="submit" class="btn btn-primary btn-sm">Update</button>
                        </form>
                    </td>
                    <td>
                        <fmt:formatNumber value="${orderDetail.book.price}" maxFractionDigits="2" minFractionDigits="2" />
                    </td>
                    <td>
                        <fmt:formatNumber value="${orderDetail.totalPrice}" maxFractionDigits="2" minFractionDigits="2" />
                    </td>

                </tr>
                <c:set var="subtotal" value="${subtotal + (orderDetail.quantity * orderDetail.book.price)}" />
                <c:set var="totalItems" value="${totalItems + orderDetail.quantity}" />
            </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Subtotal and Total Items Section -->
    <div class="d-flex justify-content-end mt-3">
        <h4>Subtotal (${totalItems} Items):
            <fmt:formatNumber value="${subtotal}" maxFractionDigits="2" minFractionDigits="2" />
        </h4>
    </div>

    <!-- Proceed to Checkout Button -->
    <div class="d-flex justify-content-end mt-3">
        <form action="/checkout" method="post">
            <input type="hidden" name="subtotal" value="${subtotal}" />
            <button type="submit" class="btn btn-success">Proceed to Checkout</button>
        </form>
    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../include/footer.jsp"/>
