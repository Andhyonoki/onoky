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

// Mengambil data JSON dari permintaan POST
$data = json_decode(file_get_contents("php://input"), true);

// Validasi dan sanitasi data (contoh menggunakan mysqli_real_escape_string)
$id = mysqli_real_escape_string($conn, $data['id']);
$hari = mysqli_real_escape_string($conn, $data['hari']);
$nama_ruangan = mysqli_real_escape_string($conn, $data['nama_ruangan']);
$kelas = mysqli_real_escape_string($conn, $data['kelas']);
$mata_kuliah = mysqli_real_escape_string($conn, $data['mata_kuliah']);
$dosen = mysqli_real_escape_string($conn, $data['dosen']);
$jam_mulai = mysqli_real_escape_string($conn, $data['jam_mulai']);
$jam_selesai = mysqli_real_escape_string($conn, $data['jam_selesai']);

// Menyiapkan pernyataan SQL menggunakan prepared statement
$stmt = $conn->prepare("UPDATE JadwalKelas SET hari=?, nama_ruangan=?, kelas=?, mata_kuliah=?, dosen=?, jam_mulai=?, jam_selesai=? WHERE id=?");
$stmt->bind_param("sssssssi", $hari, $nama_ruangan, $kelas, $mata_kuliah, $dosen, $jam_mulai, $jam_selesai, $id);

// Mengeksekusi pernyataan
if ($stmt->execute()) {
    // Jika update berhasil
    $response = array('status' => 'success', 'message' => 'Record updated successfully');
    echo json_encode($response);
} else {
    // Jika terjadi kesalahan saat update
    $response = array('status' => 'error', 'message' => 'Error updating record: ' . $stmt->error);
    echo json_encode($response);
}

// Menutup statement dan koneksi database
$stmt->close();
$conn->close();
?>
