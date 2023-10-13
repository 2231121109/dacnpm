<?php
    $server = "db";
    $port = "3308";
    $username = "admin";
    $password = "mysql12345";
    $dbname = "dkhp";
try {
    $conn = new PDO("mysql:host=$server; port=$port; dbname=$dbname", $username, $password);
    // Thiết lập lỗi của PDO cho ngoại lệ
    echo "Kết nối thành công";
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Kết nối thành công";
} catch (PDOException $e){
    echo "Lỗi kết nối: " . $e->getMessage();
}
?>