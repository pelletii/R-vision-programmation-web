<?php
session_start();


function isLoggedIn() {
    return isset($_SESSION['user']);
}

// Connexion (non sécurisée)
function login($pdo, $username, $password) {
    // En production, il faudrait hacher le mot de passe et utiliser des requêtes préparées !
    $sql = "SELECT * FROM utilisateurs WHERE pseudoUtil = ? AND mdpUtil = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$username, $password]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user) {
        $_SESSION['user'] = $username;
        return true;
    }
    return false;
}

// Déconnexion
function logout() {
    session_unset();
    session_destroy();
}
?>