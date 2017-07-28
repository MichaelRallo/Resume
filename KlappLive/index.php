<!DOCTYPE html>
<?php 
session_start();
include("secure/database.php");
$dbconn = connectDB();            
?>
<html>
<head>
<title>Page Title</title>
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/main.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div id="header-wrapper" class="container-fluid">
        <div id="header" class="container no-padding">
            <div id="logo-container" class="col-lg-7 col-md-7 col-sm-7 col-xs-7 no-padding no-margin">
                <a href="index.php"><img class="img-responsive" src="images/flag.png" height="150px" width="100px" style="z-index: 1;"></a>
                <a href="index.php" id="logo-text">Korean Learning Service</a>
            </div>
            <div id="navigation-list" class="col-lg-5 col-md-5 col-sm-5 col-xs-5 no-padding no-margin">
                <ul id="main-navigation-list" class="no-margin no-padding">
                    <li><a href="practice.php">Start Practice</a></li>   
                    <?php 
                    if(isset($_SESSION['username'])){
                        printf("<li style='cursor:default'><a>Logged in As: %s</a></li>", $_SESSION['username']);
                        printf("<li><a href='php/logoutUser.php'>Logout</a></li>");
                    }else{
                        printf("<li><a href='login.php'>Login<span class=\"sr-only\">(current)</span></a></li>");
                        printf("<li><a href='register.php'>Register</a></li>");
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>
    <div style="background-color:#F3F3F3;margin: 50px auto;padding-bottom: 50px;" class="container">
        <h3>Welcome to the Korean Learning Service.</h3>
        <h4>This service is created for self-teaching and self-learning.</h4>    
        <p>This application is designed for users to practice korean words that they want to learn. Users have the ability to add and remove words as desired. Default words are provided, however they may not be removed. Words that a user adds in are private only to that user, different accounts may have different words.</p>    
        <p>This is a simple application not intended for full purpose learning, but rather to demonstrate how to create a web-service with an MVC approach. However, this service is extremely useful for learning easy phrases in Korean. Enjoy ! :)</p>    
        <img class="img-responsive" src="images/alphabet.gif" style="margin-top: 30px;">     
    </div>
    
</body>
</html>





















































