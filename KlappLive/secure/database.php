<?php

function connectDB() {  
    //Connect To Database
    $dbhost = 'us-cdbr-azure-southcentral-f.cloudapp.net:3306';
    $dbuser = 'bb5f37b7fc182f';
    $dbpass = '7febe84a';
    $dbconn = mysqli_connect($dbhost, $dbuser, $dbpass);
    
    if(!$dbconn){
      die('Could not connect: ' . mysql_error());
    }

    mysql_set_charset('utf8', $dbconn);
    return $dbconn;
}

function secureMe(){
 	//Check if using secured https
	if(!isset($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == ""){
		$redirect = "https://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		header("HTTP/1.1 301 Moved Permanently");
		header("Location: $redirect");
    }
}

    
?>


