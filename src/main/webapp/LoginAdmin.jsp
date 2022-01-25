
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>

<head>
    <title>Login Admin  </title>
    <!-- Meta-Tags -->
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
    <!-- Stylesheets -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/LoginStyle.css">
    <!--// Stylesheets -->
    <!--fonts-->
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
    <!--//fonts-->
</head>

<body style="background: url(img/bg1.jpg) no-repeat center">
<h1><strong></strong></h1>
<div class="clear-loading spinner">
    <span></span>
</div>
<div class="ls-login box box--big">
    <!-- form starts here -->
    <form action="LoginAdmin" method="post">
        <div class="agile-field-txt">
            <label><i class="fa fa-user" aria-hidden="true"></i> Username </label>
            <input type="text" name="nameAdmin" placeholder="Enter User Name" required=""/>
        </div>
        <div class="agile-field-txt">
            <label><i class="fa fa-unlock-alt" aria-hidden="true"></i> password </label>
            <input type="password" name="passwordAdmin" placeholder="Enter Password" required="" id="myInput" />
            <div class="agile_label">
                <input id="check3" name="check3" type="checkbox" value="show password" onclick="myFunction()">
                <label class="check" for="check3">Show password</label>
            </div>
            <div class="agile-right">
                <a href="#">forgot password?</a>
            </div>
        </div>
        <!-- script for show password -->
        <script>
            function myFunction() {
                var x = document.getElementById("myInput");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
        </script>
        <!-- //end script -->
        <input type="submit" value="LOGIN">
    </form>
</div>
<!-- //form ends here -->
</body>
</html>

