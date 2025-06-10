<?php
$host = "localhost";
$db = "mathbingo";
$user = "root";
$pass = "";

// Create DB connection
$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get POST data
$username = $_POST['username'] ?? '';
$timeElapsed = $_POST['timeElapsed'] ?? 0;
$level = $_POST['level'] ?? 1;

if ($username && is_numeric($timeElapsed)) {
  $stmt = $conn->prepare("INSERT INTO bingo_scores (username, time_elapsed, level) VALUES (?, ?, ?)");
  $stmt->bind_param("sii", $username, $timeElapsed, $level);
  $stmt->execute();
  echo "Score saved!";
} else {
  echo "Invalid data.";
}

$conn->close();
?>
