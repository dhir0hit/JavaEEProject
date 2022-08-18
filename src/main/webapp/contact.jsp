<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


</head>
<style>
    * {
        margin: 0;
        padding: 0;
    }




    #service {
        margin: 34px;
        display: flex;
    }

    #service .box {
        padding: 45px;
        margin: 3px 6px;
        border-radius: 28px;
    }

    #service .box img {
        margin-top: 20px;
        height: 100px;
        margin: auto;
        display: block;
        border-radius: 200px;
    }

    #service .box p {
        font-family: sans-serif;
        text-align: center;
    }


    .center {
        text-align: center;
    }
    .header-c {
        width: 98%;
        margin-top: 5vh;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    .header-c img {
        width: 100%;
    }
    .navbar {
        color: #fff;
        background: #926dde !important;
        padding: 5px 16px;
        border-radius: 0;
        border: none;
        box-shadow: 0 0 4px rgba(0, 0, 0, .1);
    }

    .navbar img {
        border-radius: 50%;
        width: 36px;
        height: 36px;
        margin-right: 10px;
    }

    .navbar .navbar-brand {
        color: #efe5ff;
        padding-left: 0;
        padding-right: 50px;
        font-size: 24px;
        margin-left: 10%;
    }

    .navbar .navbar-brand:hover,
    .navbar .navbar-brand:focus {
        color: #fff;
    }

    .navbar .navbar-brand i {
        font-size: 25px;
        margin-right: 5px;
    }

    .navbar .nav-item i {
        font-size: 18px;
    }

    .navbar .nav-item span {
        position: relative;
        top: 3px;
    }

    .navbar .navbar-nav>a {
        color: #efe5ff;
        padding: 8px 15px;
        font-size: 14px;
    }

    .navbar .navbar-nav>a:hover,
    .navbar .navbar-nav>a:focus {
        color: #fff;
        text-shadow: 0 0 4px rgba(255, 255, 255, 0.3);
    }

    .navbar .navbar-nav>a>i {
        display: block;
        text-align: center;
    }

    .navbar .dropdown-item i {
        font-size: 16px;
        min-width: 22px;
    }

    .navbar .dropdown-item .material-icons {
        font-size: 21px;
        line-height: 16px;
        vertical-align: middle;
        margin-top: -2px;
    }

    .navbar .nav-item.open>a,
    .navbar .nav-item.open>a:hover,
    .navbar .nav-item.open>a:focus {
        color: #fff;
        background: none !important;
    }

    .navbar .dropdown-menu {
        border-radius: 1px;
        border-color: #e5e5e5;
        box-shadow: 0 2px 8px rgba(0, 0, 0, .05);
    }

    .navbar .dropdown-menu a {
        color: #777 !important;
        padding: 8px 20px;
        line-height: normal;
        font-size: 15px;
    }

    .navbar .dropdown-menu a:hover,
    .navbar .dropdown-menu a:focus {
        color: #333 !important;
        background: transparent !important;
    }

    .navbar .navbar-nav .active a,
    .navbar .navbar-nav .active a:hover,
    .navbar .navbar-nav .active a:focus {
        color: #fff;
        text-shadow: 0 0 4px rgba(255, 255, 255, 0.2);
        background: transparent !important;
    }

    .navbar .navbar-nav .user-action {
        padding: 9px 15px;
        font-size: 15px;
    }




    .navbar .navbar-nav .open .dropdown-menu {
        background: #faf7fd;
        border-radius: 1px;
        border-color: #faf7fd;
        box-shadow: 0 2px 8px rgba(0, 0, 0, .05);
    }

    .navbar .divider {
        background-color: #e9ecef !important;
    }



    @media (max-width: 1000px) {
        .navbar .navbar-nav>a>i {
            display: inline-block;
            text-align: left;
            min-width: 30px;
            position: relative;
            top: 4px;
        }
        .navbar .navbar-collapse {
            border: none;
            box-shadow: none;
            padding: 0;

        .navbar .navbar-nav {
            margin: 8px 0;
        }

    }





</style>
<body>
<main>
    <nav class="navbar navbar-expand-xl navbar-dark bg-dark">
        <a href="#" class="navbar-brand"></i>AVERAGE GAMES</a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">

            <div class="navbar-nav ml-auto">
                <a href="index.jsp" class="nav-item nav-link active"><i class="fa fa-home"></i><span>Home</span></a>
                <a href="about.jsp" class="nav-item nav-link"><i class="fa fa-users"></i><span>About</span></a>
                <a href="contact.jsp" class="nav-item nav-link"><i class="fa fa-envelope"></i><span>Contact</span></a>

                <div class="nav-item dropdown">
                    <a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action"><img src="Images/bg.jpg" class="avatar" alt="Avatar"> Login <b class="caret"></b></a>
                    <!--Will Show Username Name Here When Login Otherwise Login Button-->
                    <div class="dropdown-menu">
                        <!--Will Only Show This option  when the person login-->
                        <a href="Login.jsp" class="dropdown-item"><i class="fa fa-user-o"></i> Login</a>

                        <div class="divider dropdown-divider"></div>
                        <a href="SignUp.jsp" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Sign-In</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

</main>
<div class ="header-c">
    <img src ="Images/contact.jpg">
</div>

<section class="service">

    <!-- Heading-->
    <h1 class="h-primary center"
        style="margin-top:30px;">
        Options to Contact
    </h1>
    <div id="service">
        <div class="box">
            <img src="Images/form.png"  >
            <br>
            <p class="center">
                <b>GAME</b>
            </p>
            <br>
            <p class="center">
                People can enjoy the game and increase there IQ specially Children which will help in there mental development
            </p>

        </div>
        <div class="box">

            <img src="Images/mail.png"  >


            <br>
            <p class="center">
                <b>E-mail</b>
            </p>
            <br>


            <p class="center">
                Use this Email to send us about the problem faced if it's not a major one
            </p>
            <br>
            <p class="center">
                averagegames66@gmail.com</p>



        </div>
        <div class="box">
            <img src="Images/phone.png"  >
            <br>
            <p class="center">
                <b>Toll Free Number</b>
            </p>
            <br>
            <p class="center">
                If you face issue regarding Game just call on this toll free number
            </p>
            <br>
            <p class="center">
                Toll Free Number:+1800 200 300 400
            </p>

        </div>
    </div>
</section>

</body>

</html>
