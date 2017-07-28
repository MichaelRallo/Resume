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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/addwordpopup.css">
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
                        printf("<li style='cursor:default'><a>Logged in As: <span id='user-id'>%s</span></a></li>", $_SESSION['username']);
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
    
    
    
    <div id="content-container" style="background-color:#F3F3F3;margin: 50px auto;padding-bottom: 50px;" class="container">
        <div id="game-container" style="display:none;">
            <h3>Enjoy!</h3>
            <h4 id="back-to-selection">Choose Different Words</h4>
            <br><br><br>
            <div id="game-pane">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 question-container"><span id="question"></span></div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 choice-container"><span id="choice-1" class="choice"></span></div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 choice-container"><span id="choice-2" class="choice"></span></div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 choice-container"><span id="choice-3" class="choice"></span></div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 choice-container"><span id="choice-4" class="choice"></span></div>                 
            </div>
            
        </div>
        <div id="word-selection-container">
            <h3>Practice Words</h3>
            <h4>Select Your Words and Hit <span id="start-practice">Start</span> to Practice!</h4>    
            <?php 
            if(isset($_SESSION['username'])){
                printf("<a id='add-words' class='addWordsEngine_open'>Add Words!</a>");
            }else{
                printf("<p>Log in to Add Words!</p>");
            }
            ?>
            <div id="start-errors-container"></div>
            <div id="words-container"></div>
        </div>
    </div>

    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.popupoverlay.js"></script>
    

    
    
    <!-- This is the Container for the Popup when a user tries to add words -->
    <div id="addWordsContainer" aria-hidden="false">
        <!-- The Container for the Search Stuffs, you need to keep the same id/class names! -->
        <div id="addWordsEngine">
            <!-- X - Close Out of Menu -->
            <em class="fa fa-times addWordsEngine_close closeStyles" aria-hidden="true"></em>
            <h1>Add Words!</h1>
            <form id="userInformationForm" class="form-horizontal">
                <!-- Form Fields -->
                <div class="form-group">
                    <label for="username" class="col-sm-4 control-label">Korean:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control userInformationFormField" id="Korean" name="Korean" placeholder="Korean"> 
                    </div>
                </div>

                <div class="form-group">
                    <label for="password" class="col-sm-4 control-label">English:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control userInformationFormField" id="English" name="English" placeholder="English"> 
                    </div>
                </div>

                <div class="form-group">
                    <label for="text" class="col-sm-4 control-label">Pronounciation:</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control userInformationFormField" id="Pronounciation" name="Pronounciation" placeholder="Pronounciation"> 
                    </div>
                </div>

                <div class="form-group">
                    <label for="" class="col-sm-4 control-label"></label>
                    <div class="col-sm-8">
                        <input id="submitButton" class="form-control" type="button" name="submit" value="submit">
                    </div>
                </div>

            </form>
            <!-- Error Messages -->
            <p id="errors-container"></p>
        </div>
    </div>
    
    <script type="text/javascript" src="js/gameManager.js"></script>
    <script type="text/javascript" src="js/restful.js"></script>

</body>
</html>





















































