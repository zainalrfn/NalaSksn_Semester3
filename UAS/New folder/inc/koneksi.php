<?php
$HOST = "localhost";
$USERNAME = "root";
$PASSWORD = "";
$DATABASE = "db_evoting";
$koneksi = new mysqli($HOST, $USERNAME, $PASSWORD, $DATABASE);

// Check connection
if ($koneksi->connect_error) {
    die("Connection failed: " . $koneksi->connect_error);
}
