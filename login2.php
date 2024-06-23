<?php
session_start();

$servername = "localhost";
$username = "root";
$password = ""; // Ganti dengan password MySQL Anda
$dbname = "kelas_mahasiswa";

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Memeriksa apakah data POST email dan password terkirim
    if (isset($_POST['email'], $_POST['password'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Mencari pengguna berdasarkan email
        $stmt = $conn->prepare("SELECT id, namalengkap, password, role FROM users WHERE username = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            // Mengikat hasil query ke variabel
            $stmt->bind_result($id, $namalengkap, $hashed_password, $role);
            $stmt->fetch();

            // Verifikasi password
            if (password_verify($password, $hashed_password)) {
                // Login berhasil, atur session
                $_SESSION['id'] = $id;
                $_SESSION['namalengkap'] = $namalengkap;
                $_SESSION['role'] = $role;

                // Redirect ke halaman sesuai role
                if ($role == 'mahasiswa') {
                    header("Location: tampilan1.php");
                } elseif ($role == 'dosen') {
                    header("Location: dosen1.php");
                } elseif ($role == 'admin') {
                    header("Location: admin1.php");
                }
                exit();
                
            } else {
                echo "Password salah.";
            }
        } else {
            echo "Email tidak ditemukan.";
        }
        $stmt->close();
    } else {
        echo "Data login tidak lengkap.";
    }
}

$conn->close();
?>
