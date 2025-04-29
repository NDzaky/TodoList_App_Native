<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Profil</title>
    <link rel="stylesheet" href="form/css/profil.css">
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="heading">
                <center> <h1>Profil Saya</h1></center>
            </div>
            <div class="info">
                <!-- bagian ini menampilkan data dari sesi -->
                <p class="name">Nama : <span><?= $_SESSION['name']?></span></p>
                <p class="email">Email : <span><?= $_SESSION['email']?></span></p>
                <p class="birth_date">Birth date : <span><?= $_SESSION['birth_date']?></span></p>
            </div>
            <div class="aksi">
                <a class="kembali" href="index.php">kembali</a>
                <a href="API/logout.php">Logout</a>
            </div>
        </div>
    </div>
</body>
</html>
