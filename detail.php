<?php
include ("koneksi.php");
//jika ID Tidak ada
if(!iset($_GET['id'])){
    echo "hopss.. halaman tidak tersedia";
    header("Localtion: indexx.php");
}

$id = $_GET["id"];
$query = mysqli_query($koneksi, "select * from tbproduk where id=$id");
$dataProduk = mysqli_num_rows($query);
if($dataProduk == 0){
    echo "<h3> hopss.. data tidak di temukan</h3>";
    die();
}

$data = mysqli_fetch_array($query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <img src ="meyy2">
    <h1><?= $data["nama"]?></h1>
    <h6><?= $data["harga"]?></h6>
    <p><?= $data["deskripsi"]?></p>
    <p><?= $data["kategori"]?></p>
    
</body>
</html>