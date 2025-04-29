<?php
include 'koneksi.php';
// session_start() untuk menjalankan sesi
session_start();
// $id digunakan untuk menyimpan nilai id_user yang sebelumnya disimpan di sesi jika tidak ada
$id = $_SESSION['id_user'];
if(!$id){
    header('location:Form/login.php'); exit();
}
// $sqlcategory dan $queryCategory digunakan untuk menjalankan kode SQL untuk menampilkan seluruh data category
$sqlcategory = "SELECT * FROM category";
$queryCategory = mysqli_query($koneksi,$sqlcategory);

// dibawah ini adalaha kode SQL SELECT dengan menggunakan JOIN untuk mendapatkan data todo sekaligus category
$sql = "SELECT * FROM todo INNER JOIN category ON todo.id_category = category.id_category WHERE id_user = $id";

// variabel yang digunakan untuk menyimpan nilai dari form get
$category = $_GET['category'] ?? null;
$status = $_GET['status'] ?? null;
$bookmark = $_GET['bookmark'] ?? null;
$search = $_GET['search'] ?? null;

// bagian ini berfungsi untuk menjalankan fitur filter data
// $sql .= digunakan untuk menggambungkan nilai variable
if($category){
    $sql .= " AND todo.id_category = $category";
}
if($status){
    $sql .= " AND status = '$status' ";
}
if($bookmark){
    $sql .= " AND isFavorite = true";
}
if($search){
    $sql .= " AND title LIKE '$search%'";
}

// $query digunakan untuk menjalankan kode SQL
$query = mysqli_query($koneksi,$sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Todo</title>
    <link rel="stylesheet" href="form/css/main.css">
</head>
<body>
    <nav class="navbar">
        <div class="head">
            <h2>TODO APP || <?= $_SESSION['username']?></h2>
        </div>

        <div class="search">
            <form action="" method="get">
                <input type="text" name="search" placeholder="Cari Judul" value="<?= $search?>">
                <button type="submit">Cari</button>
        </div>

        <div class="menu">
            <a class="profil" href="profil.php">Profil</a>
            <a href="API/Logout.php">Logout</a>
        </div>
    </nav>
    <div class="container">
        <div class="main">
            <div class="filter">
                <div class="selection">
                    <div class="heading">
                        <h4>Filter berdasarkan :</h4>
                    </div>
                    <div class="category">
                        <select name="category" id="" onchange="this.form.submit()">
                            <option value="">Semua Category</option>
                            <?php while($data = mysqli_fetch_assoc($queryCategory)){?>
                                <option value="<?= $data['id_category']?>" <?= ($data['id_category'] === $category) ? 'selected' : ''?>><?= $data['category']?></option>
                            <?php }?>
                        </select>
                    </div>
                    <div class="status">
                        <select name="status" id="" onchange="this.form.submit()">
                            <option value="">Semua Status</option>
                            <option value="pending" <?= ($status === 'pending') ? 'selected' : ''?>>pending</option>
                            <option value="done" <?= ($status === 'done') ? 'selected' : ''?> >done</option>
                        </select>
                    </div>
                    <div class="bookmark">
                        <select name="bookmark" id="" onchange="this.form.submit()">
                            <option value="">Semua Jenis</option>

                            <option value="true" <?= ($bookmark == true) ? 'selected' : ''?>>Favorit</option>
                        </select>
                    </form>
                    </div>
                </div>
                <div class="tambah">
                    <a href="Form/todo_tambah.php">Tambah Todo[+]</a>
                </div>
            </div>
            <div class="todo">
                <?php while($data = mysqli_fetch_assoc($query)){?>
                    <div class="card" style="<?= ($data['status'] === 'done') ? 'background-color: rgb(52, 52, 53); color:white;' : 'background-color: rgb(255, 255, 255);color:black'?>">
                        <div class="body" style="<?= ($data['status'] === 'done') ? 'text-decoration: line-through;' : ''?>">
                            <div class="head">
                                <h3 style="<?= ($data['status'] === 'done') ? 'color:yellow;' : 'color: rgb(0, 0, 0);'?>" ><?= $data['title']?></h3>
                            </div>
                            <div class="desc">
                                <p style="<?= ($data['status'] === 'done') ? 'color:white;' : 'color: rgb(71, 71, 71);'?>"><?= nl2br($data['description'])?></p>
                            </div>
                        </div>     
                        <div class="info">
                            <p class="status" style="<?= ($data['status'] === 'done') ? 'color:greenyellow;' : 'color:orange'?>">status : <?= $data['status']?></p>
                            <p class="category">category : <?= $data['category']?></p>
                        </div>
                        <div class="aksi">
                            <div class="crud">
                                <a class="hapus" href="API/todo_delete.php?id_todo=<?= $data['id_todo']?>">Hapus</a>
                                <a class="edit" href="Form/todo_edit.php?id_todo=<?= $data['id_todo']?>">Edit</a>
                            </div>
                            <div>
                                <div class="bookmark">
                                    <a href="API/bookmark.php?id_todo=<?= $data['id_todo']?>" > <?= ($data['isFavorite'] == true) ? '⭐' : '⬜'?></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php }?>
            </div>
        </div>
    </div>
</body>
</html>
