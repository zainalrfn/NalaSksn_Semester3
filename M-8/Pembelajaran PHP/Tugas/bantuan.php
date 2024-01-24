<?php
$koneksi = mysqli_connect("localhost","root","","tugas modul 8 php");

$name = $_POST['name'];
$email = $_POST['email'];
$webshite = $_POST['webshite'];
$comment = $_POST['comment'];
$gender = $_POST['gender'];
$submit = $_POST['submit'];

$query = "INSERT INTO tugasmodul8php VALUES('$name','$email','$webshite','$comment','$gender','$submit')";

mysqli_query($koneksi,$query);
?>