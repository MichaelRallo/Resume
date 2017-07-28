<?php

function connectDB() {  
    //Connect To Database
    $dbhost = 'us-cdbr-azure-southcentral-f.cloudapp.net:3306';
    $dbuser = 'bb5f37b7fc182f';
    $dbpass = '7febe84a';
    $dbconn = mysqli_connect($dbhost, $dbuser, $dbpass);

    /* check connection */
    if (mysqli_connect_errno()) {
        printf("Connect failed: %s\n", mysqli_connect_error());
        exit();
    }


    /* change character set to utf8 */
    if (!mysqli_set_charset($dbconn, "utf8")) {
        printf("Error loading character set utf8: %s\n", mysqli_error($dbconn));
        exit();
    }

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


