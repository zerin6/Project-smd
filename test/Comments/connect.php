<?php
//connectie met databse
$conn = mysqli_connect('localhost', 'root', '', 'test');

if (!$conn) {
    die("faillllllll".mysqli_connect_error());

}