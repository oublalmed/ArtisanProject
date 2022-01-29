<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.example.artisansproject.Models.Clients" %>
<%@ page import="com.example.artisansproject.Models.Artisans" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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

    <!-- Main Stylesheet File-->
    <link href="css/style1.css" rel="stylesheet">
</head>

<body id="page-top">
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
<!--/ Nav End /-->

<!--/ Intro Skew Star /-->
<div
        id="home"
        class="intro route bg-image"
        style="background-image: url(img/intro-bg.jpg)"
>
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
        <div class="table-cell">
            <div class="container">
                <!--<p class="display-6 color-d">Hello, world!</p>-->
                <h1 class="intro-title mb-4">Top Notch Artisans</h1>
                <p class="intro-subtitle">
                    <span class="text-slider-items">Wood work,Jewelry,Hand made carpets,Ceramic, And manymore!</span><strong
                        class="text-slider"></strong>
                </p>
                <a href="index.jsp">
                    <button id="get-started" class="btn btn-outline-danger btn-lg">Get Started</button>
                </a>&nbsp &nbsp
                <a href="Artisans.jsp">
                    <button id="discover" class="btn btn-outline-danger btn-lg">Discover</button>
                </a>
            </div>
        </div>
    </div>
</div>
<!--/ Intro Skew End /-->

<!--/ Section Portfolio Star /-->
<section id="work" class="portfolio-mf sect-pt4 route">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="title-box text-center">
                    <h3 class="title-a">Discover</h3>
                    <p class="subtitle-a">Discover a set of products</p>
                    <div class="line-mf"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-13.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-13.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Lorem impsum dolor</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-12.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-12.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Loreda Cuno Nere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-14.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-14.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Mavrito Lana Dere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-4.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-4.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Bindo Laro Cado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-5.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-5.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Lena Mado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-6.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-6.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Big Bang</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2017</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <!-- ************** -->

        <!-- Zyada start -->
        <div class="row">
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-1.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-1.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Lorem impsum dolor</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-12.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-12.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Loreda Cuno Nere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-3.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-3.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Mavrito Lana Dere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-4.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-4.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Bindo Laro Cado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-5.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-5.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Lena Mado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-6.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-6.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Big Bang</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2017</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-1.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-1.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Lorem impsum dolor</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-15.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-15.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Loreda Cuno Nere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-3.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-3.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Mavrito Lana Dere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-4.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-4.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Bindo Laro Cado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-5.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-5.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Lena Mado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-6.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-6.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Big Bang</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2017</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-1.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-1.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Lorem impsum dolor</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-13.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-13.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Loreda Cuno Nere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-3.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-3.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Mavrito Lana Dere</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-4.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-4.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Bindo Laro Cado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-5.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-5.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Lena Mado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-6.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-6.jpg" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col-sm-8">
                                    <h2 class="w-title">Studio Big Bang</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2017</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="ion-ios-plus-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Zyada End -->
</section>
<!--/ Section Portfolio End /-->

<!-- Statistics Start -->
<div
        class="section-counter paralax-mf bg-image"
        style="background-image: url(img/intro-bg.jpg)"
>
    <div class="overlay-mf"></div>
    <div class="container">
        <div class="row">
            <div class="col-sm-3 col-lg-3">
                <div class="counter-box">
                    <div class="counter-ico">
                <span class="ico-circle"
                ><i class="ion-checkmark-round"></i
                ></span>
                    </div>
                    <div class="counter-num">
                        <p class="counter">450</p>
                        <span class="counter-text">WORKS COMPLETED</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-lg-3">
                <div class="counter-box pt-4 pt-md-0">
                    <div class="counter-ico">
                <span class="ico-circle"
                ><i class="ion-ios-calendar-outline"></i
                ></span>
                    </div>
                    <div class="counter-num">
                        <p class="counter">15</p>
                        <span class="counter-text">YEARS OF EXPERIENCE</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-lg-3">
                <div class="counter-box pt-4 pt-md-0">
                    <div class="counter-ico">
                        <span class="ico-circle"><i class="ion-ios-people"></i></span>
                    </div>
                    <div class="counter-num">
                        <p class="counter">550</p>
                        <span class="counter-text">TOTAL CLIENTS</span>
                    </div>
                </div>
            </div>
            <div class="col-sm-3 col-lg-3">
                <div class="counter-box pt-4 pt-md-0">
                    <div class="counter-ico">
                        <span class="ico-circle"><i class="ion-ribbon-a"></i></span>
                    </div>
                    <div class="counter-num">
                        <p class="counter">20000</p>
                        <span class="counter-text">PRODUCTS SOLD</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Statistics End -->
<hr/>
<!--/ Section Testimonials Star /-->
<div
        class="testimonials paralax-mf bg-image"
        style="background-image: url(img/intro-bg.jpg)"
>
    <div class="overlay-mf"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 style="color: white" class="text-center intro-title">
                    Testimonials
                </h1>
                <div id="testimonial-mf" class="owl-carousel owl-theme">
                    <div class="testimonial-box">
                        <div class="author-test">
                            <img
                                    src="img/testimonial-2.jpg"
                                    alt=""
                                    class="rounded-circle b-shadow-a"
                            />
                            <span class="author">Xavi Alonso</span>
                        </div>
                        <div class="content-test">
                            <p class="description lead">
                                Curabitur arcu erat, accumsan id imperdiet et, porttitor at
                                sem. Lorem ipsum dolor sit amet, consectetur adipiscing
                                elit.
                            </p>
                            <span class="comit"><i class="fa fa-quote-right"></i></span>
                        </div>
                    </div>
                    <div class="testimonial-box">
                        <div class="author-test">
                            <img
                                    src="img/testimonial-4.jpg"
                                    alt=""
                                    class="rounded-circle b-shadow-a"
                            />
                            <span class="author">Marta Socrate</span>
                        </div>
                        <div class="content-test">
                            <p class="description lead">
                                Curabitur arcu erat, accumsan id imperdiet et, porttitor at
                                sem. Lorem ipsum dolor sit amet, consectetur adipiscing
                                elit.
                            </p>
                            <span class="comit"><i class="fa fa-quote-right"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--/ Section Blog End /-->
<hr/>
<!--/ Section Contact-Footer Star /-->
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
<!--/ Section Contact-footer End /-->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
<div id="preloader"></div>

<!-- JavaScript Libraries -->
<script src="lib/jquery/jquery.min.js"></script>
<script src="lib/jquery/jquery-migrate.min.js"></script>
<script src="lib/popper/popper.min.js"></script>
<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/counterup/jquery.waypoints.min.js"></script>
<script src="lib/counterup/jquery.counterup.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/lightbox/js/lightbox.min.js"></script>
<script src="lib/typed/typed.min.js"></script>
<!-- Contact Form JavaScript File -->
<script src="contactform/contactform.js"></script>

<!-- Template Main Javascript File -->
<script src="js/main.js"></script>
</body>
</html>
