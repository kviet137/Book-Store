<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Manage Users and Items</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
</head>
<body>
<div class="container mt-4">
    <h2>Admin Dashboard</h2>

    <!-- User Management Section -->
    <h3>Manage Users</h3>
    <button class="btn btn-primary mb-2">Add User</button>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- Example of dynamically generated users -->
        <tr>
            <td>1</td>
            <td>JohnDoe</td>
            <td>john@example.com</td>
            <td>
                <button class="btn btn-warning btn-sm">Edit</button>
                <button class="btn btn-danger btn-sm">Delete</button>
            </td>
        </tr>
        <!-- Additional users can be added here dynamically -->
        </tbody>
    </table>

    <!-- Item Management Section -->
    <h3>Manage Items</h3>
    <button class="btn btn-primary mb-2">Add Item</button>
    <table class="table">
        <thead>
        <tr>
            <th>Item ID</th>
            <th>Item Name</th>
            <th>Price</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- Example of dynamically generated items -->
        <tr>
            <td>101</td>
            <td>Book Title</td>
            <td>$20.99</td>
            <td>
                <button class="btn btn-warning btn-sm">Edit</button>
                <button class="btn btn-danger btn-sm">Delete</button>
            </td>
        </tr>
        <!-- Additional items can be added here dynamically -->
        </tbody>
    </table>

    <!-- Order Management Section -->
    <h3>Track Orders</h3>
    <table class="table">
        <thead>
        <tr>
            <th>Order ID</th>
            <th>User</th>
            <th>Item</th>
            <th>Status</th>
        </tr>
        </thead>
        <tbody>
        <!-- Example of dynamically generated orders -->
        <tr>
            <td>1</td>
            <td>JohnDoe</td>
            <td>Book Title</td>
            <td>Shipped</td>
        </tr>
        <!-- Additional orders can be added here dynamically -->
        </tbody>
    </table>
</div>
</body>
</html>