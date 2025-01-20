<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="/css/style.css"> <!-- Link to your CSS file -->
</head>
<body>
<div class="container">
    <h1>Sign Up</h1>
    <form:form method="post" action="/login/signupSubmit">
        <!-- Email Field -->
        <div class="form-group">
            <label for="username">Email:</label>
            <form:input type="text" id="username" path="username" class="form-control"/>
            <form:errors path="username" cssClass="error-message"/>
        </div>

        <!-- Full Name Field -->
        <div class="form-group">
            <label for="fullName">Full Name:</label>
            <form:input type="text" id="fullName" path="fullName" class="form-control"/>
            <form:errors path="fullName" cssClass="error-message"/>
        </div>

        <!-- Password Field -->
        <div class="form-group">
            <label for="password">Password:</label>
            <form:password id="password" path="password" class="form-control"/>
            <form:errors path="password" cssClass="error-message"/>
        </div>

        <!-- Confirm Password Field -->
        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <form:password id="confirmPassword" path="confirmPassword" class="form-control"/>
            <form:errors path="confirmPassword" cssClass="error-message"/>
        </div>

        <!-- Submit Button -->
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Sign Up</button>
        </div>
    </form:form>
</div>

<!-- Error messages styling -->
<style>
    .error-message {
        color: red;
        font-size: 0.9em;
    }
    .form-control {
        width: 100%;
        padding: 10px;
        margin: 5px 0 10px;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .btn-primary {
        background-color: #007bff;
        color: white
