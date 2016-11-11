
<?php
session_start();

require('dbh.php');
$firstname = $_POST['Voornaam'];
$lastname = $_POST['Achternaam'];
$email = $_POST['Emailadres'];
$subject = $_POST['Onderwerp'];
$message = $_POST['Bericht'];
//waarden worden middels POST verzonden. Hieronder staat het sql-statement dat insertie in de database bewerkstelligt:
$sql = "INSERT into contactformulieren (Voornaam, Achternaam, Emailadres, Onderwerp, Bericht)
VALUES ('$firstname','$lastname','$email','$subject','$message')";
$result = mysqli_query($conn, $sql);
//hiermee wordt de pagina na 3 seconden gerefreshed.
header( "refresh:3;url=Contact.php" );
?>
<?php// hieronder een bevestigingsbericht dat voor de refresh wordt weergegeven.?>
<html>
<h4>Dank voor uw bericht. Wij zullen zo spoedig mogelijk contact opnemen.</h4>
</html>
