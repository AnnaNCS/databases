<?php

function OpenCon()
 {
 # $dbhost = 'localhost';
 $dbuser = 'root';
 $dbpass = '';
 $db = 'university';
 $conn = new mysqli('localhost', $dbuser, $dbpass, $db) or die("Unable to connect". $conn -> error);

 echo "Loaded.";
 
 return $conn;
 }

function CloseCon($conn)
 {
 $conn -> close();
 }

?>
