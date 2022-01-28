<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.example.artisansproject.Models.Clients" %>
<%@ page import="java.util.List" %>
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
<!--/ Nav Star /-->
<nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
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
                    <a class="nav-link js-scroll active" href="Home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="AboutUs.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll " href="Artisans.jsp">Artisans</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="ContactUs.jsp">Contact Us</a>
                </li>
                <%

                    session= request.getSession();
                    List<Clients> client = (List<Clients>) session.getAttribute("ClientList");
                    if (client == null) {
                %>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="index.jsp">Sign Up</a>
                </li>
                <%
                }
                else{
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
<!--/ Nav End /--><!--/ Nav End /-->
<br><br>
<!-- contacts -->
<section class="w3l-contact-7 py-5" id="contact" >
    <div class="contacts-9 py-lg-5 py-md-4">
        <div class="container" >
            <h5 class="small">Contact Details</h5>
            <h3 class="title-big mb-4">Our Offices</h3>
            <div class="top-map">
                <div class="row map-content-9">
                    <div class="col-lg-6">
                        <img src="img/office.jpg" alt="" class="img-fluid radius-image"/>
                    </div>
                    <div class="col-lg-6 cont-details align-self mt-lg-0 mt-md-5 mt-4">
                        <address>
                            <h5 class="">Head Office</h5>
                            <p><span class="fa fa-map-marker"></span> 3 rue Ouhoud, Appartement 7, Agdal, Rabat, Maroc.
                            </p>
                            <p><a href="mailto:mail@example.com"><span class="fa fa-envelope"></span> Admin@Artisan.org</a>
                            </p>
                            <p><span class="fa fa-phone"></span><a href="tel:+1(12) 366 411 4999"> +212 66 7 32 32
                                32</a></p>
                            <h5 class="mt-4 mb-3">Business Hours</h5>
                            <p>Mon-Fri: 9:30 – 16:00</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //contacts -->
<!-- home page block1 -->
<section id="about" class="home-services py-5" style="background: white;">
    <div class="container py-lg-3">
        <div class="row">
            <div class="col-lg-4 col-sm-6">
                <div class="box-wrap">
                    <div class="box-wrap-grid">
                        <img src="img/call.png" alt=""/>
                        <div class="info">
                            <p>CALL TODAY</p>
                            <h4><a href="tel: +12 311 4567">+212 66 7 32 32 32</a></h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mt-sm-0 mt-4">
                <div class="box-wrap">
                    <div class="box-wrap-grid">
                        <img src="img/internet.png" alt=""/>
                        <div class="info">
                            <p>Visit US </p>
                            <h4><a href="tel: +12 311 4567">www.Artisan.org</a></h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 mt-lg-0 mt-4">
                <div class="box-wrap">
                    <div class="box-wrap-grid">
                        <img src="img/email.png" alt=""/>
                        <div class="info">
                            <p>EMAIL US</p>
                            <h4><a href="emailto:info@mail.com">admin@Artisan.org</a></h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<br><br>
<!-- Contact Us Area Start -->
<section class="contact--us-area section-padding-100-0">
    <div class="container">
        <div class="row">
            <!-- Contact Us Thumb -->
            <div class="col-12 col-lg-6">
                <div class="contact-us-thumb mb-100">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13233.2802575332!2d-6.8676019!3d33.9843118!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2e9c39cfa1d9e8d7!2sNational%20school%20For%20Computer%20Science!5e0!3m2!1sen!2s!4v1642292575120!5m2!1sen!2s" width="550" height="410" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                </div>
            </div>

            <!-- Contact Form -->
            <div class="col-12 col-lg-6">
                <div class="contact_from_area mb-100 clearfix">
                    <!-- Contact Heading -->
                    <div class="contact-heading">
                        <h4><strong>Contacter-Nous</strong></h4>
                        <p>envoyer nous votre message</p>
                    </div>
                    <div class="contact_form">
                        <form action="#" method="post">
                            <div class="contact_input_area">
                                <div class="row">
                                    <!-- Form Group -->
                                    <div class="col-12 col-lg-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control mb-30" name="nomUserCt" id="name" placeholder="Votre Nom" required>
                                        </div>
                                    </div>
                                    <!-- Form Group -->
                                    <div class="col-12 col-lg-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control mb-30" name="prenomUserCt" id="name-2" placeholder="Votre Prénom" required >
                                        </div>
                                    </div>
                                    <!-- Form Group -->
                                    <div class="col-12 col-lg-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control mb-30" name="emailUserCt" id="email" placeholder="E-mail" required>
                                        </div>
                                    </div>
                                    <!-- Form Group -->
                                    <div class="col-12 col-lg-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control mb-30" name="sujetCt" id="subject" placeholder="Votre Sujet" required>
                                        </div>
                                    </div>
                                    <!-- Form Group -->
                                    <div class="col-12">
                                        <div class="form-group">
                                            <textarea  class="form-control mb-30" id="message" name="messageCt" cols="30" rows="6" placeholder="Message" required></textarea>
                                        </div>
                                    </div>
                                    <!-- Button -->
                                    <div class="col-12">
                                        <button type="submit" class="btn btn-outline-danger btn-lg" name="sendMsgCt">Send Message <i class="zmdi zmdi-long-arrow-right"></i></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Us Area End -->
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
