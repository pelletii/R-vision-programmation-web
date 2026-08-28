<?php
function getBdd() {
    
    $host = "127.0.0.1";
    $dbname = "bdAssoCult";
    $user = "assoUser";
    $password = "assoMdp";

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        die("Erreur de connexion : " . $e->getMessage());
    }
    return $pdo;
}
?>