<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Bootstrap CSS File -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style1.css" rel="stylesheet">
    <title>Artisan - Plateforme Artisanat</title>
</head>
<body id="page-top">
<!--/ Nav Star /-->
<nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav" style="background-color: black">
    <div class="container">
        <a class="navbar-brand js-scroll" href="#page-top"><span class="fa fa-paint-brush"></span> Artisan</a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll " href="Home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll active" href="AboutUs.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll " href="Artisans.jsp">Artisans</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="ContactUs.jsp">Contact Us</a>
                </li>
                <%
                    request.getSession(false);
                    //Clients client = (Clients) session.getAttribute("client");
                    if (session == null) {
                %>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="index.jsp">Sign Up</a>
                </li>
                <%
                } else {
                %>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="LogOut">Log Out</a>
                </li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
</nav>
<!--/ Nav End /-->
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="img/bg.jpg"
                 alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="img/bg1.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="img/asian-market-of-bamboo-and-wicker-baskets.jpg"
                 alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<hr>
<section class="w3l-wecome-content-6">
    <div class="ab-content-6-mian py-5">
        <div class="container py-lg-5">
            <div class="welcome-grids row">
                <div class="col-lg-6 mb-lg-0 mb-5">
                    <h3 class="hny-title">
                        About Our Artisan<span style="color:#be3131 ">Store</span></h3>
                    <p class="my-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat
                        eu ullamcorper. Nunc id ipsum fringilla,
                        gravida felis vitae. Phasellus lacinia id, sunt in culpa quis. Phasellus lacinia</p>
                    <p class="mb-4">Excepteur sint occaecat non proident, sunt in culpa quis. Phasellus lacinia id erat
                        eu ullamcorper. Nunc id ipsum fringilla.</p>
                    <div class="read">
                        <a href="Home.jsp" class="btn btn-outline-danger">Shop Now</a>
                    </div>
                </div>
                <div class="col-lg-6 welcome-image">
                    <img src="img/bg2.jpg" class="img-fluid" alt=""/>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="specification-6-mian py-5">
    <div class="container py-lg-5" style="background: whitesmoke">
        <div class="row story-6-grids text-left">
            <div class="col-lg-5 story-gd">
                <img src="img/bg3.jpg" class="img-fluid" alt="/">
            </div>
            <div class="col-lg-7 story-gd pl-lg-4">
                <h3 class="hny-title">What We <span style="color:#be3131 ">Offer</span></h3>
                <p>Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi
                    consequatur saepe blanditiis.Lorem ipsum dolor sit amet,Ea consequuntur illum facere aperiam
                    sequi optio consectetur adipisicing elit. Fuga, suscipit totam animi consequatur saepe
                    blanditiis.</p>

                <div class="row story-info-content mt-md-5 mt-4">

                    <div class="col-md-6 story-info">
                        <h5><a href="#">01. Visit Store</a></h5>
                        <p>Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi
                            consequatur.</p>
                    </div>
                    <div class="col-md-6 story-info">
                        <h5 ><a href="#">02. Add To Cart</a></h5>
                        <p>Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi
                            consequatur.</p>
                    </div>
                    <div class="col-md-6 story-info">
                        <h5><a href="#">03. Gift Cards</a></h5>
                        <p>Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi
                            consequatur.</p>
                    </div>
                    <div class="col-md-6 story-info">
                        <h5><a href="#">04. Unique shop</a></h5>
                        <p>Lorem illum facere aperiam sequi optio consectetur adipisicing elitFuga, suscipit totam animi
                            consequatur.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<section class="paralax-mf footer-paralax bg-image sect-mt4 route" style="background-image: url(img/overlay-bg.jpg)">
    <div class="overlay-mf"></div>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="copyright-box">
                        <p class="copyright">
                            &copy; Copyright <strong>Artisan</strong>. All Rights
                            Reserved
                        </p>
                        <div class="credits">
                            Designed by
                            <a href="#">Artisan</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</section>

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
</body>
</html>
