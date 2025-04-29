<?php
include '../koneksi.php';
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    // bagian ini adalah variable variable yang digunakan untuk menyimpan nilai yang didapat dari form
    // dan memastikan nilai tidak mengandung spesial char
    $username = mysqli_real_escape_string($koneksi,$_POST['username']);
    $name = mysqli_real_escape_string($koneksi,$_POST['name']);
    $email = mysqli_real_escape_string($koneksi,$_POST['email']);
    $password = mysqli_real_escape_string($koneksi,$_POST['password']);
    $date = mysqli_real_escape_string($koneksi,$_POST['birth_date']);

    // varibel yang figunakan untuk validasi nantinya
    $sqlCek = "SELECT * FROM user WHERE email = '$email'";
    $queryCek = mysqli_query($koneksi,$sqlCek);

    // bagian ini adalah bagian validasi dan membalikan pesan error
    if(strlen($username) > 60){
        $_SESSION['pesan'][] = "Username terlalu panjang";
        header('location:../Form/register.php'); exit();
    }
    if(strlen($name) > 70){
        $_SESSION['pesan'][] = "Nama terlalu panjang";
        header('location:../Form/register.php'); exit();
    }
    if(strlen($password) < 8){
        $_SESSION['pesan'][] = "Panjang password minimal 8";
        header('location:../Form/register.php'); exit();
    }

    // kondisi dimana jika data ada maka akan menampilkan pesan di halaman register
    if($queryCek->num_rows > 0){
        $_SESSION['pesan'][] = "email sudah dipakai";
        header('location:../Form/register.php'); exit();
    }else{
        // bagian ini digunakan untuk melakukan hash password dan melaukan insert kedalam table user
        $hash = password_hash($password,PASSWORD_DEFAULT);
        $sql = "INSERT INTO user (username,name,email,password,birth_date) VALUES ('$username','$name','$email','$hash','$date') ";
        $query = mysqli_query($koneksi,$sql);

        if($query){
            header('location:../Form/login.php'); exit();
        }
    }
}
