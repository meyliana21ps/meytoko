<?php
     include "koneksi.php";

     $nama_produk = $_POST ["nama_produk"];
     $harga = $_POST["harga"];
     $deskripsi_produk = $_POST["deskripsi_produk"];
     $kategori_produk = $_POST ["kategori_produk"];
   
    
     //tipe data array
     $nama_foto = $_FILES["foto"]["name"];
     $lokasi_tap = $_FILES["foto"]["tmp_name"];
     

     $squery =mysqli_query($koneksi, "insert into tbproduk values ('','$nama_produk', '$harga', '$deskripsi_produk', '$kategori_produk')");


     move_uploaded_file('$lokasi_foto', '$ftproduk/$nama_foto');

?>
 