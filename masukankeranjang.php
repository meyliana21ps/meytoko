<?php

$produk_id = $_POST['produk_id'];

$user_id = $_POST['id'];

include "koneksi.php";

$query = mysqli_query($koneksi, "insert into cart values (null, $user_id, now())");
$cart_id = mysqli_insert_id($koneksi);
$query2 = mysqli_query($koneksi, "insert into cart_item[values(null, $cart_id, $produk_id, now)]")


?>