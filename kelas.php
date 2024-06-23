<?php
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

// Ensure 'kelas' parameter is received and sanitized
if (isset($_GET['kelas'])) {
    $kelas = $conn->real_escape_string($_GET['kelas']);

    // Prepare and execute the query
    $sql = "SELECT nim, nama FROM mahasiswa WHERE kelas='$kelas'";
    $result = $conn->query($sql);

    $data = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
    }

    // Close the result set
    $result->close();

    // Close the connection
    $conn->close();

    // Return the data as JSON
    echo json_encode($data);
} else {
    echo json_encode(array("error" => "No class specified"));
    $conn->close();
}
?>
