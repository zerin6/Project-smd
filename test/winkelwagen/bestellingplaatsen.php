<?php
session_start();
include 'dbh.php';

$voornaam = $_POST['voornaam'];
$achternaam = $_POST['achternaam'];
$adres = $_POST['adresenhuisnummer'];
$postcode = $_POST['postcode'];

$sql = "INSERT INTO orders (voornaam, achternaam, adresenhuisnummer, postcode) 

VALUES ('$voornaam', '$achternaam', '$adres', '$postcode')";

$result = mysqli_query($conn, $sql);

header("Location: betaalopties.php");
