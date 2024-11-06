<?php
$host = "localhost";
$user = "root";
$pasword = "";
$db = "angkatan3_kasir";

$koneksi = mysqli_connect($host, $user, $pasword, $db);
if (!$koneksi) {
    echo "Koneksi Gagal";
}
