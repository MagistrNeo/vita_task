<?php
echo "<h1>Hello from PHP 7.4 FPM!</h1>";
echo "<p>Current time: " . date('Y-m-d H:i:s') . "</p>";
echo "<p>PHP Version: " . phpversion() . "</p>";

// Проверка подключения к PostgreSQL (если используется)
try {
    $pdo = new PDO('pgsql:host=postgres;dbname=mydatabase', 'myuser', 'mypassword');
    echo "<p style='color: green;'>✅ PostgreSQL connection: SUCCESS</p>";
} catch (PDOException $e) {
    echo "<p style='color: red;'>❌ PostgreSQL connection: FAILED - " . $e->getMessage() . "</p>";
}

// Информация о PHP
phpinfo();
?>
