<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>COVID 19 Worldwide</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.jpg" rel="icon">
  <link href="assets/img/apple-touch-icon1.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Selecao - v2.0.0
  * Template URL: https://bootstrapmade.com/selecao-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center  header-transparent " style="background: rgba(42, 44, 57, 0.9);">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="#header">SAY infos</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="drop-down"><a href="">Services</a>
          <ul>
              
              <li><a href="/ideaMgmt">Idea Management</a></li>
              <li class="drop-down"><a href="">Enhance Knowledge</a>
              	<ul>
              	<li><a href="enKnow/java/Java_Basics">Java</a></li>
              	<li><a href="enKnow/spring/Spring_Core">Spring</a></li>
              	<li><a href="enKnow/springAdv/Spring_Boot">Spring Advanced</a></li>
              	<li><a href="enKnow/hibernate/Hibernate_Basics">Hibernate</a></li>
              	</ul>
              </li>
              <li class="drop-down"><a href="">Covid-19 Updates</a>
              	<ul>
              	<li><a href="/indiaCovid">India & States</a></li>
              	<li><a href="/countryCovid">All Countries</a></li>
              	<li><a href="/worldCovid">Whole World</a></li>
              	</ul>
              </li>
              <li><a href="/weather">Weather Updates</a></li>
              <li><a href="/news">Latest News</a></li>
              <li><a href="/cooking">Cooking Recipes</a></li>
          </ul>
          </li>
          <li class="active"><a href="/">Home</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  
<section id="hero" class="d-flex flex-column justify-content-end align-items-center">
     <svg class="hero-waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 24 150 28 " preserveAspectRatio="none">
      <defs>
        <path id="wave-path" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z">
      </defs>
      <g class="wave1">
        <use xlink:href="#wave-path" x="50" y="3" fill="rgba(255,255,255, .1)">
      </g>
      <g class="wave2">
        <use xlink:href="#wave-path" x="50" y="0" fill="rgba(255,255,255, .2)">
      </g>
      <g class="wave3">
        <use xlink:href="#wave-path" x="50" y="9" fill="#fff">
      </g>
    </svg>
</section>

  <main id="main">

<fmt:parseNumber var = "confirmed" type = "number" value = "${covid.getConfirmed()}" />
<fmt:parseNumber var = "critical" type = "number" value = "${covid.getCritical()}" />
<fmt:parseNumber var = "deaths" type = "number" value = "${covid.getDeaths()}" />
<fmt:parseNumber var = "recovered" type = "number" value = "${covid.getRecovered()}" />

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Service</h2>
          <p>WORLDWIDE STATUS OF COVID 19</p>
        </div>
<c:if test="${confirmed!=null}">
        <div class="row">
          <div class="col-lg-6 col-md-6">
            <div class="icon-box" data-aos="zoom-in-left">
              <div class="icon"><i class="las la la-empire" style="color: #4680ff;"></i></div>
              <h4 class="title">All Confirmed Cases</h4>
              <p class="description">${confirmed}</p>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 mt-5 mt-md-0">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="100">
              <div class="icon"><i class="las la la-empire" style="color: orange;"></i></div>
              <h4 class="title">Total Critical Cases</h4>
              <p class="description">${critical}</p>
            </div>
          </div>

         
          
          <div class="col-lg-6 col-md-6 mt-5">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="300">
              <div class="icon"><i class="las la la-empire" style="color: green;"></i></div>
              <h4 class="title">Total Recoveries</h4>
              <p class="description">${recovered}</p>
            </div>
          </div>

          <div class="col-lg-6 col-md-6 mt-5">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="400">
              <div class="icon"><i class="las la la-empire" style="color: red;"></i></div>
              <h4 class="title">Total Deaths</h4>
              <p class="description">${deaths}</p>
            </div>
          </div>
          </c:if>
          <c:if test="${confirmed==null}">
          <div class="col-lg-12 col-md-6 mt-5">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="500">
              <div class="icon"><i class="las la la-empire" style="color: #4680ff;"></i></div>
              <h4 class="title"><a href="#">Sorry! No Data Available.</a></h4>
              <p class="description"></p>
            </div>
          </div>
          </c:if>
          <div class="col-lg-12 col-md-6 mt-5">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="500">
              <div class="icon"><i class="las la la-empire" style="color: blue;"></i></div>
              <h4 class="title"><a href="/indiaCovid">Get India's State Wise Update</a></h4>
              <p class="description"></p>
            </div>
          </div>
          <div class="col-lg-12 col-md-6 mt-5">
            <div class="icon-box" data-aos="zoom-in-left" data-aos-delay="500">
              <div class="icon"><i class="las la la-empire" style="color: teal;"></i></div>
              <h4 class="title"><a href="/countryCovid">Get Country Wise Updates</a></h4>
              <p class="description"></p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Services Section -->


  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>SAY infos</h3>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
      <div class="copyright">
        &copy; Copyright <strong><span>SAYinfos</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        Designed by <a href="#">Sayantan M</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/TweenMax/TweenMax.min.js"></script>
  <script src="assets/vendor/wavify/wavify.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>