<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.example.artisansproject.Models.Artisans" %>
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
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <!-- Main Stylesheet File -->
    <link href="css/style1.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <title>Artisan - Administration</title>
</head>
<body id="page-top">
<!--/ Nav Star /-->
<nav class="navbar navbar-b navbar-trans navbar-expand-md fixed-top" id="mainNav" style="background-color: black">
    <div class="container">
        <a class="navbar-brand js-scroll" href="#page-top"> Artisan</a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
                aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span></span>
            <span></span>
            <span></span>
        </button>
        <div class="navbar-collapse collapse justify-content-end" id="navbarDefault">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link js-scroll " href="Home.jsp">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll " href="AboutUs.jsp">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll active" href="LogOut">Admin</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<BR><BR><BR>
<!--/ Nav End /-->
<div class="card text-center" style="padding:5%;">
    <div class="card-header" style="color: #FFFFFF"><H3>
        Statistics <strong>- Artisan -</strong>
        </H3></div>
    <div class="card-body">
        <DIV class="row">
        <div class="col-sm">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Artisans</h4>
                <i class="lnr lnr-users" style="color: #be3131;font-size: 40px;"> </i>
                <h3 class="text-danger number">200 </h3>
                <a href="#" class="btn btn-outline-danger" data-toggle="modal" data-target=".bd-example-modal-lg">Go somewhere</a>
            </div>
        </div>
        </div>
        <div class="col-sm">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title ">Clients</h4>
                <i class="lnr lnr-users" style="color: #be3131;font-size: 40px;"> </i>
                <h3 class="text-danger number">275 </h3>
                <a href="#" class="btn btn-outline-danger" data-toggle="modal" data-target=".bd-ex-modal-lg">Go somewhere</a>
            </div>
        </div>
        </div>
        <div class="col-sm">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Categories</h4>
                    <i class="lnr lnr-database" style="color: #be3131;font-size: 40px;"> </i>
                    <h3 class="text-danger number">275 </h3>
                    <div class="btn-group">
                        <button type="button" class="btn btn-outline-danger">Go somewhere</button>
                        <button  class="btn btn-outline-danger dropdown-toggle dropdown-toggle-split" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                        <span class="sr-only">Toggle Dropdown</span>
                        </button>
                    <span class="sr-only ">Toggle Dropdown</span>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" data-toggle="modal" data-target="#myModal">Add categorie</a>
                        <a class="dropdown-item" data-toggle="modal" data-target=".bd-e-modal-lg">All categories</a>
                    </div>
                    </div>
                </div>
            </div>
        </div>
            <div class="col-sm">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Products</h4>
                        <i class="lnr lnr-cart" style="color: #be3131;font-size: 40px;"> </i>
                        <h3 class="text-danger number">1000 </h3>
                        <a href="#" class="btn btn-outline-danger">Go somewhere</a>
                    </div>
                </div>
            </div>
        </DIV>
    </div>
    <br>
    <div class="card-header" style="color: #FFFFFF">
        <ul class="nav nav-tabs card-header-tabs">
            <li class="nav-item">
                <a class="nav-link active " href="#"><H5>Artisans</H5></a>
            </li>
        </ul>
    </div>
    <BR>
    <div class="card-body">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">CIN </th>
                <th scope="col">First name</th>
                <th scope="col">Last name</th>
                <th scope="col">Mail</th>
                <th scope="col">Phone number</th>
                <th scope="col">Categorie</th>
            </tr>
            </thead>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
                    PreparedStatement ps = cn.prepareStatement("select * from Artisan A , Categories C where A.idCat = C.idCat");
                    ResultSet rs = ps.executeQuery();
                    while(rs.next()){
            %>
            <tbody>
            <tr class="active">
                <th scope="row"><%=rs.getInt("idArtisan")%></th>
                <td><%=rs.getString("cinArtisan")%>
                </td>
                <td><%=rs.getString("prenomArtisan")%>
                </td>
                <td><%=rs.getString("nomArtisan")%>
                </td>
                <td><%=rs.getString("mailArtisan")%>
                </td>
                <td><%=rs.getString("telArtisan")%>
                </td>
                <td><%=rs.getString("lebelleCat")%>
            </tr>
            </tbody>
            <%
                    }
                }catch (Exception E){

                }
            %>
        </table>
    </div>
    <br>
    <div class="card-header" style="color: #FFFFFF">
        <ul class="nav nav-tabs card-header-tabs">
            <li class="nav-item">
                <a class="nav-link active " href="#"><H5>Clients</H5></a>
            </li>
        </ul>
    </div>
    <BR>
    <div class="card-body">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">First name</th>
                <th scope="col">Last name</th>
                <th scope="col">Username</th>
                <th scope="col">Mail</th>
                <th scope="col">Phone number</th>
                <th scope="col">Sexe</th>
            </tr>
            </thead>
            <%
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
                    PreparedStatement ps = cn.prepareStatement("select * from client");
                    ResultSet rs = ps.executeQuery();
                    while(rs.next()){
            %>
            <tbody>
            <tr class="active">
                <th scope="row"><%=rs.getInt("idClient")%></th>
                <td><%=rs.getString("nomClient")%>
                </td>
                <td><%=rs.getString("prenomClient")%>
                </td>
                <td><%=rs.getString("Username")%>
                </td>
                <td><%=rs.getString("mailClient")%>
                </td>
                <td><%=rs.getString("telClient")%>
                </td>
                <td><%=rs.getString("sexe")%>
                </td>
            </tr>
            </tbody>
            <%
                    }
                }catch (Exception E){

                }
            %>
        </table>
    </div>
</div>
</div>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true" ID="#MyModal">
    <div class="bd-example-modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitleT">Our Artisans</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <thead class="thead-light">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">CIN </th>
                        <th scope="col">First name</th>
                        <th scope="col">Last name</th>
                        <th scope="col">Mail</th>
                        <th scope="col">Phone number</th>
                        <th scope="col">Categorie</th>
                        <th scope="col"></th>
                        <th scope="col">Actions</th>
                    </tr>
                    </thead>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
                            PreparedStatement ps = cn.prepareStatement("select * from Artisan A , Categories C where A.idCat = C.idCat");
                            ResultSet rs = ps.executeQuery();
                            Artisans artisan = new Artisans();
                            while(rs.next()){
                    %>
                    <tbody>
                    <tr>

                        <th scope="row"><%=rs.getInt("idArtisan")%></th>
                        <td><%=rs.getString("cinArtisan")%>
                        </td>
                        <td><%=rs.getString("prenomArtisan")%>
                        </td>
                        <td><%=rs.getString("nomArtisan")%>
                        </td>
                        <td><%=rs.getString("mailArtisan")%>
                        </td>
                        <td><%=rs.getString("telArtisan")%>
                        </td>
                        <td><%=rs.getString("lebelleCat")%>
                        </td>
                        <td>
                            <form method="post" action="DeleteArtisan">
                                <input type="hidden" name="idArtisan" value="<%=rs.getInt("idArtisan")%>">
                            <button type="submit" class="btn btn-danger" ><i class="fa fa-trash-o" aria-hidden="true" ></i> Delete
                            </button>
                            </form>
                        </td>
                        <td><a href="">
                            <button type="button" class="btn btn-success" ><i class="fa fa-check-square-o"
                                                                             aria-hidden="true"></i> Approuve
                            </button>
                        </a></td>
                    </tr>
                    <%
                            }
                        }catch (Exception E){

                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="modal fade bd-ex-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel1"
     aria-hidden="true">
    <div class="bd-example-modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">Our Clients</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <thead class="thead-light">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First name</th>
                        <th scope="col">Last name</th>
                        <th scope="col">Username</th>
                        <th scope="col">Mail</th>
                        <th scope="col">Phone number</th>
                        <th scope="col">Sexe</th>
                        <th scope="col">Actions</th>
                    </tr>
                    </thead>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
                            PreparedStatement ps = cn.prepareStatement("select * from client");
                            ResultSet rs = ps.executeQuery();
                            while(rs.next()){
                    %>
                    <tbody>
                    <tr>
                        <th scope="row"><%=rs.getInt("idClient")%></th>
                        <td><%=rs.getString("nomClient")%>
                        </td>
                        <td><%=rs.getString("prenomClient")%>
                        </td>
                        <td><%=rs.getString("Username")%>
                        </td>
                        <td><%=rs.getString("mailClient")%>
                        </td>
                        <td><%=rs.getString("telClient")%>
                        </td>
                        <td><%=rs.getString("sexe")%>
                        </td>
                        <td>
                            <form method="post" action="DeleteClient">
                                <input type="hidden" name="idClient" value="<%=rs.getInt("idClient")%>">
                            <button type="submit" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete
                            </button>
                            </form>
                       </td>
                    </tr>
                    <%
                            }
                        }catch (Exception E){

                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- The Modal -->
<div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Add categorie</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <form action="/AddCat" method="post">
                    <div class="row">
                        <div class="col-12 col-lg-12">
                            <div class="form-group">
                                <input type="Text" class="form-control mb-30" id="nameCat" name="nameCat"
                                       placeholder=" Name Categorie" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-danger" name="saveD">Add</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade bd-e-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel1"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitleC">Our Categories</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <thead class="thead-light">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name categorie</th>
                        <th scope="col">Actions</th>
                    </tr>
                    </thead>
                    <%
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
                            PreparedStatement ps = cn.prepareStatement("select * from categories");
                            ResultSet rs = ps.executeQuery();
                            while(rs.next()){
                    %>
                    <tbody>
                    <tr>
                        <th scope="row"><%=rs.getInt("idCat")%></th>
                        <td><%=rs.getString("lebelleCat")%>
                        </td>
                        <td>
                            <form method="post" action="DeletCat">
                            <input type="hidden" name="idCat" value="<%=rs.getInt("idCat")%>">
                            <button type="submit" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete
                            </button>
                            </form>
                        </td>
                    </tr>
                    <%
                            }
                        }catch (Exception E){

                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>
