<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>



<div class="container mt-4">
    <h2 class="mb-4">Products</h2>
    <div class="list-group">
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <a href="productDetail.jsp?productId=1" class="text-primary text-decoration-none">Product 1</a>
            <div>
                <button class="btn btn-sm btn-outline-primary me-2" onclick="addToCart(1)">Add to Cart</button>
                <button class="btn btn-sm btn-outline-secondary me-2" onclick="addToFavorite(1)">Add to Favorite</button>
                <button class="btn btn-sm btn-outline-success" onclick="addToWishList(1)">Add to Wish List</button>
            </div>
        </div>
        <div class="list-group-item d-flex justify-content-between align-items-center">
            <a href="productDetail.jsp?productId=2" class="text-primary text-decoration-none">Product 2</a>
            <div>
                <button class="btn btn-sm btn-outline-primary me-2" onclick="addToCart(2)">Add to Cart</button>
                <button class="btn btn-sm btn-outline-secondary me-2" onclick="addToFavorite(2)">Add to Favorite</button>
                <button class="btn btn-sm btn-outline-success" onclick="addToWishList(2)">Add to Wish List</button>
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