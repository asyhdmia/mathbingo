<?php
$host = "localhost";
$dbname = "mathbingo"; // ✅ Make sure this matches
$user = "root";
$pass = "";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $pdo->query("SELECT username, time_elapsed,level FROM bingo_scores ORDER BY time_elapsed ASC LIMIT 10");
    $scores = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($scores);

} catch (PDOException $e) {
    echo json_encode(['error' => $e->getMessage()]);
}
?>
