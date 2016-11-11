<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "test";

$connect = mysqli_connect(@$dbhost,$dbuser,$dbpass,$dbname);
if(mysqli_connect_errno()){
    die("Database connection failed: " .
    mysqli_connect_errno() .
    " (" . mysqli_connect_errno() . ")"
    );
}

?>

<?php

$query = "SELECT * ";
$query .="FROM account";



$result = mysqli_query($connect, $query);
if (!$result) {
    die("Database query failed");
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>php mysqli</title>
</head>
<body>
<?php
while($row = mysqli_fetch_row($result)) {
    var_dump($row);
    echo "<hr />";
}
?>
<?php
mysqli_close($connect)
?>
</body>
</html>


