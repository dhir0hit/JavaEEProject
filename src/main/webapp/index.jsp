<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>
    * {
        font-family: Cambria;
        box-sizing: border-box;
    }

    .bg {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
        background-image: url(Images/bg.jpg);
        background-repeat: no-repeat;
        background-size: cover;
        /* background-position: center; */
    }

    .side h2 {
        margin-left: 10%;
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

    .center {
        justify-content: center;
        background-color: #fff;
        height: 300px;
        border-radius: 50%;
        -webkit-border-radius: 40%;
        padding: 2rem;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        border: 3rem solid #926dde;
    }

    .main_body {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        border-radius: 40%;
        -webkit-border-radius: 40%;
    }

    .center h3 {
        text-align: center;
        font-size: 38px;
    }

    .center button {
        justify-content: center;
    }

    .btn-1 {
        background-color: #926dde;
        border: none;
        color: white;
        padding: 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 12px;
    }

    @media (min-width: 1001px) {
        .form-inline .input-group {
            width: 350px;
            margin-left: 30px;
        }
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
        }

        .navbar .navbar-nav {
            margin: 8px 0;
        }

    }
</style>

<body>


<div class="bg">
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
                        <a href="Login" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action"><img src="Images/bg.jpg" class="avatar" alt="Avatar"> Login <b class="caret"></b></a>
                        <!--Will Show Username Name Here When Login Otherwise Login Button-->
                        <div class="dropdown-menu">
                            <!--Will Only Show This option  when the person login-->
                            <a href="" class="dropdown-item"><i class="fa fa-user-o"></i> Profile</a>

                            <div class="divider dropdown-divider"></div>
                            <a href="Login" class="dropdown-item"><i class="fa fa-user-o"></i>Login</a>

                            <div class="divider dropdown-divider"></div>
                            <a href="SignUp.jsp" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Sign-In</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

    </main>

    <div class="triangle main_body">
        <div class="center">
            <h3> Start The Quiz</h3>
            <br/>
            <a href="Quiz" class="btn-1" style="text-decoration: none
">Start</a>
        </div>
    </div>
</div>
</body>
</html>