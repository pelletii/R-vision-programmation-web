<?php
// Configuration de la base de données

$host = '172.27.0.50:3306';
$dbname = 'mediatheque';
$username = 'mediaUser';
$password = 'mediaMDP';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Erreur de connexion à la base de données : " . $e->getMessage());
}
?>