<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<section>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <div class="container-fluid">
            <a class="navbar-brand" href="/index">Book World</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/user/cart">Login</a>
                    </li>
                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/user/cart">Need To</a>
                    </li>
                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/user/history">Add/Edit Item</a>
                    </li>
                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/admin/admin">Admin</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</section>
<div class="d-flex flex-grow-1">
    <!-- Sidebar -->
    <div class="bg-dark text-white p-3">
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

                    <div class="card mt-5">
                        <h4 class="mt-3 ms-3">Add/Edit Book</h4>
                        <form action="/admin/search" class="d-flex mt-3 ms-3 mb-4" style="width: 60%;" role="search">
                            <input class="form-control me-2" type="text" placeholder="Search for book..."
                                   aria-label="Search" id="author" name="author" value="${author}">
                            <button class="btn btn-primary" type="submit">Search</button>
                        </form>
                        <c:if test="${not empty author}">
                            <table class="table table-striped ">
                                <thead class="table-primary">
                                <tr>
                                    <th>Edit</th>
                                    <th>Title</th>
                                    <th>Author</th>
                                    <th>Price</th>
                                    <th>Genre</th>
                                    <th>Description</th>

                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="book" items="${booksKey}">
                                    <tr>
                                        <td><a href="#">Edit</a></td>
                                        <td>${book.title}</td>
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

<script>
    function addUser() {
        alert('need to implement addUser');
    }

    function addItem() {
        alert('need to implement addItem');
    }
</script>