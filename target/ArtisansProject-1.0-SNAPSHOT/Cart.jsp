<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.example.artisansproject.Models.Artisans" %>
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
    <!-- //fonts -->
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->

    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css?family=Quattrocento+Sans:400,400i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">
    <!-- Google fonts -->
    <!-- Main Stylesheet File -->
    <link href="css/style1.css" rel="stylesheet">
    <title>Artisan - Plateforme Artisanat</title>
</head>

<body id="page-top">
<!--/ Nav Star /-->
<nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav" style="background: black">
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
                    <a class="nav-link js-scroll" href="AboutUs.jsp">About</a>
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
<br><br><br>
<!--/ Nav End /-->
<style>

    .clearfix {
        content: "";
        display: table;
        clear: both;
    }

    .container {
        font-family: 'Open Sans', sans-serif;
        margin: 0 auto;
        width: 980px;
    }


    /*
    Things I added
    */

    .headerCart {
        display: flex;
        flex-direction: row;

    }

    #continue-shopping {
        margin-left: auto;
        cursor: pointer;
        align-self: center;
    }

    /*End of things i added*/
    #cart {
        width: 100%;
    }

    #cart h1 {
        font-weight: 300;
    }

    #cart a {
        color: #be3131;
        text-decoration: none;

        -webkit-transition: color .2s linear;
        -moz-transition: color .2s linear;
        -ms-transition: color .2s linear;
        -o-transition: color .2s linear;
        transition: color .2s linear;
    }

    #cart a:hover {
        color: #000;
    }

    .product.removed {
        margin-left: 980px !important;
        opacity: 0;
    }

    .product {
        border: 1px solid #eee;
        margin: 20px 0;
        width: 100%;
        height: 195px;
        position: relative;

        -webkit-transition: margin .2s linear, opacity .2s linear;
        -moz-transition: margin .2s linear, opacity .2s linear;
        -ms-transition: margin .2s linear, opacity .2s linear;
        -o-transition: margin .2s linear, opacity .2s linear;
        transition: margin .2s linear, opacity .2s linear;
    }

    .product img {
        width: 100%;
        height: 100%;
    }

    .product header, .product .content {
        background-color: #fff;
        border: 1px solid #ccc;
        border-style: none none solid none;
        float: left;
    }

    .product header {
        background: #000;
        margin: 0 1% 20px 0;
        overflow: hidden;
        padding: 0;
        position: relative;
        width: 24%;
        height: 195px;
    }

    .product header:hover img {
        opacity: .7;
    }

    .product header:hover h3 {
        bottom: 73px;
    }

    .product header h3 {
        background: #be3131;
        color: #fff;
        font-size: 22px;
        font-weight: 300;
        line-height: 49px;
        margin: 0;
        padding: 0 30px;
        position: absolute;
        bottom: -50px;
        right: 0;
        left: 0;

        -webkit-transition: bottom .2s linear;
        -moz-transition: bottom .2s linear;
        -ms-transition: bottom .2s linear;
        -o-transition: bottom .2s linear;
        transition: bottom .2s linear;
    }

    .remove {
        cursor: pointer;
    }

    .product .content {
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 140px;
        padding: 0 20px;
        width: 75%;
    }

    .product h1 {
        color: #be3131;
        font-size: 25px;
        font-weight: 300;
        margin: 17px 0 20px 0;
    }

    .product footer.content {
        height: 50px;
        margin: 6px 0 0 0;
        padding: 0;
    }

    .product footer .price {
        background: #fcfcfc;
        color: #000;
        float: right;
        font-size: 15px;
        font-weight: 300;
        line-height: 49px;
        margin: 0;
        padding: 0 30px;
    }

    .product footer .full-price {
        background: #be3131;
        color: #fff;
        float: right;
        font-size: 22px;
        font-weight: 300;
        line-height: 49px;
        margin: 0;
        padding: 0 30px;

        -webkit-transition: margin .15s linear;
        -moz-transition: margin .15s linear;
        -ms-transition: margin .15s linear;
        -o-transition: margin .15s linear;
        transition: margin .15s linear;
    }

    .qt, .qt-plus, .qt-minus {
        display: block;
        float: left;
    }

    .qt {
        font-size: 19px;
        line-height: 50px;
        width: 70px;
        text-align: center;
    }

    .qt-plus, .qt-minus {
        background: #fcfcfc;
        border: none;
        font-size: 30px;
        font-weight: 300;
        height: 100%;
        padding: 0 20px;
        -webkit-transition: background .2s linear;
        -moz-transition: background .2s linear;
        -ms-transition: background .2s linear;
        -o-transition: background .2s linear;
        transition: background .2s linear;
    }

    .qt-plus:hover, .qt-minus:hover {
        background: #be3131;
        color: #fff;
        cursor: pointer;
    }

    .qt-plus {
        line-height: 50px;
    }

    .qt-minus {
        line-height: 47px;
    }

    #site-footer {
        margin: 30px 0 0 0;
    }

    #site-footer {
        padding: 40px;
    }

    #site-footer h1 {
        background: #fcfcfc;
        border: 1px solid #ccc;
        border-style: none none solid none;
        font-size: 24px;
        font-weight: 300;
        margin: 0 0 7px 0;
        padding: 14px 40px;
        text-align: center;
    }

    #site-footer h2 {
        font-size: 24px;
        font-weight: 300;
        margin: 10px 0 0 0;
    }

    #site-footer h3 {
        font-size: 19px;
        font-weight: 300;
        margin: 15px 0;
    }

    .left {
        float: left;
    }

    .right {
        float: right;
    }

    .btn {
        background: #be3131;
        border: 1px solid #999;
        border-style: none none solid none;
        cursor: pointer;
        display: block;
        color: #fff;
        font-size: 20px;
        font-weight: 300;
        padding: 16px 0;
        width: 290px;
        text-align: center;

        -webkit-transition: all .2s linear;
        -moz-transition: all .2s linear;
        -ms-transition: all .2s linear;
        -o-transition: all .2s linear;
        transition: all .2s linear;
    }

    .btn:hover {
        color: #fff;
        background: #be3131;
    }

    .type {
        background: #fcfcfc;
        font-size: 13px;
        padding: 10px 16px;
        left: 100%;
    }

    .type, .color {
        border: 1px solid #ccc;
        border-style: none none solid none;
        position: absolute;
    }

    .color {
        width: 40px;
        height: 40px;
        right: -40px;
    }

    .red {
        background: #cb5a5e;
    }

    .yellow {
        background: #f1c40f;
    }

    .blue {
        background: #3598dc;
    }

    .minused {
        margin: 0 50px 0 0 !important;
    }

    .added {
        margin: 0 -50px 0 0 !important;
    }
</style>
<div class="container">
    <div class="row">
        <div class="col">
            <section id="cart" style="padding: 5%;padding-left: 10px;">
                <article class="product">
                    <header>
                        <a class="remove">
                            <img src="img/work-14.jpg" alt="">
                            <h3>Remove <span class="fa fa-trash-o" aria-hidden="true"></span></h3>
                        </a>
                    </header>

                    <div class="content">
                        <h1>tapis blanc</h1>
                        <p>
                            Description
                        </p>
                    </div>

                    <footer class="content">
                        <span class="qt-minus">-</span>
                        <span class="qt" style="color: #000;">1</span>
                        <span class="qt-plus">+</span>

                        <h2 class="full-price">
                            2000 MAD
                        </h2>

                        <h2 class="price">
                            2000 MAD
                        </h2>
                    </footer>
                </article>
                <article class="product">
                    <header>
                        <a class="remove">
                            <img src="img/work-14.jpg" alt="">
                            <h3>Remove <span class="fa fa-trash-o" aria-hidden="true"></span></h3>
                        </a>
                    </header>

                    <div class="content">

                        <h1>tapis berbére</h1>

                        <p>
                            Description
                        </p>
                    </div>

                    <footer class="content">
                        <span class="qt-minus">-</span>
                        <span class="qt" style="color: #000;">1</span>
                        <span class="qt-plus">+</span>

                        <h2 class="full-price">
                            1600 MAD
                        </h2>

                        <h2 class="price">
                            1600 MAD
                        </h2>
                    </footer>
                </article>
            </section>
        </div>
        <div class="col">
            <div class="container clearfix">
                <div class="right">
                    <h1 class="total">Total: <span>3600</span>MAD</h1>
                    <HR>
                    <button class="btn btn-outline-danger">Checkout</button>
                </div>

            </div>
        </div>
    </div>
</div>
<br><br>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/cartScript.js"></script>
</body>
</html>
