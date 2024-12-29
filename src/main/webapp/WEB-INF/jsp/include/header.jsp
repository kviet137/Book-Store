<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Book World</title>


    <!-- these 2 lines are needed to bring in bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

    <!-- jquery is always loaded at the top of the file because its needed by so many other libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="/pub/css/global.css" rel="stylesheet"/>
</head>
<body>
<section>
    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
        <div class="container-fluid">
            <a class="navbar-brand" href="/index">Book World</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="top-fluid-container">
                <form action="/employee/search" class="mb-0">
                    <div class="row justify-content-center">
                        <div class="col-6 d-flex align-items-end">
                            <div class="flex-grow-1 me-2">
                                <label for="firstNameId" class="form-label"></label>
                                <input type="text" class="form-control" id="firstNameId" name="firstName"
                                       placeholder="Search for books..." style="width: 650px;" value="${search}">
                            </div>
                            <button type="submit" class="btn btn-primary align-self-end">Search</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/user/cart">Login</a>
                    </li>
                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/item/list">Item List</a>
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

                </ul>
            </div>
        </div>
    </nav>
</section>

