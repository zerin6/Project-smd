<?php
 	// Database connection with localhost
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "Database project";
	
	$db = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	
	if (mysqli_connect_errno()) {
		die("The connection is not succesful: " .
				  mysqli_connect_error().
				  "(".mysqli_connect_errno() . ")"
		   );
	
	}
	else echo "The connection works properly."
?>




