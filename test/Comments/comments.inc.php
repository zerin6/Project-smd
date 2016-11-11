<?php
//funcite om comments in databse
function SetComments($conn) {
 if (isset($_POST['commentSubmit'])) {
    $uid = $_POST ['uid'];
     $date = $_POST ['date'];
     $message = $_POST ['message'];
$sql = "INSERT INTO comments (uid, date, message) VALUES ('$uid', '$date', '$message')";
     $result = mysqli_query($conn, $sql);
 }
}
//comments uit databse halen zodat deze op de website komen.
function getComments($conn) {
    $sql = "SELECT * FROM comments";
    $result = mysqli_query($conn, $sql);
    while ($row = $result->fetch_assoc()) {
        echo "<div class='comment-box'><p>";
        echo $row['uid']."<br>";
        echo $row['date']."<br>";
        echo nl2br($row['message']);
        echo "</p></div>";

    }

}





?>