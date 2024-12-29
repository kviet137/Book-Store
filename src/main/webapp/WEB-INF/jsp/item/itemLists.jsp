<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>


<div class="container mt-4">
    <h2 class="mb-4">Products</h2>
    <div class="list-group">
        <div class="list-group-item">
            <div class="d-flex justify-content-between align-items-center">
                <a href="/item/detail" class="text-primary text-decoration-none">Product 1</a>
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
                <a href="/item/detail" class="text-primary text-decoration-none">Product 2</a>
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