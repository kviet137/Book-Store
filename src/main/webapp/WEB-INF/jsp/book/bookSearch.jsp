<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book Search</title>
  <!-- Bootstrap 5 CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }
  </style>
</head>
<body>

<jsp:include page="../include/header.jsp"/>

<div class="container mt-5">
  <h1 class="text-center mb-4">Search for Books</h1>
  <form action="/book/search" class="mb-4">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="input-group">
          <input type="text" class="form-control" id="bookTitle" name="bookTitle" placeholder="Search for Books..." value="${bookTitle}" required>
          <button type="submit" class="btn btn-primary">Search</button>
        </div>
      </div>
    </div>
  </form>
</div>

<c:if test="${not empty bookTitle}">
  <div class="container mt-4">
    <h2 class="mb-4">Books Found (${booksKey.size()})</h2>
    <div class="row">
      <c:forEach var="book" items="${booksKey}">
        <div class="col-md-6 mb-4">
          <div class="card h-100 shadow-sm">

            <div class="card-body">
              <h5 class="card-title">
                <a href="/book/detail/${book.id}" class="text-primary text-decoration-none">${book.title}</a>
              </h5>
              <img src="${book.imageUrl}" class="rounded float-start me-3" style="height: 400px; object-fit: cover;" alt="${book.title}">
              <p class="card-text"><strong>Author:</strong> ${book.author}</p>
              <p class="card-text"><strong>Genre:</strong> ${book.genre}</p>
              <p class="card-text"><strong>Price:</strong> $${book.price}</p>
              <p class="card-text"><strong>Description:</strong> ${book.description}</p>

            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>

  <div class="container mt-5">
    <h2 class="text-center">Related Books (${booksKey.size()})</h2>
    <table class="table table-striped table-hover mt-4">
      <thead class="table-light">
      <tr>
        <th>Author</th>
        <th>Price</th>
        <th>Genre</th>
        <th>Description</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="book" items="${booksKey}">
        <tr>
          <td>${book.author}</td>
          <td>$${book.price}</td>
          <td>${book.genre}</td>
          <td>${book.description}</td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</c:if>

<c:if test="${empty booksKey}">
  <div class="container mt-5">
    <div class="alert alert-warning text-center">
      <strong>No books found. Try a different search term.</strong>
    </div>
  </div>
</c:if>

<script>
  function addToCart(bookTitle) {
    alert(bookTitle + ' added to cart!');
  }

  function addToFavorite(bookTitle) {
    alert(bookTitle + ' added to favorites!');
  }

  function addToWishList(bookTitle) {
    alert(bookTitle + ' added to wish list!');
  }
</script>

<jsp:include page="../include/footer.jsp"/>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
