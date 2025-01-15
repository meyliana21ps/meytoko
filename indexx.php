<!DOCTYPE html>
<html lang="en">
<head>
<style>
section{
  display:flex;
  justify-content:center;
}
</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 
</head>
<body>
    
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">alsy.store</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Halaman</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Tautan</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Pilihan
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
              <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="login.php">Login</a>
              </li>
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Pencarian" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Cari</button>
            </form>
          </div>
        </div>
      </nav>
<section>
<div class="card   mt-5 " style="width: 18rem; margin: 20px;">

  <img src="meyy3.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Coffe Yuk</h5>
    <p class="card-text">Iced Coffe, Caffe Latte, Cappucino</p>
    <a href="#" class="btn btn-primary"></a>
    <a href="detail.php?id=<?=$data['id']?>" class="btn btn-primary">detail</a>


  </div>
</div>
<div class="card  mt-5 " style="width: 18rem;">

  <img src="meyy2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Coffe Yuk</h5>
    <p class="card-text">Aromatic Frappuccino, Aromatic Frapee Coffe, Aromatic Dalgona Coffe</p>
    <a href="#" class="btn btn-primary"></a>
    <a href="detail.php?id=<?=$data['id']?>" class="btn btn-primary">detail</a>


  </div>
</div>
<div>
  <div class="card mt-5 style=width: 1rem;">
     <img src="cookies.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">brownies yuk</h5>
    <p class="card-text">brownbies yang lezat dibuat dengan bahan [ilihan yang lezat dan enak, kualitas bukan main main</p>
    <a href="detail.php?id=<?=$data['id']?>" class="btn btn-primary">detail</a>


  
</div>


      
</section>
</body>
</html>