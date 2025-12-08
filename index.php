<?php
$conn = new mysqli("db", "hamza", "hamzapass", "myapp");
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }

$conn->query("
CREATE TABLE IF NOT EXISTS visitors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    visit_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
");

$conn->query("INSERT INTO visitors() VALUES ()");

$result = $conn->query("SELECT COUNT(*) AS total FROM visitors");
$count = $result->fetch_assoc()['total'];

echo "<h1>Welcome to my application</h1>";
echo "<h2>Total visitors: $count</h2>";
echo "<p>Created by Hamza Chabiraggg</p>"; 


?>


