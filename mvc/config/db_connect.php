<?php
    $host = "db";
    $port = "3306";
    $username = "admin";
    $password = "mysql12345";
    $dbname = "dkhp";
    $conn = null;
try {
    $conn = new PDO("mysql:host=$host;port=$port;dbname=$dbname;charset=utf8mb4", $username, $password);
    // Thiết lập lỗi của PDO cho ngoại lệ
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // $conn = new mysqli($host, $username, $password, $dbname, $port);
    // $conn->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Kết nối thành công";
} catch (PDOException $e){
    echo "Lỗi kết nối: " . $e->getMessage();
}
?>