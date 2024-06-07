<?php
// Aktifkan error reporting untuk debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

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

// Check if form data is received
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize and assign form data to variables
    $kelas = $conn->real_escape_string($_POST['kelas']);
    $nama = $conn->real_escape_string($_POST['nama']);
    $nim = $conn->real_escape_string($_POST['nim']);

    // Prepare and execute the insert query
    $sql = "INSERT INTO mahasiswa (kelas, nama, nim) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("sss", $kelas, $nama, $nim);
        $stmt->execute();
        $stmt->close();

        echo "Data berhasil disimpan.";
    } else {
        echo "Gagal menyiapkan statement: " . $conn->error;
    }
} else {
    echo "Form data tidak diterima.";
}

// Close the connection
$conn->close();
?>
