<?php
// digunakan untuk menggabungkan file koneksi.php
include '../koneksi.php';
// $id adalah variable untuk menyimpan nilai yang didapat dari GET
$id = $_GET['id_todo'] ?? null;

// bagian dibawah ini digunakan untuk membuat kode SQL sampai menjalankan dan menyimpan data yang ada
$sql = "SELECT * FROM todo WHERE id_todo = $id";
$query = mysqli_query($koneksi,$sql);
$fecth = mysqli_fetch_assoc($query);

// bagian ini digunakan untuk pengecekan pada todo, jika kolom isFavorite bernilai true maka akan mengubah nilainya menjadi false
// begitu juga sebaliknya
if($fecth['isFavorite'] == true){
    $sqlEdit = "UPDATE todo SET isFavorite = false WHERE id_todo = $id";
    $queryEdit = mysqli_query($koneksi,$sqlEdit);

}else{
    $sqlEdit = "UPDATE todo SET isFavorite = true WHERE id_todo = $id";
    $queryEdit = mysqli_query($koneksi,$sqlEdit);
}
if($queryEdit){
    header('location:../index.php'); exit();
}