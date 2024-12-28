<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="..include/header.jsp"/>

<h1 class="text-center">Item Details</h1>
<div class="container mt-4">
    <h2>Book Title</h2>
    <p><strong>Author:</strong> Author Name</p>
    <p><strong>Genre:</strong> Genre</p>
    <p><strong>Description:</strong> This is a detailed description of the book.</p>
    <p><strong>Price:</strong> $20.99</p>

    <a href="/cart/add/1" class="btn btn-success">Add to Cart</a>
</div>


<jsp:include page="..include/footer.jsp"/>