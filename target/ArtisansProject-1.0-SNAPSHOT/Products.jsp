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
    <script src="https://code.iconify.design/2/2.1.1/iconify.min.js"></script>

    <!------ Include the above in your HEAD tag ---------->

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
                    <a class="nav-link js-scroll" href="AboutUs.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll " href="Artisans.jsp">Artisans</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="ContactUs.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="index.jsp">Sign Up</a>
                </li>
                &nbsp
                <li class="nav-item">
                    <button class="btn btn-outline-secondary" style="border: none"><strong> <span class="iconify" data-icon="ion:cart-outline" style="color: #FFFFFF;"></span> ( 0 )</strong> </button>
                </li>

            </ul>

        </div>

    </div>
</nav>

<!--/ Nav End /-->
<!--/ Section Portfolio Star /-->

<section id="work" class="portfolio-mf sect-pt4 route">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="title-box text-center"><br><br><br>
                    <h3 class="title-a">Our products</h3>
                    <p class="subtitle-a">Discover a set of products</p>
                    <div class="line-mf"></div>
                </div>
            </div>
        </div>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            .rate {
                float: left;
                height: 40px;
                padding: 0 10px;
            }
            .rate:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:30px;
                color:#ccc;
            }
            .rate:not(:checked) > label:before {
                content: '★ ';
            }
            .rate > input:checked ~ label {
                color: #be3131;
            }
            .rate:not(:checked) > label:hover,
            .rate:not(:checked) > label:hover ~ label {
                color: #be3131;
            }
            .rate > input:checked + label:hover,
            .rate > input:checked + label:hover ~ label,
            .rate > input:checked ~ label:hover,
            .rate > input:checked ~ label:hover ~ label,
            .rate > label:hover ~ input:checked ~ label {
                color: #be3131;
            }
        </style>
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
                                    <h2 class="w-title">Tapis d'Atlas</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Tapis marocaine</span> /
                                        <span class="w-price">1000DH</span>
                                    </div>
                                    <div class="mid-2">
                                        <div class="rate">
                                            <input type="radio" id="star5" name="rate" value="5" checked/>
                                            <label for="star5" title="text">5 stars</label>
                                            <input type="radio" id="star4" name="rate" value="4" checked/>
                                            <label for="star4" title="text">4 stars</label>
                                            <input type="radio" id="star3" name="rate" value="3" checked/>
                                            <label for="star3" title="text">3 stars</label>
                                            <input type="radio" id="star2" name="rate" value="2" />
                                            <label for="star2" title="text">2 stars</label>
                                            <input type="radio" id="star1" name="rate" value="1" />
                                            <label for="star1" title="text">1 star</label>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                            <img src="img/work-3.jpg" alt="" class="img-fluid" width="275" height="183"/>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                    <h2 class="w-title">Bindo Laro Cado</h2>
                                    <div class="w-more">
                                        <span class="w-ctegory">Web Design</span> /
                                        <span class="w-date">18 Sep. 2018</span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-14.jpg data-lightbox="gallery-mf">
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                            <img src="img/work-8.jpg.jpg" alt="" class="img-fluid"/>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                            <img src="img/work-9.jpg" alt="" class="img-fluid"/>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/work-2.jpg" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/work-2.jpg" alt="" class="img-fluid"/>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                            <img src="img/work-13.jpg" alt="" class="img-fluid"/>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                            <img src="img/work-15.jpg" alt="" class="img-fluid"/>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
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
                                        <span class="iconify" data-icon="ion:cart-outline"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ Section Portfolio End /-->
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
