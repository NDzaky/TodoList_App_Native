<?php
include '../koneksi.php';
session_start();
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    // variable2 yang digunakan untuk menyimpan nilai yang dikirim melalui form
    $title = mysqli_real_escape_string($koneksi,$_POST['title']);
    $description = mysqli_real_escape_string($koneksi,$_POST['description']);
    $status = mysqli_real_escape_string($koneksi,$_POST['status']);
    $category = mysqli_real_escape_string($koneksi,$_POST['category']);
    $id_todo = mysqli_real_escape_string($koneksi,$_POST['id_todo']);

    // validasi sederhana, strlen digunakan untuk menghitung panjang string
    if(strlen($title) > 40){
        $_SESSION['pesan'][] = "Judul terlalu panjang";
        header('location:../Form/todo_tambah.php'); exit();
    }
    if(strlen($description) < 10){
        $_SESSION['pesan'][] = "Panjang deskripsi minimal 10";
        header('location:../Form/todo_tambah.php'); exit();
    }

    $sql = "UPDATE todo SET title = '$title', description='$description',id_category= '$category',status='$status', updated_at = NOW() WHERE id_todo = $id_todo";
    $query = mysqli_query($koneksi,$sql);

    if($query){
        header('location:../index.php'); exit();
    }
}