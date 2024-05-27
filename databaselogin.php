<?php
class Database {
    private $host = 'localhost';
    private $username = 'root';
    private $password = '';
    private $database = 'latihan'; // Ganti dengan nama database yang Anda gunakan

    // Properti untuk menyimpan koneksi
    private $conn;

    // Konstruktor untuk membuat koneksi saat objek Database dibuat
    public function __construct() {
        // Membuat koneksi ke database
        $this->conn = new mysqli($this->host, $this->username, $this->password, $this->database);

        // Memeriksa koneksi
        if ($this->conn->connect_error) {
            // Menampilkan pesan kesalahan jika koneksi gagal
            die("Koneksi gagal: " . $this->conn->connect_error);
        } else {
            // Menampilkan pesan sukses jika koneksi berhasil
            echo "Koneksi berhasil";
        }
    }

    // Metode untuk mendapatkan koneksi
    public function getConnection() {
        return $this->conn;
    }

    // Metode untuk menutup koneksi
    public function closeConnection() {
        $this->conn->close();
    }
}

// Membuat objek Database
$db = new Database();

// Mendapatkan koneksi
$conn = $db->getConnection();

// Setelah selesai menggunakan koneksi, pastikan untuk menutupnya
$db->closeConnection();
?>
