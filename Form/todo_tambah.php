<?php
include '../koneksi.php';

$sqlcategory = "SELECT * FROM category";
$queryCategory = mysqli_query($koneksi,$sqlcategory);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah todo</title>
    <link rel="stylesheet" href="css/form.css">
</head>
<body>
    <div class="error">
        <!-- bagian yang digunakan untuk menampilkan pesan validasi dari backend -->
        <?php session_start();
            if(!empty($_SESSION['pesan'])){
                foreach($_SESSION['pesan'] as $pesan){
                    echo "
                    <div class='alert' id='pesan'>
                        <h3>$pesan<h3/>
                        <button class='btn_close' id='btn_close' onClick='closeAlert()'>Oke</button>
                    </div>
                    ";
                }
                unset($_SESSION['pesan']);
        }?>
    </div>
    <div class="container">
        <div class="form_area">
            <div class="heading">
                <center> 
                <h1>Tambah Todo</h1>
                </center>
            </div>
            <form action="../API/todo_tambah.php" method="post">
                <label for="title">Masukan judul</label>
                <input type="text" name="title" id="" placeholder="masukan judul disini" required>
                <label for="description">Masukan deskripsi</label>
                <textarea name="description" id="" required></textarea>
                <label for="status">Pilih status</label>
                <select name="status" id="">
                    <option value="pending">Pending</option>
                    <option value="done">Done</option>
                </select>
                <label for="category">Pilih kategori</label>
                <select name="category" id="">
                    <?php while($data = mysqli_fetch_assoc($queryCategory)){ ?>
                        <option value="<?= $data['id_category']?>"><?= $data['category']?></option>
                    <?php }?>
                </select>
                <button type="submit">Tambah</button>
            </form>
            <center> <p>Klik <a href="../index.php">disini</a> untuk kembali</p></center>
            
        </div>
    </div>

    <script>
        // fungsi yang digunakan agar dapat menutup alert yang muncul
        function closeAlert(){
            const pesan = document.getElementById('pesan');
            const buttonClose = document.getElementById('btn_close');

            if(pesan.style.display === 'none'){
                pesan.style.display = 'block';
            }else{
                pesan.style.display = 'none';
            }

        }
    </script>
</body>
</html>
