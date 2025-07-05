<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital Management System</title>
<%@ include file="components/allCss.jsp" %>
<style>
body {
    background-color: #f4f9ff;
    font-family: 'Segoe UI', sans-serif;
}

.paint-card {
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    border-radius: 15px;
    border: none;
    transition: transform 0.3s ease-in-out;
}
.paint-card:hover {
    transform: translateY(-5px);
}

.btn-custom {
    background-color: #007bff;
    color: white;
    border-radius: 25px;
    padding: 8px 25px;
    transition: background-color 0.3s;
    text-decoration: none;
    display: inline-block;
}
.btn-custom:hover {
    background-color: #0056b3;
    color: white;
}
</style>
</head>
<body>

<%@ include file="components/navBar.jsp" %>

<!-- Carousel -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/benyamin-bohlouli.jpg" class="d-block w-100" style="height:550px; object-fit:cover;" alt="Doctor 1">
        </div>
        <div class="carousel-item">
            <img src="img/national-cancer-institute.jpg" class="d-block w-100" style="height:550px; object-fit:cover;" alt="Doctor 2">
        </div>
        <div class="carousel-item">
            <img src="img/national-cancer-institute-1c.jpg" class="d-block w-100" style="height:550px; object-fit:cover;" alt="Doctor 3">
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

<!-- Features -->
<div class="container p-3">
    <p class="text-center fs-2 fw-bold text-primary">Key Features of Our Hospital</p>
    <div class="row align-items-stretch">
        <div class="col-md-8">
            <div class="row g-3">
                <div class="col-md-6">
                    <div class="card paint-card h-100">
                        <div class="card-body">
                            <p class="fs-5 fw-bold">100% Safety</p>
                            <p>We follow international safety protocols to ensure top-level care for our patients.</p>
                            <a href="feature-details.jsp#safety" class="btn btn-custom">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card h-100">
                        <div class="card-body">
                            <p class="fs-5 fw-bold">Clean Environment</p>
                            <p>Our facilities are kept to the highest hygiene standards for patient safety.</p>
                            <a href="feature-details.jsp#clean" class="btn btn-custom">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card h-100">
                        <div class="card-body">
                            <p class="fs-5 fw-bold">Medical Research</p>
                            <p>We continuously invest in research to provide the most advanced treatments.</p>
                            <a href="feature-details.jsp#research" class="btn btn-custom">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card paint-card h-100">
                        <div class="card-body">
                            <p class="fs-5 fw-bold">Friendly Doctors</p>
                            <p>Our team is known for expert care delivered with compassion and respect.</p>
                            <a href="feature-details.jsp#doctors" class="btn btn-custom">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex align-items-center">
            <img src="img/walter-otto.jpg" alt="Doctor Image" class="img-fluid w-100 rounded" style="object-fit: cover; height: 100%;">
        </div>
    </div>
</div>

<hr>

<!-- Our Team -->
<div class="container p-2">
    <p class="text-center fs-2 fw-bold text-success">Our Team</p>
    <div class="row justify-content-center">
        <div class="col-md-3 mb-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/couple_doctor.jpg" class="img-fluid mx-auto d-block rounded" style="height:300px; width:250px; object-fit:cover;" alt="Samuani Simi">
                    <p class="fw-bold fs-5 mt-2">Samuani Simi</p>
                    <p class="fs-6 text-muted">(CEO & Chairman)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 mb-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/lady_doctor-3.png" class="img-fluid mx-auto d-block rounded" style="height:300px; width:250px; object-fit:cover;" alt="Anjali Rao">
                    <p class="fw-bold fs-5 mt-2">Anjali Rao</p>
                    <p class="fs-6 text-muted">(Head of Research)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 mb-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/lady_doctor_4.png" class="img-fluid mx-auto d-block rounded" style="height:300px; width:250px; object-fit:cover;" alt="Priya Sharma">
                    <p class="fw-bold fs-5 mt-2">Priya Sharma</p>
                    <p class="fs-6 text-muted">(Chief Surgeon)</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 mb-3">
            <div class="card paint-card">
                <div class="card-body text-center">
                    <img src="img/couple_doctor.jpg" class="img-fluid mx-auto d-block rounded" style="height:300px; width:250px; object-fit:cover;" alt="Vivek Mehta">
                    <p class="fw-bold fs-5 mt-2">Vivek Mehta</p>
                    <p class="fs-6 text-muted">(Cardiologist)</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<%@ include file="components/footer.jsp" %>

</body>
</html>