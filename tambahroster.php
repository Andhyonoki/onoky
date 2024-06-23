<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Konfigurasi koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kelas_mahasiswa";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Mengambil data dari form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $hari = $_POST['hari'] ?? '';
    $nama_ruangan = $_POST['nama_ruangan'] ?? '';
    $kelas = $_POST['kelas'] ?? '';
    $mata_kuliah = $_POST['mata_kuliah'] ?? '';
    $dosen = $_POST['dosen'] ?? '';
    $jam_mulai = $_POST['jam_mulai'] ?? '';
    $jam_selesai = $_POST['jam_selesai'] ?? '';
    $kampus = $_POST['kampus'] ?? '';
    $lantai = $_POST['lantai'] ?? '';

    // Debugging: Tampilkan data yang diterima
    echo "Hari: $hari<br>";
    echo "Nama Ruangan: $nama_ruangan<br>";
    echo "Kelas: $kelas<br>";
    echo "Mata Kuliah: $mata_kuliah<br>";
    echo "Dosen: $dosen<br>";
    echo "Jam Mulai: $jam_mulai<br>";
    echo "Jam Selesai: $jam_selesai<br>";
    echo "Kampus: $kampus<br>";
    echo "Lantai: $lantai<br>";

    // Query untuk menyimpan data ke database
    $sql = "INSERT INTO jadwalkelas (hari, kampus, lantai, nama_ruangan, kelas, mata_kuliah, dosen, jam_mulai, jam_selesai)
            VALUES ('$hari', '$kampus', '$lantai', '$nama_ruangan', '$kelas', '$mata_kuliah', '$dosen', '$jam_mulai', '$jam_selesai')";

    // Eksekusi query
    if ($conn->query($sql) === TRUE) {
        // Redirect kembali ke halaman admin jika berhasil
        header("Location: admin3.html");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Menutup koneksi
    $conn->close();
} else {
    echo "Data tidak diterima dengan benar.";
}
?>
