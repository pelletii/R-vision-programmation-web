<?php
// Fonction pour afficher les manifestations
function getManifestations($pdo) {
    $sql = "SELECT id, titreManif, dateDebManif, nbPlacesManif FROM manifestations ORDER BY dateDebManif DESC";
    $stmt = $pdo->query($sql);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// Fonction pour ajouter une manifestation
function addManifestation($pdo, $nom, $date,  $nbPlacesManif) {
    $sql = "INSERT INTO manifestations (titreManif, dateDebManif, nbPlaceManif) VALUES (?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$nom, $date, $nbPlacesManif]);
}

// Fonction pour supprimer une manifestation
function deleteManifestation($pdo, $id) {
    $sql = "DELETE FROM manifestations WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$id]);
}
?>