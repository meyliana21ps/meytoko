<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
       <form action="proses_tambah.php" method="post" enctype="multipart/form-data"
       >
<div>
        Nama Produk:
        <input type="text" name="nama_produk" />
</div> 
<div>
    Harga:
         <input type="number" name="harga" />
</div>
<div>
    Deskripsi Produk:
        <input type= "text" name="deskripsi_produk" />
<div>
    kategori Produk:
         <input type= "text" name="kategori_produk" />
</div>        

</div>
<div> 
    Foto:
    <input type="file" name="foto" >
</div>
<input type="submit">
</form>
</body>
</html>