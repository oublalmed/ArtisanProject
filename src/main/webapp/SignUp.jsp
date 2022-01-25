<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.example.artisansproject.Models.Products" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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

    <!-- //Custom-Stylesheet-Links -->
    <!--fonts -->
    <!-- //fonts -->
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css" type="text/css" media="all">
    <!-- //Font-Awesome-File-Links -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <!-- Libraries CSS Files -->
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <!-- Google fonts -->
    <!-- Google fonts -->
    <title>Artisan - Plateforme artisanas</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $("#Clientform").hide();
            $("#Adminform").hide();
            $("#Artisanform").hide();
            $("#admin").click(function(){
                $("#Adminform").show();
                $("#Artisanform").hide();
                $("#Clientform").hide();
            });

            $("#client").click(function(){
                $("#Clientform").show();
                $("#Adminform").hide();
                $("#Artisanform").hide();
            });
            $("#artisan").click(function(){
                $("#Artisanform").show();
                $("#Adminform").hide();
                $("#Clientform").hide();
            });
        });
    </script>
</head>
<body>
<section class="main">
    <div class="layer">

        <div class="bottom-grid">
            <div class="logo">
                <h1> <a href="Home.jsp"> Artisan</a></h1>
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
                        <a href="ContactUs.jsp" class="">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="content-w3ls">
            <div class="text-center ">
                <h2 style="color: white">Sign Up</h2>
            </div><br>
            <div class="wthree-field">
                <div class="row">
                        <div class="col-sm">
                <button type="button" class="btn btn-outline-secondary" id="client">Client</button>
                        </div>
                            <div class="col-sm">
                <button type="button" class="btn btn-outline-secondary" id="artisan">Artisan</button>
                            </div>
                </div>
            </div><BR>

            <div class="content-bottom" id="Clientform" style=" display: block;">
                <form action="RegisterClient" method="post">
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="nomcl" id="nomcl" type="text" value="" placeholder="First name " required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="prenomcl" id="prenomcl" type="text" value="" placeholder="Last name" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <div class="wthree-field">
                            <input name="agecl" id="agecl" type="date" value="" placeholder="Age" required>
                        </div>
                    </div>
                    <div class="field-group" >
                        <div class="wthree-field">
                            <input name="emailcl" id="emailcl" type="email" value="" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-phone" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="telcl" id="telcl" type="text" value="" placeholder="phone number" required>
                        </div>
                    </div>
                    <div class="field-group">
                        &nbsp &nbsp
                        <input name="sexe" id="Male" type="radio" value="Male"  required checked>  <p style="color: white">    Male</p> &nbsp &nbsp &nbsp &nbsp
                        &nbsp &nbsp <input name="sexe" id="Female" type="radio" value="Female"  required>  <p style="color: white">   Female</p>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-phone" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="Username" id="Username" type="text" value="" placeholder="Username" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-lock" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="password" id="pass" type="Password" placeholder="Password">
                        </div>
                    </div>
                    <div class="wthree-field">
                        <button type="submit" class="btn">Sign Up</button>
                    </div>
                </form>
            </div>
            <div class="content-bottom" id="Artisanform" style=" display: block;">
                <form action="RegisterArtisan" method="post">
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="nomAr" id="nomAr" type="text" value="" placeholder="First name " required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="prenomAr" id="prenomAr" type="text" value="" placeholder="Last name" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="cinAr" id="CIN" type="text" value="" placeholder="CIN" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <div class="wthree-field">
                            <input name="dateNai" id="age" type="date" value="" placeholder="Age" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <div class="wthree-field" > &nbsp
                            <select style="background: transparent;border: none;width: 98%;height: 15%;font-family: 'Times New Roman'" name="idcat">
                                <option>Selet Catégorie </option>
                                <%
                                    try{
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
                                        PreparedStatement ps = cn.prepareStatement("select * from categories");
                                        ResultSet rs = ps.executeQuery();
                                        while(rs.next()){
                                                %>
                                                <option value="<%=rs.getInt("idCat")%>" ><%=rs.getString("lebelleCat")%></option>
                                                <%
                                        }
                                    }catch (Exception E){

                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    <div class="field-group" >
                        <span class="fa fa-mail-reply" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="mailAr" id="emailAr" type="email" value="" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-phone" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="telAr" id="tel" type="text" value="" placeholder="phone number" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-lock" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="password" id="passAr" type="Password" placeholder="Password">
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-picture-o" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="ImageAr" id="Image" type="file" value="" placeholder="Image" required>
                        </div>
                    </div>
                    <div class="wthree-field">
                        <button type="submit" class="btn">Sign Up</button>
                    </div>
                </form>
            </div>
            <div class="content-bottom" id="Adminform" style=" display: block;">
                <form action="LoginServlet" method="post">
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="username" id="nom" type="text" value="" placeholder="First name " required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-user" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="username" id="prenom" type="text" value="" placeholder="Last name" required>
                        </div>
                    </div>
                    <div class="field-group" >
                        <div class="wthree-field">
                            <input name="Email" id="email" type="email" value="" placeholder="Email" required>
                        </div>
                    </div>
                    <div class="field-group">
                        <span class="fa fa-lock" aria-hidden="true"></span>
                        <div class="wthree-field">
                            <input name="password" id="myInput" type="Password" placeholder="Password">
                        </div>
                    </div>
                    <div class="wthree-field">
                        <button type="submit" class="btn">Sign Up</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</section>
</body>
</html>
