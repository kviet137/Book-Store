<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>
<section class="bg-light pt-5">
    <div class="container">
        <div class="row justify-content-center">
            <h1 class="text-center">Create/Edit Book</h1>
        </div>
    </div>
</section>
<c:if test="${not empty message}">
    <div class="alert alert-info alert-dismissible fade show" role="alert">
            ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</c:if>
<section>
    <div class="bg-light py-3 py-md-5">
        <div class="container">
            <div class="bg-white p-4 p-md-5 rounded shadow-sm">
                <form action = "/book/createBook" method = "POST" enctype="multipart/form-data">
                    <input type = "hidden" name = "id" value = "${form.id}"/>
                    <div class="mt-3 row justify-content-center">
                        <label for="title" class="col-sm-2 col-form-label">Book Tittle</label>
                        <div class="col-sm-10 col-lg-6">
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

                    <div class="mt-3 row justify-content-center">
                        <label for="author" class="col-sm-2 col-form-label">Author</label>
                        <div class="col-sm-10 col-lg-6">
                            <input type="text" class="form-control" id="author" name="author" value="${form.author}">
                        </div>
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

                    <div class="mt-3 row justify-content-center">
                        <label for="price" class="col-sm-2 col-form-label">Price</label>
                        <div class="col-sm-10 col-lg-6">
                            <input type="text" class="form-control" id="price" name="price" value="${form.price}">
                        </div>
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


                    <div class="mt-3 row justify-content-center">
                        <label for="genre" class="col-sm-2 col-form-label">Genre</label>
                        <div class="col-sm-10 col-lg-6">
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

                    <div class="mt-3 row justify-content-center">
                        <label for="description" class="col-sm-2 col-form-label">Description</label>
                        <div class="col-sm-10 col-lg-6">
                            <textarea class="form-control" id="description" name="description" placeholder="Enter a brief description of the book" rows="4">${form.description}</textarea>
                        </div>
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



                    <div class="mt-3 row justify-content-center">
                        <label for="upload" class="col-sm-2 col-form-label">Upload Image</label>
                        <div class="col-sm-10 col-lg-6">
                            <input type="file" class="form-control" id="upload" name="upload">
                        </div>
                    </div>


                    <div class="d-flex justify-content-center mt-4">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>

                </form>

            </div>
        </div>
    </div>

</section>





<jsp:include page="../include/footer.jsp"/>