<?php
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

// Check if 'kampus' parameter exists in URL
if (!isset($_GET['kampus'])) {
    die("Parameter 'kampus' tidak ditemukan dalam URL.");
}

$kampus = $_GET['kampus'];
$sql = "";

if ($kampus === "kampus1") {
    $sql = "SELECT id, hari, nama_ruangan, kelas, mata_kuliah, dosen, jam_mulai, jam_selesai FROM JadwalKelas WHERE kampus='Kampus 1'";
} elseif ($kampus === "kampus2") {
    $sql = "SELECT id, hari, nama_ruangan, kelas, mata_kuliah, dosen, jam_mulai, jam_selesai FROM JadwalKelas WHERE kampus='Kampus 2'";
} else {
    die("Kampus yang dipilih tidak valid.");
}

$result = $conn->query($sql);

if (!$result) {
    die("Query error: " . $conn->error);
}

$data = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

$conn->close();

echo json_encode($data);
?>
