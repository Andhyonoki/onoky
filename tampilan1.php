

<?php
 session_start();
 if (!isset($_SESSION['namalengkap'])) {
 header('Location: login.html');
exit();
 }
?>


<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Web untuk memudahkan dosen dan mahasiswa dalam mengatur dan mengetahui jadwal kelas mata kuliah.">
    <title>Ruang Kelas</title>
    <link rel="stylesheet" href="gaya.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="footer1.css">
    <script>
        function toggleMenu() {
            var menu = document.querySelector('.menu ul');
            menu.classList.toggle('aktif');
        }

        function tampilkanDetail() {
            var detail = document.getElementById("detail");
            detail.style.display = "block";
            var tautan = document.getElementById("pelajari-lebih-lanjut");
            tautan.style.display = "none";
        }
    </script>
</head>
<body>
    <div class="content-wrapper">
        <nav>
            <div class="wrapper">
                <div class="logo"><a href="#home">Informasi Kelas Mata Kuliah</a></div>
                <div class="menu">
                    <ul>
                        <li><a href="tampilan1.php">Beranda</a></li>
                        <li><a href="tampilan2.html">Daftar Mahasiswa</a></li>
                        <li><a href="tampilan3.html">Info Kelas</a></li>
                        <li><a href="logout.php" class="tbl-biru">Keluar</a></li>
                    </ul>
                    <div class="toggle" onclick="toggleMenu()" aria-label="Toggle menu"></div>
                </div>
            </div>
        </nav>
        <div class="pembungkus">
            <section id="home">
                <img src="bg2.png" alt="Gambar Latar"/>
                <div class="kolom">
                    <p class="deskripsi">Selamat datang   <?php echo htmlspecialchars($_SESSION['namalengkap']); ?>!</p>
                    <h2>ITH JALAN KITA MENUJU SUKSES</h2>
                    <p>Selamat datang di web kami, web ini kami rancang dengan tujuan memudahkan Dosen membuat jadwal mata kuliah dan memudahkan Mahasiswa mengetahui informasi kelas yang dijadwalkan oleh dosen.</p>
                    <p><a href="#" class="tbl-pink" id="pelajari-lebih-lanjut" onclick="tampilkanDetail()">Pelajari Lebih Lanjut</a></p>
                    <div id="detail" style="display: none;">
                        <p>Di sini Dosen dapat membuat jadwal kelas, menunda kelas, dan memindahkan kelas Mata Kuliah.</p>
                        <p>Mahasiswa dapat melihat informasi kelas yang telah dibuat oleh dosen dengan melihat jadwal kelas pada navigasi "Info Kelas" yang ada di pojok kanan atas.</p>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="footer-col">
                <h3>
                    Menu
                    <div class="underline"><span></span></div>
                </h3>
                <ul>
                <li><a href="tampilan1.php">Beranda</a></li>
                    <li><a href="tampilan2.html">Daftar Mahasiswa</a></li>
                    <li><a href="tampilan3.html">Info Kelas</a></li>
                </ul>
            </div>
            <div class="footer-col">
            <div class="ikon-sosial">
                    <a href="https://www.facebook.com/ith.parepare?mibextid=ZbWKwL"><i class="fa-brands fa-facebook"></i></a>
                    <a href="https://www.instagram.com/ith.campus?igsh=Z3JucWdsOGtrd3A4"><i class="fa-brands fa-instagram"></i></a>
                    <a href="https://youtube.com/@ith_idn?si=Ky5JKVlLYWLw4z-V"><i class="fa-brands fa-youtube"></i></a>
                    <a href="https://ith.ac.id/"><i class="fa-brands fa-google-plus"></i></a>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
