<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>


<h1 class="text-center">Search for Books</h1>
<section class="bg-light1 pt-5 pb-5">
  <div class="container">
    <form action="/book/search" class="mb-0">
      <div class="row justify-content-center">
        <div class="col-6">
          <div class="mb-3">
            <label for="bookTitle" class="form-label">Search</label>
            <input type="text" class="form-control" id="bookTitle" name="bookTitle" placeholder="Search for Books..." value="${bookTitle}">
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-6">
          <button type="submit" class="btn btn-primary">Search</button>
        </div>
      </div>
    </form>
  </div>
</section>

<c:if test="${not empty bookTitle}">
  <div class="container mt-4">
    <h2 class="mb-4">Books Found (${booksKey.size()})</h2>
    <c:forEach var="book" items="${booksKey}">
    <div class="list-group">
      <div class="list-group-item">
        <div class="d-flex justify-content-between align-items-center">
          <a href="/book/detail/${book.id}" class="text-primary text-decoration-none">${book.title}</a>
          <div class="d-flex flex-column position-absolute top-0 end-0 p-2">
            <button class="btn btn-sm btn-outline-primary mt-0 mb-1 me-2" onclick="addToCart(1)">Add to Cart</button>
            <button class="btn btn-sm btn-outline-danger mt-1 mb-1 me-2" onclick="addToFavorite(1)">Add to Favorite</button>
            <button class="btn btn-sm btn-outline-warning mt-1 mb-1 me-2" onclick="addToWishList(1)">Add to Wish List</button>
          </div>
        </div>
        <div class="mt-2">
          <p class="mb-1"><strong>Genre: </strong> ${book.genre}</p>
          <p class="mb-1"><strong>Author: </strong> ${book.author}</p>
          <p class="mb-1"><strong>Price: </strong>$${book.price}</p>
          <p class="mb-1 me-5"><strong>Description: </strong>${book.description}</p>
        </div>
      </div>
      </c:forEach>
    </div>
  </div>

  <section class="bg-light2 pt-5 pb-5">
    <div class="container">
      <h2 class="text-center">Related Books (${booksKey.size()})</h2>

      <table class="table mt-5">
        <tr>
          <th>Author</th>
          <th>Price1</th>
          <th>Genre</th>
          <th>Description</th>

        </tr>
        <c:forEach var="book" items="${booksKey}">
          <tr>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td>${book.genre}</td>
            <td>${book.description}</td>

          </tr>
        </c:forEach>
      </table>
    </div>
  </section>
</c:if>

<c:if test="${not empty title}">
  <section class="bg-light2 pt-5 pb-5">
    <div class="container">
      <h2 class="text-center">Customers Found (${booksKey.size()})</h2>

      <table class="table mt-5">
        <tr>
          <th>Author</th>
          <th>Price</th>
          <th>Genre</th>
          <th>Description</th>

        </tr>
        <c:forEach var="book" items="${booksKey}">
          <tr>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td>${book.genre}</td>
            <td>${book.description}</td>

          </tr>
        </c:forEach>
      </table>
    </div>
  </section>
</c:if>
<script>
  function addToCart(productId) {
    alert('Product ' + productId + ' added to cart!');
  }

  function addToFavorite(productId) {
    alert('Product ' + productId + ' added to favorites!');
  }

  function addToWishList(productId) {
    alert('Product ' + productId + ' added to wish list!');
  }
</script>
<jsp:include page="../include/footer.jsp"/>