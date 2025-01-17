<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/adminHeader.jsp"/>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Books</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container my-5">
    <h1 class="text-center mb-4">Create/Edit Book</h1>
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">
            <form action = "/book/createBook" method = "POST">
                <input type = "hidden" name = "id" value = "${form.id}"/>
                <div class="mb-3">
                    <label for="title" class="form-label">Book Title</label>
                    <div >
                    <input type="text" class="form-control" id="title" name="title" value="${form.title}">
                </div>
                </div>
                <c:if test="${bindingResult.hasFieldErrors('title')}">
                    <div class="row justify-content-center">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10 col-lg-6">
                            <c:forEach var="error" items="${bindingResult.getFieldErrors('title')}">
                                <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                            </c:forEach>
                        </div>
                    </div>
                </c:if>

                <div class="mb-3">
                    <label for="author" class="form-label">Author</label>
                    <input type="text" class="form-control" id="author" name="author" value="${form.author}">
                </div>
                <c:if test="${bindingResult.hasFieldErrors('author')}">
                    <div class="row justify-content-center">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10 col-lg-6">
                            <c:forEach var="error" items="${bindingResult.getFieldErrors('author')}">
                                <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                            </c:forEach>
                        </div>
                    </div>
                </c:if>
                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="text" class="form-control" id="price" name="price" value="${form.price}">
                </div>
                <c:if test="${bindingResult.hasFieldErrors('price')}">
                    <div class="row justify-content-center">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10 col-lg-6">
                            <c:forEach var="error" items="${bindingResult.getFieldErrors('price')}">
                                <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                            </c:forEach>
                        </div>
                    </div>
                </c:if>
                <div class="mb-3">
                    <label for="genre" class="form-label">Category</label>
                    <select class="form-select" id="genre" name="genre">
                        <option disabled ${form.genre == null ? 'selected' : ''}>Select Genre</option>
                        <option ${form.genre == 'Fiction' ? 'selected' : ''}>Fiction</option>
                        <option ${form.genre == 'Classic Fiction' ? 'selected' : ''}>Classic Fiction</option>
                        <option ${form.genre == 'Science Fiction' ? 'selected' : ''}>Science Fiction</option>
                        <option ${form.genre == 'Romance' ? 'selected' : ''}>Romance</option>
                        <option ${form.genre == 'Fantasy' ? 'selected' : ''}>Fantasy</option>
                        <option ${form.genre == 'Dystopian' ? 'selected' : ''}>Dystopian</option>
                        <option ${form.genre == 'Horror' ? 'selected' : ''}>Horror</option>
                        <option ${form.genre == 'Thriller' ? 'selected' : ''}>Thriller</option>
                    </select>
                </div>
                <c:if test="${bindingResult.hasFieldErrors('genre')}">
                    <div class="row justify-content-center">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10 col-lg-6">
                            <c:forEach var="error" items="${bindingResult.getFieldErrors('genre')}">
                                <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                            </c:forEach>
                        </div>
                    </div>
                </c:if>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <textarea class="form-control" id="description" name="description" rows="4" placeholder="Enter a brief description of the book">${form.description}</textarea>
                </div>
                <c:if test="${bindingResult.hasFieldErrors('description')}">
                    <div class="row justify-content-center">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10 col-lg-6">
                            <c:forEach var="error" items="${bindingResult.getFieldErrors('description')}">
                                <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                            </c:forEach>
                        </div>
                    </div>
                </c:if>

                <div class="mb-3">
                    <label for="upload" class="form-label">Upload Image</label>
                    <input type="file" class="form-control" id="upload" name="upload">
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Create Book</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white text-center py-3 mt-auto">
    <div class="container">
        <p class="mb-0">&copy; 2025 Admin Dashboard. All rights reserved.</p>
    </div>
</footer>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
