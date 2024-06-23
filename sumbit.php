<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kelas_mahasiswa";


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $kelas = $conn->real_escape_string($_POST['kelas']);
    $nama = $conn->real_escape_string($_POST['nama']);
    $nim = $conn->real_escape_string($_POST['nim']);

    
    $sql = "INSERT INTO mahasiswa (kelas, nama, nim) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    if ($stmt) {
        $stmt->bind_param("sss", $kelas, $nama, $nim);
        $stmt->execute();
        $stmt->close();
        header("Location: admin2.html");
    } else {
        echo "Gagal menyiapkan statement: " . $conn->error;
    }
} else {
    echo "Form data tidak diterima.";
}


$conn->close();
?>
