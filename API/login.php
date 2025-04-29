<?php
include '../koneksi.php';
session_start();
// baris kode yang dimana hanya dijalankan ketika mendapatkan Request 'POST'
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    // pada bagian ini digunakan untuk melakukan penyimpanan data yang didapat dari form
    // dan memastikan bahwa nilai yang disimpan tidak mengandung spesial chars
    $email = mysqli_real_escape_string($koneksi,$_POST['email']);
    $password = mysqli_real_escape_string($koneksi,$_POST['password']);

    // pada bagian ini digunakan untuk menjalankan query yang nantinya digunkan untuk pengecekan
    $sqlCek = "SELECT * FROM user WHERE email = '$email'";
    $queryCek = mysqli_query($koneksi,$sqlCek);
    if($queryCek->num_rows == 1){
        $fecth = mysqli_fetch_assoc($queryCek);
        if(password_verify($password,$fecth['password'])){
            // bagian dibawah ini digunakan untuk menyimpan data kedalam sesi
            $_SESSION['username'] = $fecth['username'];
            $_SESSION['name'] = $fecth['name'];
            $_SESSION['email'] = $fecth['email'];
            $_SESSION['birth_date'] = $fecth['birth_date'];
            $_SESSION['id_user'] = $fecth['id_user'];

            header('location:../index.php'); exit();
        }else{
            // bagian validasi dimana ketika password tidak sesuai makan akan menampilkan pesan
            $_SESSION['pesan'][] = "Password salah";
            header('location:../Form/login.php'); exit();
        }
    }else{
        // validasi untuk menampilkan pesan ketika tidak ada data yang cocok
        $_SESSION['pesan'][] = "Akun tidak terdaftar";
        header('location:../Form/login.php'); exit();
    }

}