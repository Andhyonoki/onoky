<?php
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
    // Memastikan semua data POST yang diperlukan terkirim
    if (isset($_POST['name'], $_POST['email'], $_POST['password'], $_POST['role'])) {
        $fullname = $_POST['name'];
        $email = $_POST['email'];
        $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
        $role = $_POST['role'];

        // Menginisialisasi variabel untuk kolom opsional
        $nim = isset($_POST['nim']) ? $_POST['nim'] : null;
        $prodi = isset($_POST['prodi']) ? $_POST['prodi'] : null;
        $nidn = isset($_POST['nidn']) ? $_POST['nidn'] : null;
        $departemen = isset($_POST['departemen']) ? $_POST['departemen'] : null;

        // Periksa apakah email sudah terdaftar
        $stmt = $conn->prepare("SELECT id FROM users WHERE username = ?");
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $stmt->store_result();

        if ($stmt->num_rows > 0) {
            echo "Email sudah terdaftar.";
        } else {
            // Persiapan statement INSERT
            $stmt = $conn->prepare("INSERT INTO users (namalengkap, username, password, role, nim, prodi, nidn, departemen) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            if ($stmt) {
                $stmt->bind_param("ssssssss", $fullname, $email, $password, $role, $nim, $prodi, $nidn, $departemen);
                if ($stmt->execute()) {
                    header("Location: register1.html");
                } else {
                    echo "Terjadi kesalahan saat menambahkan pengguna: " . $stmt->error;
                }
                // Menutup statement INSERT
                $stmt->close();
            } else {
                echo "Terjadi kesalahan dalam persiapan statement: " . $conn->error;
            }
        }
        // Menutup statement SELECT
        $stmt->close();
    } else {
        echo "Data pendaftaran tidak lengkap.";
    }
}
// Menutup koneksi
$conn->close();
?>
