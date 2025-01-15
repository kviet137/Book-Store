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

        <!-- Add to Cart Button -->
        <a href="/cart/add/${book.id}" class="btn btn-sm btn-outline-primary me-2">Add to Cart</a>
    </div>
</c:if>

<jsp:include page="../include/footer.jsp"/>
