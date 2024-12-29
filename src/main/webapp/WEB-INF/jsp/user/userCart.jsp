<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>

<h1 class="text-center">Cart</h1>

<div class="container mt-4">
    <h2>Your Cart</h2>

    <table class="table">
        <thead>
        <tr>
            <th>Item</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Book Title</td>
            <td>$20.99</td>
            <td><button class="btn btn-danger btn-sm">Remove</button></td>
        </tr>
        <!-- Additional cart items can be listed here -->
        </tbody>
    </table>

    <h3>Total: $20.99</h3>
    <a href="/checkout" class="btn btn-primary">Proceed to Checkout</a>
</div>


<jsp:include page="../include/footer.jsp"/>