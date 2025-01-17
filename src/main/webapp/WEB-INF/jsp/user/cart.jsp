<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page="../include/header.jsp"/>
<div class="container my-5">
    <h1 class="text-center mb-4">Your Shopping Cart</h1>

    <!-- Display Flash Message -->
    <c:if test="${not empty message}">
        <div class="alert alert-success alert-dismissible fade show" role="alert">
                ${message}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </c:if>

    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
            <tr>
                <th>Book Title</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
            </tr>
            </thead>
            <tbody>
            <c:set var="subtotal" value="0" />
            <c:set var="totalItems" value="0" />
            <c:forEach var="orderDetail" items="${order.orderDetails}">
                <tr>
                    <td>${orderDetail.book.title}</td>
                    <td>
                        <!-- Editable Quantity Input -->
                        <form action="/cart/update/quantity" method="post" class="d-flex align-items-center quantity-form">
                            <input type="hidden" name="orderDetailId" value="${orderDetail.id}" />
                            <input type="number" name="quantity" min="0" value="${orderDetail.quantity}" class="form-control form-control-sm me-2 quantity-input" style="width: 70px;" />
                            <button type="submit" class="btn btn-primary btn-sm">Update</button>
                        </form>
                    </td>
                    <td>${orderDetail.book.price}</td>
                    <td>${orderDetail.quantity * orderDetail.book.price}</td>
                </tr>
                <!-- Add to subtotal and total items -->
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

    <div class="d-flex justify-content-end mt-3">
        <form action="/checkout" method="post">
            <button type="submit" class="btn btn-primary">Proceed to Checkout</button>
        </form>
    </div>
</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<jsp:include page="../include/footer.jsp"/>
