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
    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-5">
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
                        <a class="nav-link" href="/item/list">Add/Edit User</a>
                    </li>


                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/user/history">Add/Edit Item</a>
                    </li>

                    <li class="nav-item ms-auto">
                        <a class="nav-link" href="/user/admin">Admin</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</section>

<div class="container">
    <h1 class="my-4">Admin Dashboard</h1>
    <div class="row">
        <div class="col-md-6">
            <h4>Manage Users</h4>
            <button class="btn btn-primary mb-3">Add User</button>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <!-- Dynamic list of users will go here -->
                </tbody>
            </table>
        </div>
        <div class="col-md-6">
            <h4>Manage Items</h4>
            <button class="btn btn-primary mb-3">Add Item</button>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Item Name</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <!-- Dynamic list of items will go here -->
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <h4>Order Transactions</h4>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>Order ID</th>
                <th>User</th>
                <th>Status</th>
            </tr>
            </thead>
            <tbody>
            <!-- Order transactions will be listed here -->
            </tbody>
        </table>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>