<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="include/header.jsp"/>
<section class="bg-primary text-white text-center py-2">
    <div class="container">
        <h4 >Welcome to Book World</h4>
        <p>Discover your next favorite read from our wide collection of books across all genres.</p>
        <a href="#" class="btn btn-light mb-2">Learn More</a>
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
                <img src="../pub/images/carousel3.png"
                     class="d-block w-100"
                     width="1000" height="400"
                     style="object-fit: cover;"
                     alt="...">
            </div>
            <div class="carousel-item">
                <img src="../pub/images/carousel1.png"
                     class="d-block w-100"
                     width="1000" height="400"
                     style="object-fit: cover;"
                     alt="...">
            </div>
            <div class="carousel-item">
                <img src="../pub/images/carousel2.png"
                     class="d-block w-100"
                     width="1000" height="400"
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