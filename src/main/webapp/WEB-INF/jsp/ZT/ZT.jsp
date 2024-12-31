<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEJ3QhqLMpG8r+KnujsmdL7v3vnmQ5M4v0r8sGchpcj9cfm2c4n8LgWcP+84j0" crossorigin="anonymous">
    <!-- Custom CSS for extra styling -->
    <style>
        .hero-image {
            background-image: url('https://i.sstatic.net/FLCha.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            position: relative;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .overlay {
            background-color: rgba(0, 0, 0, 0.5); /* Dark overlay */
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .text-content {
            z-index: 1;
            text-align: center;
        }

        .heading {
            font-size: 3rem;
            font-weight: 700;
        }

        .sub-heading {
            font-size: 1.5rem;
        }
    </style>
</head>
<body>
<div class="hero-image">
    <div class="overlay"></div>
    <div class="text-content">
        <h1 class="heading">Welcome to Our Site</h1>
        <p class="sub-heading">This is a subheading text for the hero section.</p>
        <button class="btn btn-primary btn-lg">Learn More</button>
    </div>
</div>

<!-- Bootstrap JS and Popper.js (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz4fnFO9gyb6Z4F6Vt23KvQd5aNh9tO3Z5pF6dIt7pHfITPpWzYPxZ+U9Zt" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0pWjx+fdd3z0gD34qlHWR0eEdrx2FxqD3Fq05FO9qp4xuW4v" crossorigin="anonymous"></script>
</body>
</html>
