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
                                <h1 class="m-0 text-center">Logout</h1>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-11 alert alert-warning" role="alert">
                            Are you sure you want to log out?
                        </div>
                    </div>
                    <form action="/logout/logoutSubmit" method="post">
                        <div class="row gy-3 gy-md-4 overflow-hidden">
                            <div class="col-12">
                                <div class="d-grid">
                                    <button class="btn btn-danger btn-lg" type="submit">Log Out</button>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="d-grid">
                                    <a href="/home" class="btn btn-secondary btn-lg">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-12">
                            <hr class="mt-1 mb-4 border-secondary-subtle">
                            <div class="d-flex gap-2 gap-md-4 flex-column flex-md-row justify-content-md-center">
                                <a href="/profile" class="link-secondary text-decoration-none">Back to Profile</a>
                                <a href="/help" class="link-secondary text-decoration-none">Help Center</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../include/footer.jsp"/>
