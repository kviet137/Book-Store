<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>




<h1 class="text-center">Customer Search</h1>
<section class="bg-light1 pt-5 pb-5">
  <div class="container">
    <form action="/book/search" class="mb-0">
      <div class="row justify-content-center">
        <div class="col-6">
          <div class="mb-3">
            <label for="title" class="form-label">First Name</label>
            <input type="text" class="form-control" id="title" name="title" value="${title}">
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
          <th>Edit</th>
        </tr>
        <c:forEach var="book" items="${booksKey}">
          <tr>
            <td>${book.author}</td>
            <td>${book.price}</td>
            <td>${book.genre}</td>
            <td>${book.description}</td>
            <td><a href="/customer/edit/${book.id}">Edit</a></td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </section>
</c:if>

<jsp:include page="../include/footer.jsp"/>