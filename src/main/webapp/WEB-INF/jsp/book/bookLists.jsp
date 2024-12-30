<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>


<div class="container mt-4">
    <h2 class="mb-4">Products</h2>
    <div class="list-group">
        <div class="list-group-item">
            <div class="d-flex justify-content-between align-items-center">
                <a href="/book/detail" class="text-primary text-decoration-none">Product 1</a>
                <div class="d-flex flex-column">
                    <button class="btn btn-sm btn-outline-primary me-2" onclick="addToCart(1)">Add to Cart</button>
                    <button class="btn btn-sm btn-outline-danger me-2" onclick="addToFavorite(1)">Add to Favorite</button>
                    <button class="btn btn-sm btn-outline-warning me-2" onclick="addToWishList(1)">Add to Wish List</button>
                </div>
            </div>
            <div class="mt-2">
                <p class="mb-1"><strong>Genre:</strong> Fiction</p>
                <p class="mb-1"><strong>Author:</strong> Author 1</p>
                <p class="mb-1"><strong>Price:</strong> $10.00</p>
            </div>
        </div>
        <div class="list-group-item">
            <div class="d-flex justify-content-between align-items-center">
                <a href="/book/detail" class="text-primary text-decoration-none">Product 2</a>
                <div class="d-flex flex-column">
                    <button class="btn btn-sm btn-outline-primary me-2" onclick="addToCart(2)">Add to Cart</button>
                    <button class="btn btn-sm btn-outline-danger me-2" onclick="addToFavorite(2)">Add to Favorite</button>
                    <button class="btn btn-sm btn-outline-warning me-2" onclick="addToWishList(2)">Add to Wish List</button>
                </div>
            </div>
            <div class="mt-2">
                <p class="mb-1"><strong>Genre:</strong> Non-Fiction</p>
                <p class="mb-1"><strong>Author:</strong> Author 2</p>
                <p class="mb-1"><strong>Price:</strong> $15.00</p>
            </div>
        </div>
        <!-- Add more products as needed -->
    </div>
</div>

<c:if test="${not empty title}">
    <section class="bg-light2 pt-5 pb-5">
        <div class="container">
            <h2 class="text-center">Customers Found (${booksKey.size()})</h2>

            <table class="table mt-5">
                <tr>
                    <th>Contact First Name</th>
                    <th>Contact Last Name</th>
                    <th>id</th>
                    <th>Customer Name</th>
                    <th>Edit</th>
                </tr>
                <c:forEach var="book" items="${booksKey}">
                    <tr>
                        <td>${book.author}</td>
                        <td>${book.price}</td>
                        <td>${book.description}</td>
                        <td>${book.genre}</td>
                        <td><a href="/customer/edit/${book.id}">Edit</a></td>
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