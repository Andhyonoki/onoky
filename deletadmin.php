<?php
// Sertakan file koneksi ke database di sini
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

// Periksa apakah parameter nim telah diterima dengan metode POST
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['nim'])) {
    // Ambil nim dari parameter POST dan pastikan itu aman untuk digunakan
    $nim = $_POST['nim'];

    // Persiapkan dan jalankan query penghapusan
    $sql = "DELETE FROM mahasiswa WHERE nim = ?";
    $stmt = $conn->prepare($sql);

    // Periksa apakah perintah persiapan berhasil
    if (!$stmt) {
        die("Prepare failed: (" . $conn->errno . ") " . $conn->error);
    }

    // Bind parameter
    $stmt->bind_param("s", $nim); // "s" adalah tipe data string

    // Eksekusi statement
    if ($stmt->execute()) {
        echo "Success";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Tutup statement
    $stmt->close();
} else {
    echo "Invalid request"; // Jika permintaan tidak valid
}

// Tutup koneksi
$conn->close();
?>
