<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>

<c:if test="${not empty book}">
    <div class="container mt-5 mb-5">
        <h1 class="text-center mb-4">Book Details</h1>
        <div class="card shadow-sm">
            <div class="row g-0">
                <div class="col-md-4">
                    <img src="${book.image}" class="img-fluid rounded-start" alt="${book.title}">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h2 class="card-title">${book.title}</h2>
                        <p class="card-text"><strong>Author:</strong> ${book.author}</p>
                        <p class="card-text"><strong>Genre:</strong> ${book.genre}</p>
                        <p class="card-text"><strong>Price:</strong> $${book.price}</p>
                        <p class="card-text"><strong>Description:</strong> ${book.description}</p>

                        <div class="mt-4 d-flex align-items-center">
                            <!-- Add to Cart Button -->
                            <a href="/cart/add/${book.id}" class="btn btn-primary me-3">Add to Cart</a>

                            <!-- Success Message styled as a badge -->
                            <c:if test="${not empty message}">
                                <div class="alert alert-info mb-0 d-inline-block px-3 py-2 text-center">
                                        ${message} <a href="/user/cart" class="alert-link">View Cart</a>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:if>

<c:if test="${empty book}">
    <div class="container mt-5">
        <div class="alert alert-warning text-center">
            <strong>No book details available.</strong>
        </div>
    </div>
</c:if>

<jsp:include page="../include/footer.jsp"/>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

