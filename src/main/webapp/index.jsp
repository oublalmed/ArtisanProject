<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta-Tags -->
    <!-- Index-Page-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
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
    <title>Artisan - Plateforme artisanas</title>
</head>
<body>
<section class="main">
    <div class="layer">

        <div class="bottom-grid">
            <div class="logo">
                <h1> <a href="index.html"><span class="fa fa-paint-brush"></span> Artisan</a></h1>
            </div>
            <div class="links">
                <ul class="links-unordered-list">
                    <li class="active">
                        <a href="Home.jsp" class="">Home</a>
                    </li>
                    <li class="">
                        <a href="#" class="">About Us</a>
                    </li>
                    <li class="">
                        <a href="Artisans.jsp" class="">Artisans</a>
                    </li>
                    <li class="">
                        <a href="#" class="">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content-w3ls">
            <div class="text-center icon">
                <span class="fa fa-paint-brush"></span>
            </div>
            <div class="content-bottom">
                <form action="LoginServlet" method="post">
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="username" id="text1" type="text" value="" placeholder="Username" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-lock" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="password" id="myInput" type="Password" placeholder="Password">
                        </div>
                    </div>
                    <div class="wthree-field">
                        <button type="submit" class="btn">Login</button>
                    </div>
                    <ul class="list-login">
                        <li class="switch-agileits">
                            <label class="switch">
                                <input type="checkbox">
                                <span class="slider round"></span>
                                keep Logged in
                            </label>
                        </li>
                        <li>
                            <a href="#" class="text-right">forgot password?</a>
                        </li>
                        <li class="clearfix"></li>
                    </ul>
                    <ul class="list-login-bottom">
                        <li class="">
                            <a href="SignUp.jsp" class="">Create Account</a>
                        </li>
                        <li class="">
                            <a href="#" class="text-right">Need Help?</a>
                        </li>
                        <li class="clearfix"></li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>