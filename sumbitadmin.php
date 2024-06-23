<?php
// Assuming you have a database connection in db_connection.php

// Replace these variables with your actual database credentials
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kelas_mahasiswa";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $kelas = $_POST['kelas'];
    $nomor = $_POST['nomor'];
    $nim = $_POST['nim'];
    $nama = $_POST['nama'];

  // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }


    // Siapkan pernyataan SQL untuk menyisipkan data baru
    $sql = "INSERT INTO mahasiswa (kelas, nomor, nim, nama) VALUES (?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("siss", $kelas, $nomor, $nim, $nama);

    // Jalankan pernyataan dan periksa keberhasilan
    if ($stmt->execute()) {
        header("Location: admin2.html");
      
    } else {
        echo "Terjadi kesalahan: " . $stmt->error;
    }

    // Tutup koneksi
    $stmt->close();
    $conn->close();
}
?>

