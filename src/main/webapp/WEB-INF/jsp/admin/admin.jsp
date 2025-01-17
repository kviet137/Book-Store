<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>


<jsp:include page="../include/adminHeader.jsp"/>


<div class="d-flex flex-grow-1">
    <!-- Sidebar -->
    <div class="bg-primary text-white p-3 ">
        <h3 class="text-center">Admin</h3>
        <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="/book/create" class="nav-link text-white">Add New Book</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link text-white">Dashboard</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link text-white">Analytics</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link text-white">Settings</a></li>
        </ul>
    </div>
    <div class="flex-fill p-4">
        <header class="d-flex justify-content-between align-items-center mb-4">
            <h2>Dashboard</h2>
        </header>
        <section class="row">
            <div >
                <div>
                    <div class="card">
                        <h4 class="mt-3 ms-3">Search/Edit Book</h4>
                        <form action="/admin/search" class="d-flex mt-3 ms-3 mb-4" style="width: 60%;" role="search">
                            <input class="form-control me-2" type="text" placeholder="Search for Books..."
                                   aria-label="Search" id="bookTitle" name="bookTitle" value="${bookTitle}">
                            <button class="btn btn-primary" type="submit">Search</button>
                        </form>
                        <c:if test="${not empty bookTitle}">
                            <table class="table table-striped ">
                                <thead class="table-primary">
                                <tr>
                                    <th>Edit</th>
                                    <th>Title</th>
                                    <th>Image</th>
                                    <th>Author</th>
                                    <th>Price</th>
                                    <th>Genre</th>
                                    <th>Description</th>

                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="book" items="${booksKey}">
                                    <tr>
                                        <td><a href="/book/edit/${book.id}">Edit</a></td>
                                        <td>${book.title}</td>
                                        <td><img src="${book.imageUrl}"  class="text-primary text-decoration-none" style="max-width: 80px; height: auto; object-fit: cover;" alt="${book.title}"></td>
                                        <td>${book.author}</td>
                                        <td>${book.price}</td>
                                        <td>${book.genre}</td>
                                        <td>${book.description}</td>
                                    </tr>
                                </c:forEach>
                                <!-- Dynamic list of items will go here -->
                                </tbody>
                            </table>
                        </c:if>
                    </div>

                    <div class="card mt-5">
                        <h4 class="mt-3 ms-3">Order Transactions</h4>
                        <form action="#" class="d-flex mt-3 ms-3 mb-4" style="width: 60%" role="search">
                            <input class="form-control me-2" type="text" placeholder="Search for order..."
                                   aria-label="Search" value="${order}">
                            <button class="btn btn-primary" type="submit" id="order" name="title">Search</button>
                        </form>
                        <table class="table table-striped">
                            <thead class="table-primary">
                            <tr>
                                <th>User</th>
                                <th>Order ID</th>
                                <th>Order Date</th>
                                <th>Total Amount</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>example</td>
                                <td>example</td>
                                <td>example</td>
                                <td>example</td>
                            </tr>
                            <tr>
                                <td>example</td>
                                <td>example</td>
                                <td>example</td>
                                <td>example</td>
                            </tr>
                            <!-- Order transactions will be listed here -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>




        <section class="row mb-4 mt-4">
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h3 class="card-title">Total Users</h3>
                        <p class="card-text">100</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h3 class="card-title">Active Sessions</h3>
                        <p class="card-text">50</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h3 class="card-title">Revenue</h3>
                        <p class="card-text">$5000</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="row">
            <div class="col-md-6 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">Monthly Sales</h3>
                        <div class="d-flex justify-content-center align-items-center bg-light" style="height: 200px;">
                            <p>Chart Placeholder</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">Website Traffic</h3>
                        <div class="d-flex justify-content-center align-items-center bg-light" style="height: 200px;">
                            <p>Chart Placeholder</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

