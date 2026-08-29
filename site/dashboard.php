<?php
require_once __DIR__ . '/includes/config.php';
require_once __DIR__ . '/includes/auth.php';
require_once __DIR__ . '/includes/functions.php';

$pageTitle = "Tableau de bord";

if (!isLoggedIn()) {
    header("Location: index.php");
    exit;
}

$manifestations = getManifestations($pdo);

// Inclure le header
require_once 'includes/header.php';
?>

        <h2>Bienvenue, <?= htmlspecialchars($_SESSION['user']) ?> !</h2>
        <div class="mt-4">
            <a href="manifestations/add.php" class="btn btn-success mb-3">Ajouter une manifestation</a>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nom Manifestation</th>
                            <th>Date</th>
                            <th>Nombre de places</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($manifestations as $manifestation): ?>
                            <tr>
                                <td><?= htmlspecialchars($manifestation['titreManif']) ?></td>
                                <td><?= htmlspecialchars($manifestation['dateDebManif']) ?></td>
                                <td><?= htmlspecialchars($manifestation['nbPlacesManif']) ?></td>
                                <td>
                                    <a href="manifestations/delete.php?id=<?= $manifestation['id'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cette manifestation ?')">Supprimer</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>

<?php
// Inclure le footer
require_once 'includes/footer.php';
?>
