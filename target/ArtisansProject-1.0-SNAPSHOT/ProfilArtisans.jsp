<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.example.artisansproject.DAO.ArtisansDaoImp" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.artisansproject.Models.Artisans" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.artisansproject.Models.Products" %>
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
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Main Stylesheet File -->
    <link href="css/style1.css" rel="stylesheet">
    <title>Artisan - Plateforme Artisanat</title>
</head>
<body id="page-top">
<!--/ Nav Star /-->
<%
    List<Artisans> artisansList = (List<Artisans>) session.getAttribute("artisansList");
    for (int i = 0; i < artisansList.size(); i++) {
%>
<nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav" style="background-color: transparent">
    <div class="container">
        <a class="navbar-brand js-scroll" href="Home.jsp"><span class="fa fa-paint-brush"></span> Artisan</a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll active"
                       href="#"><%=artisansList.get(i).getNomArtisan() + " " + artisansList.get(i).getPrenomArtisan() %>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll" href="LogOut">Log out</a>
                </li>

            </ul>
        </div>
    </div>
</nav>
<!--/ Nav End /-->
<section class="w3l-employer-detail-banner"
         style="background: url(img/asian-market-of-bamboo-and-wicker-baskets.jpg) no-repeat 0px 0px;background-size: cover;position: relative;z-index: 1;padding-left: 10%">
    <div class="wrapper">
        <div class="d-grid employer-grid"
             style="padding-top: 200px;padding-bottom: 20px;display: grid;grid-template-columns: auto auto 1fr;grid-gap: 20px;display: grid;">
            <div class="employer-title">
                <img src="img/c2.jpg" class="img-responsive" alt=""
                     STYLE="border-radius: 50%;border: 5px solid #fcfcfc;padding: 0px;margin-bottom: -120px;width:170px"/>
            </div>

            <div class="employer-name" STYLE="display: grid;align-content: end;">
                <h4 style="font-size: 30px;color: #fff;line-height: 35px;font-weight: 300;"><%=artisansList.get(i).getNomArtisan() + " " + artisansList.get(i).getPrenomArtisan() %>
                </h4>
                <p style="font-size: 16px;color: #eee;line-height: 25px;"><%=artisansList.get(i).getLibelleCat()%>
                </p>
            </div>
            <div class="employer-apply"
                 style="text-align: right;display: grid;align-content: end;grid-template-columns: auto auto auto;justify-content: end;grid-gap: 5px;padding-right: 10%">
                <a href="#facebook" class="facebook"
                   style="color: #3b5998;font-size: 30px;margin-left: 10px;position: relative;">
                    <span class="fa fa-facebook-official"
                          style="display: inline-block;font: normal normal normal 14px/1 FontAwesome;font-size: inherit;text-rendering: auto;-webkit-font-smoothing: antialiased;"></span>
                </a>
                <a href="#facebook" class="twitter"
                   style="color: #1da1f2;font-size: 30px;margin-left: 10px;position: relative;">
                    <span class="fa fa-twitter-square" style="display: inline-block;
                font: normal normal normal 14px/1 FontAwesome;
                font-size: inherit;
                text-rendering: auto;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;"></span> </a>
                <a href="#linkedin" class="linkedin"
                   style="color: #0077b5;font-size: 30px;margin-left: 10px;position: relative;">
                    <span class="fa fa-linkedin-square" style="display: inline-block;
                font: normal normal normal 14px/1 FontAwesome;
                font-size: inherit;
                text-rendering: auto;
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;"></span> </a>
            </div>
        </div>
    </div>
</section>
<BR><BR><BR>
<section CLASS="card" style="  margin-right: 150px;margin-left: 150px;">
    <div class="card-body">
        <h4 class="card-title">Resume</h4>
        <p class="card-text">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece
            of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin
            professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,
            from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the
            undoubtable source</p>
        <br>
    </div>
</section>
<%
    }
%>
<br>
<section CLASS="card" style="  margin-right: 150px;margin-left: 150px;">
    <div class="card-body">
        <h4 class="card-title">Products</h4>
        <p class="card-text">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece
            of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin
            professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,
            from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the
            undoubtable source</p>
        <br>
        <button type="button" class="btn btn-outline-danger btn-lg" data-toggle="modal" data-target="#myModal">Add
            product
        </button>
        &nbsp &nbsp
        <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target=".bd-example-modal-lg">Show
            products
        </button>
        <br><br>
    </div>
    <!-- The Modal -->
    <div class="modal fade" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Add products</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <form action="AddProduct" method="post">
                        <div class="row">
                            <div class="col-12 col-lg-12">
                                <div class="form-group">
                                    <input type="Text" class="form-control mb-30" id="namePrd" name="namePrd"
                                           placeholder=" Name product" required>
                                </div>
                            </div>
                            <div class="col-12 col-lg-12">
                                <div class="form-group">
                                    <textarea name="desc" rows="5" cols="57" placeholder=" Description ..."></textarea>
                                </div>
                            </div>
                            <div class="col-12 col-lg-12">
                                <div class="form-group">
                                    <input type="Text" class="form-control mb-30" id="price" name="PrixPrd"
                                           placeholder=" Price of product" required>
                                </div>
                            </div>
                            <div class="col-12 col-lg-12">
                                <div class="form-group">
                                    <input type="text" class="form-control mb-30" id="Qte" name="qtePrd"
                                           placeholder=" Quantity ">
                                </div>
                            </div>
                            <div class="col-12 col-lg-12">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="validatedCustomFile" name="chemin"
                                           required>
                                    <label class="custom-file-label" for="validatedCustomFile">Choose image...</label>
                                    <div class="invalid-feedback">Essayer d'importer un fichier</div>
                                </div>
                            </div>
                        </div>
                        <BR>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-danger" name="saveD">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle">My Products</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <thead class="thead-light">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Product name</th>
                            <th scope="col">price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <%
                            List<Products> productsList = (List<Products>) session.getAttribute("productsList");
                            for (int j = 0; j < productsList.size(); j++) {
                        %>
                        <tbody>
                        <tr>
                            <th scope="row"></th>
                            <td><%=productsList.get(j).getNamePrd()%>
                            </td>
                            <td><%=productsList.get(j).getPrice()%>
                            </td>
                            <td><%=productsList.get(j).getQte()%>
                            </td>
                            <td><a href="">
                                <button type="button" class="btn btn-danger"><i class="fa fa-trash-o"
                                                                                aria-hidden="true"></i> Delete
                                </button>
                            </a></td>
                        </tr>
                        </tbody>
                        <%
                            }
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

</section><br><br>
<section CLASS="card" style="  margin-right: 150px;margin-left: 150px;">
    <div class="card-body">
        <h4 class="card-title">Orders</h4>
        <p class="card-text">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece
            of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin
            professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur,
            from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the
            undoubtable source</p>
        <br>
        <button type="button" class="btn btn-outline-danger btn-lg" data-toggle="modal" data-target=".bd-ex-modal-lg">
            Show orders
        </button>
        <br><br>
    </div>
    <div class="modal fade bd-ex-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterT">My Orders</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table class="table">
                        <thead class="thead-light">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Product name</th>
                            <th scope="col">price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Facture</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row"></th>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
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


</body>
</html>

