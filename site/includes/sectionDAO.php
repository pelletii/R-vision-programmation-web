<?php

require_once "connect.php";

function getAllSections() {

    $pdo = getBdd();

    $sql = "SELECT id, libelleSection FROM section";
    $stmt = $pdo->query($sql);
    $sections = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $stmt->closeCursor();
    return $sections;

}
?>