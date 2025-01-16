<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>
<div class="container my-5">
    <h1 class="text-center mb-4">Your Shopping Cart</h1>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
            <tr>
                <th>Book Title</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="orderDetail" items="${order.orderDetails}">
                <tr>
                    <td>${orderDetail.book.title}</td>
                    <td>${orderDetail.quantity}</td>
                    <td>${orderDetail.book.price}</td>
                    <td>${orderDetail.quantity * orderDetail.book.price}</td>
                    <td>
                        <div class="d-flex align-items-center">
                            <!-- Increase Button -->
                            <form action="/cart/update/quantity" method="post" class="me-2">
                                <input type="hidden" name="orderDetailId" value="${orderDetail.id}" />
                                <input type="hidden" name="action" value="increase" />
                                <button type="submit" class="btn btn-success btn-sm">
                                    +
                                </button>
                            </form>

                            <!-- Decrease Button -->
                            <form action="/cart/update/quantity" method="post">
                                <input type="hidden" name="orderDetailId" value="${orderDetail.id}" />
                                <input type="hidden" name="action" value="decrease" />
                                <button type="submit" class="btn btn-danger btn-sm">
                                    -
                                </button>
                            </form>
                        </div>
                    </td>

                </tr>
            </c:forEach>
            </tbody>
        </table>
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
