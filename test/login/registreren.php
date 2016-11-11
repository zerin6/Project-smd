<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Inlog Pagina</title>
    <link rel="stylesheet" type="text/css" href="../styles.css"/>
</head>

<body>


<div class = "mainContainer">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <a href="../Homepage.php">Home     </a>&nbsp;
    <a href="Inloggen.php">Inloggen </a>&nbsp;
    <a href="../Contact.php">Contact   </a>&nbsp;
    <a href="../Comments/index.php">Recensie </a>&nbsp;
    <a href="logout.php"> Uitloggen</a>

    <img src="../Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />

    <form action="signup.php" method="POST">


        <label><b>First Name</b></label>
        <input type="text" placeholder="Enter First Name" name="first" required>

        <label><b>Last Name</b></label>
        <input type="text" placeholder="Enter Last Name" name="last" required>

        <label><b>Username</b></label>
        <input type="text" placeholder="Enter username" name="uid" required>

        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="pwd" required>

        <button type="submit" name="send">Registreren</button>

        <div class="container" style="background-color:#f1f1f1">
        </div>

    </form>


</body>
</html>


