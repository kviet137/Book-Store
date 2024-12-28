<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="..include/header.jsp"/>



<h1 class="text-center">Item List</h1>
<div class="container mt-4">
    <h2>Available Books</h2>

    <!-- Filters -->
    <div class="mb-4">
        <label for="genre" class="form-label">Genre</label>
        <select id="genre" class="form-select" aria-label="Filter by Genre">
            <option value="">All Genres</option>
            <option value="fiction">Fiction</option>
            <option value="non-fiction">Non-fiction</option>
        </select>

        <label for="author" class="form-label">Author</label>
        <select id="author" class="form-select" aria-label="Filter by Author">
            <option value="">All Authors</option>
            <option value="author1">Author 1</option>
            <option value="author2">Author 2</option>
        </select>
    </div>

    <!-- Book List -->
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <img src="book-image.jpg" class="card-img-top" alt="Book Image">
                <div class="card-body">
                    <h5 class="card-title">Book Title</h5>
                    <p class="card-text">By Author Name</p>
                    <a href="/book/details/1" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>
        <!-- Additional books can be displayed dynamically -->
    </div>
</div>



<jsp:include page="..include/footer.jsp"/>