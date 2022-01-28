<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.example.artisansproject.Models.Products" %>
<%@ page import="java.util.List" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="com.example.artisansproject.Models.Clients" %>
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
                &nbsp
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#cart" style="background: transparent;border: none;"><span class=" iconify" data-icon="ion:cart-outline" style="color: white"></span>  (<span class="total-count" style="color: white"></span>)</button>
                </li>

            </ul>

        </div>

    </div>
</nav>

<!--/ Nav End /-->
<!--/ Section Portfolio Star /-->
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

        <div class="row">
            <%
                List<Products> productsList = (List<Products>) session.getAttribute("produitsList");
                System.out.println(productsList);
                for (int i = 0; i < productsList.size(); i++) {
                    String filename= Paths.get(productsList.get(i).getImagePrd()).getFileName().toString();
                    System.out.println(productsList.get(i).getImagePrd());
            %>
            <div class="col-md-4">
                <div class="work-box">
                    <a href="img/<%=filename%>" data-lightbox="gallery-mf">
                        <div class="work-img">
                            <img src="img/<%=filename%>" alt="" class="img-fluid"/>
                        </div>
                        <div class="work-content">
                            <div class="row">
                                <div class="col">
                                    <h2 class="w-title"><%=productsList.get(i).getNamePrd()%></h2>
                                    <div class="w-more">
                                        <span class="w-ctegory"><%=productsList.get(i).getLibelle()%></span> /
                                        <span class="w-price"><%=productsList.get(i).getPrice()%>DH</span>
                                    </div>
                                    <div class="mid-2">
                                        <div class="rate">
                                            <input type="radio" id="star5" name="rate" value="5" checked/>
                                            <label for="star5" title="text">5 stars</label>
                                            <input type="radio" id="star4" name="rate" value="4" checked/>
                                            <label for="star4" title="text">4 stars</label>
                                            <input type="radio" id="star3" name="rate" value="3" checked/>
                                            <label for="star3" title="text">3 stars</label>
                                            <input type="radio" id="star2" name="rate" value="2" checked/>
                                            <label for="star2" title="text">2 stars</label>
                                            <input type="radio" id="star1" name="rate" value="1" />
                                            <label for="star1" title="text">1 star</label>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="w-like">
                                       <span href="#" data-name="<%=productsList.get(i).getNamePrd()%>" data-price="<%=productsList.get(i).getPrice()%>" class="add-to-cart iconify" data-icon="ion:cart-outline" name="btn_start" value="Demarrer" onclick="demarre()"> </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</section>-->
<!-- Modal -->
<div class="modal fade " id="cart" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><span class="iconify" data-icon="ion:cart-outline"></span>   Cart</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="show-cart table">

                </table>
                <div><strong> price: <span class="total-cart"></span> MAD</strong></div><hr>
                <h6 class="chrono shine fw-light" style="color: red;"><span class="iconify" data-icon="gis:timer"></span><time id="txt" STYLE="margin-left: 10px">00:00:00</time></h6>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <a href="Cart.jsp"><button type="button" class="btn btn-danger" >Order now</button></a>
                <button type="button" class="clear-cart btn btn-success" onclick="stop()">Clear</button>
            </div>
        </div>
    </div>
</div>
<script>
    var s='0'+0,m='0'+0,h='0'+0;
    var t,j,ds=0,dh=0;
    var encours=0;
    var ms=0;

    function milis()
    {
        ms++;
        if(ms==1000) ms=0;
        document.getElementById('milis').textContent=ms;
        j=setTimeout("milis()",1);
    }

    function Count()
    {
        s++;
        if(s==60)
        {
            s=0;
            m++;
            if(m<10 && ds<10)
            {
                m="0"+m;
                ds++;
            }
            else m=m;
        }
        if(m==60)
        {
            m=0;
            h++;
            if(h<10 && dh<10)
            {
                h="0"+h;
                dh++;
            }
            else h=h;
        }

        if(s < 10) s='0'+s;
        document.getElementById('txt').textContent=h+':'+m+':'+s;
        t=setTimeout("Count()",1000);
    }

    function demarre()
    {
        if (!encours)
        {
            encours=1;
            Count();
            milis();
        }
    }
    function stop(){
        clearTimeout(t);
        clearTimeout(j);
        encours=0;
        h='0'+0;
        m='0'+0;
        s='0'+0;
        ms=0;
        document.getElementById('txt').textContent=h+':'+m+':'+s;
    }

</script>
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

<script>
    // ************************************************
    // Shopping Cart API
    // ************************************************

    var shoppingCart = (function() {

        cart = [];

        // Constructor
        function Item(name, price, count) {
            this.name = name;
            this.price = price;
            this.count = count;
        }

        // Save cart
        function saveCart() {
            sessionStorage.setItem('shoppingCart', JSON.stringify(cart));
        }

        // Load cart
        function loadCart() {
            cart = JSON.parse(sessionStorage.getItem('shoppingCart'));
        }
        if (sessionStorage.getItem("shoppingCart") != null) {
            loadCart();
        }


        // =============================
        // Public methods and propeties
        // =============================
        var obj = {};

        // Add to cart
        obj.addItemToCart = function(name, price, count) {
            for(var item in cart) {
                if(cart[item].name === name) {
                    cart[item].count ++;
                    saveCart();
                    return;
                }
            }
            var item = new Item(name, price, count);
            cart.push(item);
            saveCart();
        }
        // Set count from item
        obj.setCountForItem = function(name, count) {
            for(var i in cart) {
                if (cart[i].name === name) {
                    cart[i].count = count;
                    break;
                }
            }
        };
        // Remove item from cart
        obj.removeItemFromCart = function(name) {
            for(var item in cart) {
                if(cart[item].name === name) {
                    cart[item].count --;
                    if(cart[item].count === 0) {
                        cart.splice(item, 1);
                    }
                    break;
                }
            }
            saveCart();
        }

        // Remove all items from cart
        obj.removeItemFromCartAll = function(name) {
            for(var item in cart) {
                if(cart[item].name === name) {
                    cart.splice(item, 1);
                    break;
                }
            }
            saveCart();
        }

        // Clear cart
        obj.clearCart = function() {
            cart = [];
            saveCart();
        }

        // Count cart
        obj.totalCount = function() {
            var totalCount = 0;
            for(var item in cart) {
                totalCount += cart[item].count;
            }
            return totalCount;
        }

        // Total cart
        obj.totalCart = function() {
            var totalCart = 0;
            for(var item in cart) {
                totalCart += cart[item].price * cart[item].count;
            }
            return Number(totalCart.toFixed(2));
        }

        // List cart
        obj.listCart = function() {
            var cartCopy = [];
            for(i in cart) {
                item = cart[i];
                itemCopy = {};
                for(p in item) {
                    itemCopy[p] = item[p];

                }
                itemCopy.total = Number(item.price * item.count).toFixed(2);
                cartCopy.push(itemCopy)
            }
            return cartCopy;
        }

        // cart : Array
        // Item : Object/Class
        // addItemToCart : Function
        // removeItemFromCart : Function
        // removeItemFromCartAll : Function
        // clearCart : Function
        // countCart : Function
        // totalCart : Function
        // listCart : Function
        // saveCart : Function
        // loadCart : Function
        return obj;
    })();


    // *****************************************
    // Triggers / Events
    // *****************************************
    // Add item
    $('.add-to-cart').click(function(event) {
        event.preventDefault();
        var name = $(this).data('name');
        var price = Number($(this).data('price'));
        shoppingCart.addItemToCart(name, price, 1);
        displayCart();
    });

    // Clear items
    $('.clear-cart').click(function() {
        shoppingCart.clearCart();
        displayCart();
    });


    function displayCart() {
        var cartArray = shoppingCart.listCart();
        var output = "";
        for(var i in cartArray) {
            output += "<tr>"
                + "<td>" + cartArray[i].name + "</td>"
                + "<td>(" + cartArray[i].price + ")</td>"
                + "<td><div class='input-group'><button class='minus-item input-group-addon btn btn-primary' data-name=" + cartArray[i].name + ">-</button>"
                + "<input type='number' class='item-count form-control' data-name='" + cartArray[i].name + "' value='" + cartArray[i].count + "'>"
                + "<button class='plus-item btn btn-primary input-group-addon' data-name=" + cartArray[i].name + ">+</button></div></td>"
                + "<td><button class='delete-item btn btn-danger' data-name=" + cartArray[i].name + ">X</button></td>"
                + " = "
                + "<td>" + cartArray[i].total + "</td>"
                +  "</tr>";
        }
        $('.show-cart').html(output);
        $('.total-cart').html(shoppingCart.totalCart());
        $('.total-count').html(shoppingCart.totalCount());
    }

    // Delete item button

    $('.show-cart').on("click", ".delete-item", function(event) {
        var name = $(this).data('name')
        shoppingCart.removeItemFromCartAll(name);
        displayCart();
    })


    // -1
    $('.show-cart').on("click", ".minus-item", function(event) {
        var name = $(this).data('name')
        shoppingCart.removeItemFromCart(name);
        displayCart();
    })
    // +1
    $('.show-cart').on("click", ".plus-item", function(event) {
        var name = $(this).data('name')
        shoppingCart.addItemToCart(name);
        displayCart();
    })

    // Item count input
    $('.show-cart').on("change", ".item-count", function(event) {
        var name = $(this).data('name');
        var count = Number($(this).val());
        shoppingCart.setCountForItem(name, count);
        displayCart();
    });

    displayCart();

</script>

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
<script src="js/main.js"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="js/Cart.js"></script>
</body>
</html>
