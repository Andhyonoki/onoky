<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kelas_mahasiswa";

// Membuat koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = $_POST['id'];
$kelas = $_POST['kelas'];
$nomor = $_POST['nomor'];
$nama = $_POST['nama'];

$sql = "UPDATE mahasiswa SET kelas = ?, nomor = ?, nama = ? WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sisi", $kelas, $nomor, $nama, $id);

if ($stmt->execute()) {
    echo "Data berhasil diperbarui";
} else {
    echo "Gagal memperbarui data: " . $conn->error;
}

$stmt->close();
$conn->close();
?>
