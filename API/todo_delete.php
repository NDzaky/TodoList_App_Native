<?php
include '../koneksi.php';
// variable yang digunakan untuk menyimpan nilai id_todo yang didapat get
$id = $_GET['id_todo'] ?? null;

// bagian yang digunakan untuk menjalankan kode SQL
$sql = "DELETE FROM todo WHERE id_todo = $id";
$query = mysqli_query($koneksi,$sql);
if($query){
    header('location:../index.php'); exit();
}