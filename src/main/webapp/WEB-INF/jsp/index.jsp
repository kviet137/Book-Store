<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="include/header.jsp"/>
<section class="bg-primary text-white text-center py-5">
    <div class="container">
        <h1 class="display-4">Welcome to Book World</h1>
        <p class="lead">Discover your next favorite read from our wide collection of books across all genres.</p>
        <a href="#" class="btn btn-light btn-lg">Learn More</a>
    </div>
</section>

    <!-- Bootstrap Carousel -->
    <div id="carouselExampleIndicators" class="carousel slide mb-5" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/025/067/762/small_2x/4k-beautiful-colorful-abstract-wallpaper-photo.jpg"
                     class="d-block w-100"
                     width="1000" height="430"
                     style="object-fit: cover;"
                     alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://i.pinimg.com/originals/68/8d/d3/688dd325dbbdc238f4b70caffe77a5af.jpg"
                     class="d-block w-100"
                     width="1000" height="430"
                     style="object-fit: cover;"
                     alt="...">
            </div>
            <div class="carousel-item">
                <img src="https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"
                     class="d-block w-100"
                     width="1000" height="430"
                     style="object-fit: cover;"
                     alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


<jsp:include page="include/footer.jsp"/>