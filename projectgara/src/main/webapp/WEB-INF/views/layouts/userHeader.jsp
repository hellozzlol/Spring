<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid bg-dark text-light p-0">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-map-marker-alt text-primary me-2"></small>
                    <small>123 Street, New York, USA</small>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                    <small class="far fa-clock text-primary me-2"></small>
                    <small>월 - 금 : 09.00 AM - 09.00 PM</small>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-phone-alt text-primary me-2"></small>
                    <small>+012 345 6789</small>
                </div>
                <div class="h-100 d-inline-flex align-items-center mx-n2">
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-square btn-link rounded-0" href=""><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="userHome.do" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0"><i class="fa fa-car text-primary me-2"></i>TogetherPET</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="userHome.do" class="nav-item nav-link active">Home</a>
        
                <div class="nav-item dropdown">
                    <a href="home.do" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">petInformation</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="feature.do" class="dropdown-item">반려동물동반여행</a>
                        <a href="appointment.do" class="dropdown-item">반려동물동반식당</a>
                        <a href="ourteam.do" class="dropdown-item">동물병원찾기</a>
                        <a href="testimonial.do" class="dropdown-item">장례업체찾기</a>
                        <a href="error.do" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                
                 <div class="nav-item dropdown">
                    <a href="home.do" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="feature.do" class="dropdown-item">Features</a>
                        <a href="appointment.do" class="dropdown-item">Appointment</a>
                        <a href="ourteam.do" class="dropdown-item">Our Team</a>
                        <a href="testimonial.do" class="dropdown-item">Testimonial</a>
                        <a href="error.do" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                
                 <div class="nav-item dropdown">
                    <a href="home.do" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="feature.do" class="dropdown-item">Features</a>
                        <a href="appointment.do" class="dropdown-item">Appointment</a>
                        <a href="ourteam.do" class="dropdown-item">Our Team</a>
                        <a href="testimonial.do" class="dropdown-item">Testimonial</a>
                        <a href="error.do" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                
                 <div class="nav-item dropdown">
                    <a href="home.do" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="feature.do" class="dropdown-item">Features</a>
                        <a href="appointment.do" class="dropdown-item">Appointment</a>
                        <a href="ourteam.do" class="dropdown-item">Our Team</a>
                        <a href="testimonial.do" class="dropdown-item">Testimonial</a>
                        <a href="error.do" class="dropdown-item">404 Page</a>
                    </div>
                </div>
                <a href="contact.do" class="nav-item nav-link">Contact</a>
                <a href="main.do" class="nav-item nav-link">MY PAGE</a>
            </div>
            
        </div>
    </nav>
    <!-- Navbar End -->
</body>
</html>