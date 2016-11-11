<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <style>
        label{display:inline-block;width:100px;margin-bottom:10px;}
    </style>


    <title>Add Employee</title>
</head>
<body>
<form action="login.php" method="POST">
    <input type="text" placeholder="uid" name="uid" required><br/>
    <input type="password" placeholder="Password" name="pwd" required><br/>
    <button type="submit" name="send">LOGIN</button>
    <br/>
    <br/>
</form>
<?php
if (isset($_SESSION['id'])){
    echo $_SESSION['id'];
} else {
    echo "NIET";
}
?>

<form action="signup.php" method="POST">
    <input type="text" placeholder="First Name" name="first" required> <br/>
    <input type="text" placeholder="Last Name" name="last" required><br/>
    <input type="text" placeholder="uid" name="uid" required><br/>
    <input type="password" placeholder="Password" name="pwd" required><br/>
    <button type="submit" name="send">Sign up</button>
</form>



</body>
</html>