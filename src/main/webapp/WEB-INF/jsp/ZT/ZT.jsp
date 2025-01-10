<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>

<section class="bg-light1 pt-5 pb-5">
    <div class="container">
        <div class="row">
            <h1 class ="m-9 text-center"> Create Book</h1>
        </div>
    </div>
</section>
<section class ="bg-light2 pt-5 pb-5">
    <div class="container">
        <form action = "/book/createBook" method = "POST" enctype="multipart/form-data">
            <input type = "hidden" name = "id" value = "${form.id}"/>
            <div class="mt-3 row justify-content-center">
                <label for="companyName" class="col-sm-2 col-form-label">Book Tittle</label>
                <div class="col-sm-10 col-lg-6">
                    <input type="text" class="form-control" id="companyName" name="companyName" value="${form.companyName}">
                </div>
            </div>
            <c:if test="${bindingResult.hasFieldErrors('companyName')}">
                <div class="row justify-content-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10 col-lg-6">
                        <c:forEach var="error" items="${bindingResult.getFieldErrors('companyName')}">
                            <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                        </c:forEach>
                    </div>
                </div>
            </c:if>

            <div class="mt-3 row justify-content-center">
                <label for="firstName" class="col-sm-2 col-form-label">Author</label>
                <div class="col-sm-10 col-lg-6">
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${form.firstName}">
                </div>
            </div>
            <c:if test="${bindingResult.hasFieldErrors('firstName')}">
                <div class="row justify-content-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10 col-lg-6">
                        <c:forEach var="error" items="${bindingResult.getFieldErrors('firstName')}">
                            <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                        </c:forEach>
                    </div>
                </div>
            </c:if>

            <div class="mt-3 row justify-content-center">
                <label for="lastName" class="col-sm-2 col-form-label">Price</label>
                <div class="col-sm-10 col-lg-6">
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${form.lastName}">
                </div>
            </div>
            <c:if test="${bindingResult.hasFieldErrors('lastName')}">
                <div class="row justify-content-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10 col-lg-6">
                        <c:forEach var="error" items="${bindingResult.getFieldErrors('lastName')}">
                            <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                        </c:forEach>
                    </div>
                </div>
            </c:if>


            <div class="mt-3 row justify-content-center">
                <label for="phone" class="col-sm-2 col-form-label">Genre</label>
                <div class="col-sm-10 col-lg-6">
                    <select class="form-select" id="phone" name="phone" value="${form.phone}">
                        <option selected disabled>Select Genre</option>
                        <option>Fiction</option>
                        <option>Classic Fiction</option>
                        <option>Science Fiction</option>
                        <option>Romance</option>
                        <option>Fantasy</option>
                        <option>Dystopian</option>
                        <option>Horror</option>
                        <option>Thriller</option>
                    </select>
                </div>
            </div>
            <c:if test="${bindingResult.hasFieldErrors('phone')}">
                <div class="row justify-content-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10 col-lg-6">
                        <c:forEach var="error" items="${bindingResult.getFieldErrors('phone')}">
                            <dd class="mb-0 form_input_error">${error.getDefaultMessage()}</dd>
                        </c:forEach>
                    </div>
                </div>
            </c:if>

            <div class="mt-3 row justify-content-center">
                <label for="addressLine1" class="col-sm-2 col-form-label">Description</label>
                <div class="col-sm-10 col-lg-6">
                    <textarea class="form-control" id="addressLine1" name="addressLine1" value="${form.addressLine1}"></textarea>
                </div>
            </div>
            <c:if test="${bindingResult.hasFieldErrors('addressLine1')}">
                <div class="row justify-content-center">
                    <div class="col-sm-2"></div>
                    <div class="col-sm-10 col-lg-6">
                        <c:forEach var="error" items="${bindingResult.getFieldErrors('addressLine1')}">
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

            <div class="mt-3 row justify-content-center">
                <div class="col-sm-12 col-lg-8">

                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>


    </div>

</section>






<jsp:include page="../include/footer.jsp"/>