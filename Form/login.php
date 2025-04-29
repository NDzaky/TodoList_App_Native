<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
                // memastikan data tidak menumpuk
                unset($_SESSION['pesan']);
        }?>
    </div>
    <div class="container">
        <div class="form_area">
            <div class="heading">
                <center> 
                <h1>Login</h1>
                </center>
            </div>
            <form action="../API/login.php" method="post">
                <label for="email">Masukan email</label>
                <input type="email" name="email" id="" placeholder="Masukan email di sini" required>
                <label for="password">Masukan password</label>

                <div class="pass_area">
                    <input type="password" name="password" id="inp_pass"placeholder="Masukan password di sini" required>
                    <p class="btn_pass" id="btn_pass" onclick="showPass()">show</p>
                </div>
                <button type="submit">Login</button>
            </form>
            <center><p>sudah punya akun <a href="../Form/register.php">daftar disini</a></p></center>
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
        // fungsi yang digunakan agar dapat menampilkan password
        // menggunakan teknik mengubah atribut type yang semulanya 'password' menjadi 'text'
        function showPass(){
            const input = document.getElementById('inp_pass');
            const button = document.getElementById('btn_pass');

            if(input.type === 'password'){
                input.type = 'text';
                button.innerHTML = 'hide';
            }else{
                input.type = 'password';
                button.innerHTML = 'show';
            }

        }
    </script>
</body>
</html>
