<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar with Search and Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/index">Book World</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>


            <!-- Search bar in the center -->
            <form action="/book/search" class="d-flex mx-auto mb-0" role="search" style="width: 55%;">
                <input class="form-control me-2" type="text" placeholder="Search for books..." aria-label="Search" value="${title}">
                <button class="btn btn-primary" type="submit" id="title" name="title">Search</button>
            </form>

            <!-- Login link on the right -->
            <ul class="navbar-nav ms-auto">
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/book/search">Search</a>
                </li>
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/book/list">Book List</a>
                </li>


                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/user/history">History</a>
                </li>
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/user/cart">Cart</a>
                </li>
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/user/admin">Admin</a>
                </li>
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/ZT/ZT"> ztest</a>
                </li>

            </ul>
        </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
