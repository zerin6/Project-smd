<?php
session_start();
?>

<?php
date_default_timezone_set('Europe/Amsterdam');
include 'comments.inc.php';
include 'connect.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Homepage</title>
    <link rel="stylesheet" type="text/css" href="../style2.css"/>
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
    <!--top links-->
    <a class="btn" href="../Homepage.php">Home     </a>&nbsp;
    <a class="btn" href="../login/Inloggen.php">Inloggen </a>&nbsp;
    <a class="btn" href="../Contact.php">Contact   </a>&nbsp;
    <a class="btn" href="index.php">Recensie </a>&nbsp;
    <a href="../login/logout.php"> Uitloggen</a>
    <a href="../winkelwagen/index.php"> Winkelwagen</a>

    <img src="../Kabeltrans.png" style="float: left;"> <br /><br /><br /><br /><br /><br /><br />


    <!--side menu + opmaak-->
    <ul>
        <li><a href="../bar_v2/catagorie.php">Catagorie</a></li>
        <li><a href="../bar_v2/audiokabel.php">Audiokabels</a></li>
        <li><a href="../bar_v2/tvkabel.php">TvKabels</a></li>
        <li><a href="../bar_v2/netwerkkabel.php">Netwerkkabels</a></li>
        <li><a href="../bar_v2/verlengsnoer.php">Verlengsnoeren</a></li>
        <li><a href="../bar_v2/hdmikabel.php">HDMIkabels</a></li>
        <li><a href="../bar_v2/smartphone.php">Smartphones</a></li>
        <li><a href="../bar_v2/usbkabel.php">USBkabels</a></li>
        <li><a href="../bar_v2/spelcomputer.php">Spelcomputers</a></li>
        <li><a href="../bar_v2/vastetelefoon.php">Vaste telefonie</a></li>
        <li><a href="../bar_v2/fotoencamera.php">Foto en Camera</a></li>
    </ul>
<br/>
<?php
//functie gemaakt zodat mensen alleen kunnne commente als ze logged in zijn.
if(isset($_SESSION['id'])) {
    echo "<form method='post' action='".setcomments($conn)."'>
        <input type='hidden' name='uid' value='anonymous'>
        <input type='hidden' name='date' value=".date('Y-m-d H:i:s').">
        <textarea name='message'></textarea> <br/>
        <button type='submit' name='commentSubmit'> Plaats </button> </form>";
} else {
    echo "<br><br> Je moet ingelogd zijn om te commente!";
}


getComments($conn)

?>






</body>
</html>

