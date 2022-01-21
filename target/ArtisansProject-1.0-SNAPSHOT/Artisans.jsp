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
<nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand js-scroll" href="#page-top"><span class="fa fa-paint-brush"></span>  Artisan</a>
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
                    <a class="nav-link js-scroll" href="AboutUs.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll active" href="Artisans.jsp">Artisans</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="ContactUs.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="index.jsp">Sign Up</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--/ Nav End /-->
<!--/ Intro Skew Star /-->
<div id="home" class="breadcrumb-bg breadcrumb-bg-about py-5" style="background-image: url(img/bg1.jpg)">
    <div class="overlay-itro"></div>
    <div class="intro-content display-table">
        <div class="table-cell">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-box text-center">
                            <h3 class="title-a">
                                Our Artisans
                            </h3>
                            <p class="subtitle-a">
                                Descovre Some Moroccan artisans.
                            </p><br>
                            <div class="line-mf"></div><BR>
                            <div class="form-group">
                                <select class="form-control" style="font-family: 'FontAwesome' , 'TATSanaChon';" name="CatArtisans">
                                    <option> Select your categorie </option>
                                    <option> Tannerie </option>
                                    <option> cuir et maroquinerie </option>
                                    <option> Le fer forgé </option>
                                    <option> La céramique et la poterie </option>
                                    <option> Les tapis marocains </option>
                                    <option> Les bijoux </option>
                                </select>
                            </div>
                            <button type="button" class="btn btn-outline-primary btn-lg" > F i l t e r </button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--/ Section Services Star /-->
<BR>
<style>
    @media (max-width: 991px)
        .w3l-headers-9 {
        }

        .w3l-headers-9 {
        }
    .w3l-teams-33-main .teams-33 {
        padding: 70px 0;
    }
    * {
        box-sizing: border-box;
    }

    div {
        display: block;
    }

    :root {
        --main-bg-color: #f8f9fa;
        --main-heading-color: #212129d6;
        --heading-color: #2c3038;
        --para-color: #555a64;
        --theme-color: #04b83a;
        --theme-red-color: #e13b3b;
        --theme-hover-color: #5bf833;
    }
    h3.heading {
        font-size: 35px;
        line-height: 40px;
        color: var(--heading-color);
        text-align: center;
        margin-bottom: 50px;
        position: relative;
    }
    h1, h2, h3, h4, h5, h6, p {
        margin: 0;
        padding: 0;
    }
    * {
        box-sizing: border-box;
    }
    h3 {
        display: block;
        font-size: 1.17em;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
    }
    body, html {
        margin: 0;
        padding: 0;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
    }

    h3.heading::after {
        content: '';
        width: 10%;
        height: 2px;
        background: var(--theme-color);
        display: block;
        left: 45%;
        position: absolute;
        bottom: -25%;
    }
    .wrapper {
        width: 80%;
        margin: 0 auto;
    }
    @media (max-width: 1080px)
        .w3l-teams-33-main .grid-col-4 {
            grid-template-columns: 1fr 1fr 1fr;
        }
        @media (max-width: 1080px)
            .w3l-teams-33-main .main-contteam-33 {
                grid-gap: 20px;
            }
            .w3l-teams-33-main .main-contteam-33 {
                grid-gap: 20px
            ;
            }
            .w3l-teams-33-main .align-center {
                text-align: center;
            }
            .w3l-teams-33-main .grid-col-4 {
                grid-template-columns: 1fr 1fr 1fr 1fr;
            }
            .w3l-headers-9 .align-center {
                text-align: center;
            }
            .w3l-headers-9 .grid-col-4 {
                grid-template-columns: 1fr 1fr 1fr 1fr;
            }
            .w3l-headers-9 .d-grid {
                display: grid;
            }
            .d-grid {
                display: grid;
            }
            * {
                box-sizing: border-box;
            }

            .div {
                display: block;
            }}}
    @media (max-width: 1280px)
        .w3l-teams-33-main .team-main-19 {
            padding-top: 2em;
        }
        .w3l-teams-33-main .team-main-19 {
            border: 1px solid rgba(130, 152, 171, 0.3);
            padding-top: 2em;
            border-radius: 4px;
        }}
    .w3l-teams-33-main .right-team-9 {
        margin-top: 20px;
    }
    @media (max-width: 1366px)
        .w3l-teams-33-main .sub-grid-33 {
            padding: 0 1em;
        }

        @media (max-width: 1440px)
            .w3l-teams-33-main .sub-grid-33 {
                padding: 0 2em;
            }
            .w3l-teams-33-main .sub-grid-33 {
                padding: 0 2em;
            }}}
    .w3l-teams-33-main p {
        font-weight: normal;
        font-size: 16px;
        line-height: 25px;
        color: var(--para-color);
        margin-top: 5px;
    }

    h1, h2, h3, h4, h5, h6, p {
        margin: 0;
        padding: 0;
    }
    @media (max-width: 1280px)
        .w3l-teams-33-main .midd-para-team {
            margin: 15px 0 40px;
        }
        .w3l-teams-33-main .midd-para-team {
            color: #999;
            line-height: 25px;
            margin-bottom: 15px;
            margin-top: 20px;
        }}
    .fa {
        display: inline-block;
        font: normal normal normal 14px/1 FontAwesome;
        font-size: inherit;
        text-rendering: auto;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
    }
    .w3l-teams-33-main a.profile {
        color: #1e9eed;
        margin-bottom: 30px;
        display: inline-block;
        border: 1px solid #1e9eed;
        padding: 10px 20px;
        border-radius: 4px;
        transition: .3s;
    }
        .w3l-teams-33-main .buttons-teams a span.fa-linkedin-square {
            color: #0077b5;
            font-size: 20px;
        }
    a {
        text-decoration: none;
    }
    .w3l-teams-33-main .buttons-teams {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        border-top: 1px solid rgba(137, 151, 163, 0.3);
    }}
    .w3l-teams-33-main .buttons-teams a {
        padding: 20px 10px;
        display: inline-block;
        background: #f8f9fa;
    }
    .w3l-teams-33-main .buttons-teams a span.fa-twitter-square {
        color: #1da1f2;
        font-size: 20px;
    }
    .w3l-teams-33-main .buttons-teams a span.fa-facebook-square {
        color: #3b5998;
        font-size: 20px;
    }
    * {
        box-sizing: border-box;
    }
    user agent stylesheet
    a:-webkit-any-link {
        color: -webkit-link;
        cursor: pointer;
        text-decoration: underline;
    }
    .w3l-teams-33-main .buttons-teams a {
        padding: 20px 10px;
        display: inline-block;
        background: #f8f9fa;
    }
    a {
        text-decoration: none;
    }

    * {
        box-sizing: border-box;
    }
    user agent stylesheet
    a:-webkit-any-link {
        color: -webkit-link;
        cursor: pointer;
        text-decoration: underline;
    }
    .w3l-teams-33-main .column-19 a img {
        border-radius: 50%;
    }
    .w3l-teams-33-main .buttons-teams a:nth-child(2) {
        border-left: 1px solid rgba(130, 152, 171, 0.3);
        border-right: 1px solid rgba(130, 152, 171, 0.3);
    }
    .w3l-teams-33-main .right-team-9 {
        margin-top: 20px;
    }
    @media (max-width: 1280px)
        .w3l-teams-33-main .midd-para-team {
            margin: 15px 0 40px;
        }

        .w3l-teams-33-main .midd-para-team {
            color: #999;
            line-height: 25px;
            margin-bottom: 15px;
            margin-top: 20px;
        }
        .w3l-teams-33-main p {
            font-weight: normal;
            font-size: 16px;
            line-height: 25px;
            color: var(--para-color);
            margin-top: 5px;
        }}
    .w3l-teams-33-main a.profile {
        color: #1e9eed;
        margin-bottom: 30px;
        display: inline-block;
        border: 1px solid #1e9eed;
        padding: 10px 20px;
        border-radius: 4px;
        transition: .3s
    }

    a {
        text-decoration: none;
    }
    a, a:hover, button {
        transition: .3s;
        font-family: inherit;
    }
</style>
<section class="w3l-teams-33-main" >
    <div class="teams-33">
        <div class="wrapper">
            <div class="d-grid grid-col-4 align-center main-contteam-33">
                <div class="team-main-19">
                    <div class="column-19">
                          <a href="Products.jsp"><img class="image" src="img/c3.jpg" alt=" "></a>
                    </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Ahmed amer</a>
                </h5>
                <p class="sm-text-33">Les tapis marocaines </p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Safi .</p>
                <a href="Products.jsp" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
    <div class="team-main-19">
        <div class="column-19">
            <a href="candidate-single.html"><img class="image" src="img/c3.jpg" alt=" "></a>
        </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Somaya alaoui</a></h5>
                <p class="sm-text-33">Les tapis marocaines</p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Rabat.</p>
                <a href="Products.jsp" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
    <div class="team-main-19">
        <div class="column-19">
            <a href="candidate-single.html"><img class="image" src="img/c3.jpg" alt=" "></a>
        </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Saad jolane</a></h5>
                <p class="sm-text-33">Tannerie</p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Laayoune.</p>
                <a href="candidate-single.html" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
    <div class="team-main-19">
        <div class="column-19">
            <a href="candidate-single.html"><img class="image" src="img/c3.jpg"
                                                 alt=" "></a>
        </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Souad taqi</a></h5>
                <p class="sm-text-33">cuir et maroquinerie</p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Casablanca</p>
                <a href="candidate-single.html" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
    <div class="team-main-19">
        <div class="column-19">
            <a href="candidate-single.html"><img class="image" src="img/c7.jpg"
                                                 alt=" "></a>
        </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Lamyae hadid</a>
                </h5>
                <p class="sm-text-33">Le fer forgé</p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Tanger</p>
                <a href="candidate-single.html" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
    <div class="team-main-19">
        <div class="column-19">
            <a href="candidate-single.html"><img class="image" src="img/c6.jpg"
                                                 alt=" "></a>
        </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Samia chakir</a></h5>
                <p class="sm-text-33">Le fer forgé</p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Agadir</p>
                <a href="candidate-single.html" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
    <div class="team-main-19">
        <div class="column-19">
            <a href="candidate-single.html"><img class="image" src="img/c1.jpg"
                                                 alt=" "></a>
        </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Mouad salili</a></h5>
                <p class="sm-text-33">La céramique et la poterie</p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Tetouan</p>
                <a href="candidate-single.html" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
    <div class="team-main-19">
        <div class="column-19">
            <a href="candidate-single.html"><img class="image" src="img/c1.jpg"
                                                 alt=" "></a>
        </div>
        <div class="right-team-9">
            <div class="sub-grid-33">
                <h5><a href="candidate-single.html" class="title-team-33">Said taqi</a></h5>
                <p class="sm-text-33">La céramique et la poterie</p>
                <p class="sub-paragraph midd-para-team"><span class="fa fa-map-marker"></span> Errachidia</p>
                <a href="candidate-single.html" class="profile">View products </a>
            </div>
            <div class="buttons-teams">
                <a href="#team"><span class="fa fa-facebook-square"></span></a>
                <a href="#team"><span class="fa fa-twitter-square"></span></a>
                <a href="#team"><span class="fa fa-linkedin-square"></span></a>
            </div>
        </div>
    </div>
</div>
        </div>
    </div>
</section>
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