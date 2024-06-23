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

// Check if 'id' parameter exists in the URL
if (!isset($_GET['id'])) {
    die("Invalid 'id' parameter.");
}

// Sanitize the 'id' parameter (optional, but recommended)
$id = intval($_GET['id']);

// Prepare DELETE statement
$sql = "DELETE FROM jadwalkelas WHERE id = ?";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("Prepare failed: (" . $conn->errno . ") " . $conn->error);
}

// Bind parameter
$stmt->bind_param("i", $id);

// Execute statement
if ($stmt->execute()) {
    echo "Success";
} else {
    echo "Failed: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
