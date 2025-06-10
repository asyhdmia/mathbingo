<?php
$host = "localhost";
$db = "mathbingo";
$user = "root";
$pass = "";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT username, time_elapsed, level 
        FROM bingo_scores 
        ORDER BY level ASC, time_elapsed ASC";

$result = $conn->query($sql);

$leaderboard = [];

if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    $level = $row['level'];
    if (!isset($leaderboard[$level])) {
      $leaderboard[$level] = [];
    }
    $leaderboard[$level][] = $row;
  }
}

echo json_encode($leaderboard);

$conn->close();
?>
