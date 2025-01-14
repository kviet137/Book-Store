<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>

<c:if test="${not empty book}">
<h1 class="text-center">Book Details</h1>
<div class="container mt-4">
    <h2>${book.title}</h2>
    <p><strong>Author:</strong> ${book.author}</p>
    <p><strong>Genre:</strong> ${book.genre}</p>
    <p><strong>Price:</strong> $${book.price}</p>
    <p><strong>Description:</strong> ${book.description}</p>

    <button class="btn btn-sm btn-outline-primary me-2" onclick="addToCart(1)">Add to Cart</button>

</div>
</c:if>


<script>
    function addToCart(productId) {
        alert('Product ' + productId + ' added to cart!');
    }

</script>







<jsp:include page="../include/footer.jsp"/>