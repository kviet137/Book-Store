<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book World</title>
    <link href="/pub/css/global.css" rel="stylesheet"/>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container-fluid">
        <a class="navbar-brand ms-2" href="/index">Book World</a>

        <!-- Change Location Button next to Book World -->
        <button class="btn btn-link ms-3" type="button" id="changeLocationBtn" data-bs-toggle="modal" data-bs-target="#locationModal">
            Change Location
        </button>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Search bar in the center -->
        <form action="/book/search" class="d-flex mx-auto ms-4 mb-0" role="search" style="width: 45%;">
            <input class="form-control me-2" name="bookTitle" type="text" placeholder="Search for Books..." aria-label="Search" value="${bookTitle}">
            <button class="btn btn-primary" type="submit">Search</button>
        </form>

        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- Login link on the right -->
            <ul class="navbar-nav ms-auto">
                <sec:authorize access="!isAuthenticated()">
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/login/login">Login</a>
                </li>
                </sec:authorize>
                <sec:authorize access="hasAnyAuthority('ADMIN')">
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/admin/admin">Admin</a>
                </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Hello, <sec:authentication property="principal.username"/>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li><a class="dropdown-item" href="/user/history">Orders</a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="/login/logout">Logout</a></li>
                        </ul>
                    </li>
                </sec:authorize>
                <li class="nav-item ms-auto">
                    <a class="nav-link" href="/user/cart">Cart</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Modal for Change Location -->
<div class="modal fade" id="locationModal" tabindex="-1" aria-labelledby="locationModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="locationModalLabel">Change Location</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="locationForm">
                    <div class="mb-3">
                        <label for="location" class="form-label">Enter your new location:</label>
                        <input type="text" class="form-control" id="location" placeholder="New location">
                    </div>
                    <button type="button" class="btn btn-primary" id="saveLocationBtn">Save Location</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- JavaScript to update Change Location button text -->
<script>
    document.getElementById("saveLocationBtn").addEventListener("click", function() {
        var newLocation = document.getElementById("location").value;

        if (newLocation.trim() !== "") {
            // Save location to local storage
            localStorage.setItem("userLocation", newLocation);

            // Update the button text
            document.getElementById("changeLocationBtn").textContent = "Location: " + newLocation;

            // Close the modal
            var modal = bootstrap.Modal.getInstance(document.getElementById('locationModal'));
            modal.hide();
        } else {
            alert("Please enter a location.");
        }
    });

    document.addEventListener("DOMContentLoaded", function() {
        const savedLocation = localStorage.getItem("userLocation");
        if (savedLocation) {
            document.getElementById("changeLocationBtn").textContent = "Location: " + savedLocation;
        }
    });
</script>

</body>
</html>
