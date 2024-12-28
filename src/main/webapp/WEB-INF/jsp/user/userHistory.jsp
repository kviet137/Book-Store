<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="..include/header.jsp"/>

<h1 class="text-center">History</h1>
<div class="container mt-4">
    <h2>Your Order History</h2>

    <table class="table">
        <thead>
        <tr>
            <th>Order ID</th>
            <th>Item</th>
            <th>Date</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Book Title</td>
            <td>2024-12-25</td>
            <td>Shipped</td>
        </tr>
        <!-- Additional orders can be listed here -->
        </tbody>
    </table>
</div>

<jsp:include page="..include/footer.jsp"/>