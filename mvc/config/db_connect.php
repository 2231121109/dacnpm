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
    $sqli = mysqli_connect($host, $username, $password, $dbname, $port);
    mysqli_query($sqli, "SET NAMES 'UTF8'");
    mysqli_report(MYSQLI_REPORT_STRICT | MYSQLI_REPORT_ERROR);
} catch (PDOException $e){
    echo "Lỗi kết nối: " . $e->getMessage();
}
?>