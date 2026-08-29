<?php
// Fonction pour afficher les manifestations
function getManifestations($pdo) {
    $sql = "SELECT * FROM manifestations ORDER BY date DESC";
    $stmt = $pdo->query($sql);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// Fonction pour ajouter une manifestation
function addManifestation($pdo, $nom, $date, $lieu, $description) {
    $sql = "INSERT INTO manifestations (nom, date, lieu, description) VALUES (?, ?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$nom, $date, $lieu, $description]);
}

// Fonction pour supprimer une manifestation
function deleteManifestation($pdo, $id) {
    $sql = "DELETE FROM manifestations WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$id]);
}
?>