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
    <?php
    $cid = $_POST['cid'];
    $uid = $_POST['uid'];
    $date = $_POST['date'];
    $message = $_POST['message'];



        echo "<form method='post' action='".editcomments($conn)."'>
        <input type='hidden' name='cid' value='".$cid."'>
        <input type='hidden' name='uid' value='".$uid."'>
        <input type='hidden' name='date' value=".$date.">
        <textarea name='message' >".$message."</textarea> <br/>
        <button type='submit' name='commentSubmit'> Edit </button> 
        </form>";


    function editcomments($conn) {
        if (isset($_POST['commentSubmit'])) {
            $cid = $_POST ['uid'];
            $date = $_POST ['date'];
            $message = $_POST ['message'];

            $sql = "UPDATE comments SET message= '$message' WHERE cid ='$cid'";
            $result = mysqli_query($conn, $sql);
            header("Location: index.php");
        }
    }
    ?>






</body>
</html>

