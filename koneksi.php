<?php
$koneksi = mysqli_connect("localhost","root","","db_todolist_app");
if(!$koneksi){
    die('error' . mysqli_connect_error());
    exit();
}