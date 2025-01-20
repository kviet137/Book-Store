<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../include/header.jsp"/>
<link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<div class="bg-light py-3 py-md-5">
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-12 col-md-11 col-lg-8 col-xl-7 col-xxl-6">
                <div class="bg-white p-4 p-md-5 rounded shadow-sm">
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center mb-4">
                                <h1 class="m-0 text-center">Sign Up</h1>
                            </div>
                        </div>
                    </div>
                    <c:if test="${param.error eq ''}">
                        <div class="row justify-content-center">
                            <div class="col-11 alert alert-danger" role="alert">
                                There was an error with your submission. Please try again.
                            </div>
                        </div>
                    </c:if>
                    <form action="/login/signupSubmit" method="post">
                        <div class="row gy-3 gy-md-4 overflow-hidden">


                            <!-- Full Name -->
                            <div class="col-12">
                                <label for="fullName" class="form-label">Full Name <span
                                        class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                                 <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                        </svg>

                                    </span>
                                    <input type="text" class="form-control" id="fullName" name="fullName"
                                           value="${form.fullName}">
                                </div>
                            </div>
                            <c:if test="${bindingResult.hasFieldErrors('fullName')}">
                                <div class="row justify-content-center">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-10 col-lg-6">
                                        <c:forEach var="error" items="${bindingResult.getFieldErrors('fullName')}">
                                            <dd class="mb-0 form_input_error text-danger">${error.getDefaultMessage()}</dd>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:if>


                            <!-- Email -->
                            <div class="col-12">
                                <label for="username" class="form-label">Email <span
                                        class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                            <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                                        </svg>
                                    </span>
                                    <input type="text" class="form-control" id="username" name="username"
                                           value="${form.username}">
                                </div>
                            </div>
                            <c:if test="${bindingResult.hasFieldErrors('username')}">
                                <div class="row justify-content-center">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-10 col-lg-6">
                                        <c:forEach var="error" items="${bindingResult.getFieldErrors('username')}">
                                            <dd class="mb-0 form_input_error text-danger">${error.getDefaultMessage()}</dd>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:if>

                            <!-- Password -->
                            <div class="col-12">
                                <label for="password" class="form-label">Password <span
                                        class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-key" viewBox="0 0 16 16">
                                            <path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"/>
                                            <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                                        </svg>
                                    </span>
                                    <input type="password" class="form-control" id="password" name="password" value=""
                                           >
                                </div>
                            </div>
                            <c:if test="${bindingResult.hasFieldErrors('password')}">
                                <div class="row justify-content-center">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-10 col-lg-6">
                                        <c:forEach var="error" items="${bindingResult.getFieldErrors('password')}">
                                            <dd class="mb-0 form_input_error text-danger">${error.getDefaultMessage()}</dd>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:if>

<%--                            <!-- Confirm Password -->--%>
                            <div class="col-12">
                                <label for="confirmPassword" class="form-label">Confirm Password <span
                                        class="text-danger">*</span></label>
                                <div class="input-group">
                                    <span class="input-group-text">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                             fill="currentColor" class="bi bi-check2" viewBox="0 0 16 16">
                                            <path d="M13.854 3.646a.5.5 0 0 1 0 .708L6.707 11.5 3.146 7.854a.5.5 0 1 1 .708-.708l2.646 2.647 6.5-6.5a.5.5 0 0 1 .708 0z"/>
                                        </svg>
                                    </span>
                                    <input type="password" class="form-control" id="confirmPassword"
                                           name="confirmPassword" value="">
                                </div>
                            </div>
                            <c:if test="${bindingResult.hasFieldErrors('confirmPassword')}">
                                <div class="row justify-content-center">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-10 col-lg-6">
                                        <c:forEach var="error" items="${bindingResult.getFieldErrors('confirmPassword')}">
                                            <dd class="mb-0 form_input_error text-danger">${error.getDefaultMessage()}</dd>
                                        </c:forEach>
                                    </div>
                                </div>
                            </c:if>

                            <!-- Submit Button -->
                            <div class="col-12">
                                <div class="d-grid">
                                    <button class="btn btn-primary btn-lg" type="submit">Sign Up</button>
                                </div>
                            </div>

                        </div>
                    </form>
                    <div class="row">
                        <div class="col-12">
                            <hr class="mt-1 mb-4 border-secondary-subtle">
                            <div class="d-flex gap-2 gap-md-4 flex-column flex-md-row justify-content-md-center">
                                <a href="/login/login" class="link-secondary text-decoration-none">Already have an
                                    account? Log in</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../include/footer.jsp"/>
