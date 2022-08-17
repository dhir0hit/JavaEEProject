<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<style>


    .side h2 {
        margin-left: 10%;
    }
    body{
        font-family: Cambria;
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
    .intro{
        font-family:Cambria ;
        text-align: center;
        font-size: x-large;


    }

    .para{
        font-size: medium;

    }
    .about_details {
        display: flex;
        flex-direction: row;
        justify-content: center;
        flex-wrap: wrap;
        gap:200px;
        border-bottom: 2px solid white;
    }
    .about_details .data {
        /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); */
        display: flex;
        flex-direction: column;
        justify-content: center;
        flex-wrap: wrap;
        height:500px ;
        width: 400px;

        text-align: center;

    }
    .about_2 {
        display: flex;
        flex-direction: row;
        justify-content: center;
        flex-wrap: wrap;
        gap:200px;
        border-bottom: 2px solid rgb(255, 255, 255);


    }
    .about_2 .data_2 {
        /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); */

        flex-direction: column;
        justify-content: center;
        flex-wrap: wrap;
        height:500px ;
        width: 400px;

        text-align: center;


    }
    .about_3 {
        display: flex;
        flex-direction: row;
        justify-content: center;
        flex-wrap: wrap;
        gap:200px;
        border-bottom: 8px solid rgb(255, 255, 255);


    }
    .about_3 .data_3 {
        /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); */


        flex-direction: column;
        justify-content: center;
        flex-wrap: wrap;
        height:500px ;
        width: 400px;

        text-align: center;


    }
    .about_4 {
        display: flex;
        flex-direction: row;
        justify-content: center;
        flex-wrap: wrap;
        gap:200px;
        border-bottom: 2px solid rgb(255, 255, 255);


    }
    .about_4 .data_4 {
        /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); */

        flex-direction: column;
        justify-content: center;
        flex-wrap: wrap;
        height:500px ;
        width: 400px;

        text-align: center;


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
                <a href="#" class="nav-item nav-link active"><i class="fa fa-home"></i><span>Home</span></a>
                <a href="#" class="nav-item nav-link"><i class="fa fa-users"></i><span>About</span></a>
                <a href="#" class="nav-item nav-link"><i class="fa fa-envelope"></i><span>Contact</span></a>

                <div class="nav-item dropdown">
                    <a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action"><img src="Images/bg.jpg" class="avatar" alt="Avatar"> Login <b class="caret"></b></a>
                    <!--Will Show Username Name Here When Login Otherwise Login Button-->
                    <div class="dropdown-menu">
                        <!--Will Only Show This option  when the person login-->
                        <a href="GAME/user.html" class="dropdown-item"><i class="fa fa-user-o"></i> Profile</a>

                        <div class="divider dropdown-divider"></div>
                        <a href="#" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>

</main>

<div class = intro>
    <h2>INTRODUCTION</h2>
</div>
<div class=" para">
    <p>The quiz games for kids below is a combination of fun and learning. Children will be tested with their knowledge skills for kids activities like never before including fascinating graphics and animations. You’ll find fun quizzes for kids covering majority of the educational categories. You may opt any of the one below to test and enhance your child’s learning skills. The aim is to earn the highest score. Play again until you succeed to achieve it. You don’t have to search further more for trivia games online free because we bring you with the most amazing, fun and educational kid’s trivia games free. Quizzes allow you to explore and be confident with your answers to the questions asked. We offer educational quiz game for children of all ages including toddlers, kindergarten and preschool children. Our quiz for kids online section is not just limited to the lessons from school or science and mathematics. It is enormous in terms of learning. Your child can play it over and over again to reach their goal score. The online trivia for kids will enhance your learning and improve confidence to select the best out of all. Our ultimate goal is to make this range of quiz games for kids beneficial in terms of education.
        The Learning App offers - learning apps for kids, discounted apps, fun educational games, printables for kids, free worksheets for kids and so much more.

        The learning apps is a center of online learning apps for kids for kids of all ages including girls and boys, toddlers, kindergartners, preschoolers, homeschoolers as well as adults including parents, teachers and students who enjoy fun educational games, discounted apps, learning apps for kids, printables for kids, free worksheets for kids and so much more. Choose from a wide range of best educational apps and start learning. The learning apps work perfectly on iPhones, iPads, android devices and on desktop. Happy learning folks!</p>
</div>

<br>
<div class="about_details">
    <div class="data">


        <img src="Images\Flashcards.JPG" alt="Flashcards" style="width:100%">
    </div>
    <div class ="data">
        <h2>Flashcards on repeat. Game modes on shuffle.</h2>
        <p>Mixed with smart Game tools, our flashcards have been helping kids ace their toughest Quizzes since 2005.</p>




    </div>
</div>
<br>


<div class="about_2">
    <div class="data_2"><br>
        <br>

        <h2>Expert solutions you can trust.</h2>
        <p>Average games show you step-by-step approaches to solve tough problems. Find solutions in 64 subjects, all written and verified by experts.</p>

    </div>
    <div class ="data_2">
        <img src="./Images/about%20page.JPG" alt="Flashcards" style="width:100%">





    </div>
</div>
<br>


<div class="about_3">
    <div class="data_3">


        <img src="Images\game%20jam.JPG" alt="" style="width:100%">
    </div>
    <div class ="data_3"><br><br>
        <h2>Whether you plan or cram, find your Game jam.</h2>
        <p>Early morning? All-nighter? With teaching methods backed by learning science, Average games is designed to save you time.

        </p>




    </div>
</div>
<br>


<div class="about_4">
    <div class="data_4"><br>
        <br>

        <h2>Millions of study sets</h2>
        <p>Find, study or create sets anywhere life takes you with the mobile app.</p>

    </div>
    <div class ="data_4">
        <img src="Images\game%20sets.JPG" alt="Flashcards" style="width:100%">





    </div>
</div>



</body>
</html>
