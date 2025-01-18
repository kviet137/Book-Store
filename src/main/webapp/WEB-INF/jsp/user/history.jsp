<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<jsp:include page="../include/header.jsp"/>

<div class="container mt-5">
    <h1 class="text-center mb-4">Order History</h1>

    <!-- If there are no completed orders, display a message -->
    <c:if test="${empty completedOrders}">
        <div class="alert alert-info" role="alert">
            You have no completed orders yet.
        </div>
    </c:if>

    <!-- Table displaying completed orders -->
    <c:if test="${not empty completedOrders}">
        <div class="table-responsive">
            <table class="table table-striped table-hover">
                <thead class="table-primary">
                <tr>
                    <th scope="col">Order ID</th>
                    <th scope="col">Order Date</th>
                    <th scope="col">Status</th>
                    <th scope="col">Total Amount</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="order" items="${completedOrders}">
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.orderDate}</td>
                        <td><span class="badge bg-success">Completed</span></td>
                        <td>
                            <fmt:formatNumber value="${order.totalAmount}" maxFractionDigits="2" minFractionDigits="2" />
                        </td>
                        <td>
                            <!-- View Details Button -->
<%--                            <a href="/order/details/${order.id}" class="btn btn-info btn-sm" aria-label="View details of Order ${order.id}">--%>
<%--                                View Details--%>
<%--                            </a>--%>
                            <a href="#" class="btn btn-info btn-sm" aria-label="View details of Order ${order.id}">
                                View Details
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>

    <!-- Login redirect notice if user is not authenticated -->
    <c:if test="${empty completedOrders}">
        <div class="text-center mt-5">
            <p>You are not logged in. Please <a href="${pageContext.request.contextPath}/login/login" class="btn btn-primary">Login</a></p>
        </div>
    </c:if>
</div>

<!-- Bootstrap 5 JavaScript and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-lZqWJOGqaPiyjS9rbL0aKf3Y8qqIHOoii3Vb1WyS0dB3w/Wvgmj29csYO9pD8c7M" crossorigin="anonymous"></script>

</body>
</html>
