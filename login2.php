
<?php
// Mulai sesi
session_start();

// Koneksi ke database
$servername = "localhost"; // Ganti dengan nama server database Anda
$username = "root";
$password = "";
$dbname = "kelas_mahasiswa";

// Buat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Tambahkan pemeriksaan dan pesan debug untuk memastikan data POST diterima
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    echo "<pre>";
    print_r($_POST);
    echo "</pre>";

    // Ambil email dan password dari permintaan POST
    if (isset($_POST['email']) && isset($_POST['password'])) {
        $email = $_POST['email'];
        $password = $_POST['password'];

        // Persiapkan dan ikat pernyataan untuk mencegah SQL injection
        $stmt = $conn->prepare("SELECT id, nama, email, password FROM login1 WHERE email = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows == 0) {
            // Email tidak terdaftar
            echo "Akun tidak terdaftar";
        } else {
            // Email terdaftar, periksa password
            $stmt->bind_result($id, $nama, $email_db, $hashed_password);
            $stmt->fetch();
            
            if (password_verify($password, $hashed_password)) {
                // Password benar, mulai sesi
                $_SESSION['user_id'] = $id;
                $_SESSION['nama'] = $nama;
                $_SESSION['email'] = $email_db;
                header('Location: tampilan1.php');
                exit();
            } else {
                // Password tidak cocok
                echo "Password tidak cocok";
            }
        }

        // Tutup pernyataan dan koneksi
        $stmt->close();
        $conn->close();
    } else {
        echo "Email atau password tidak diterima.";
    }
} else {
    echo "Metode pengiriman bukan POST.";
}
?>
