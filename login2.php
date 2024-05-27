<?php
session_start();
include('databaselogin.php');

// Membuat objek Database
$db = new Database();
$conn = $db->getConnection();

// Mendapatkan email dan password dari form login
$email = $_POST["email"];
$password = $_POST["password"];

// Mempersiapkan query SQL untuk memeriksa pengguna
$query_sql = "SELECT * FROM users WHERE email = ? AND password = ?";
$stmt = $conn->prepare($query_sql);
$stmt->bind_param("ss", $email, $password);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    // Login berhasil, arahkan ke halaman utama
    header("Location: tampilan1.html");
    exit();
} else {
    // Email atau password salah
    echo "<center><h1>Email atau Password Anda Salah. Silahkan Coba Login Kembali.</h1>
            <button><strong><a href='login.html'>Login</a></strong></button></center>";
}

// Menutup statement dan koneksi
$stmt->close();
$db->closeConnection();
?>
