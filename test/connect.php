<?php

$servername = "localhost";
$username = "root";
$password = "";

$connect = new mysqli($servername,$username,$password,'test');
if(mysqli_connect_errno()){
    echo mysqli_connect_error();
}

?>

<?php

$uname = $_POST['uname'];
$psw = $_POST['psw'];


$query = "SELECT * FROM account where Emailadres ='$uname' and Wachtwoord='$psw'";


$result = $connect->query($query);

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



