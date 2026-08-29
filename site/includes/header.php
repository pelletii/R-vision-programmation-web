<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?php
        // Titre dynamique selon la page
        if (isset($pageTitle)) {
            echo htmlspecialchars($pageTitle);
        } else {
            echo "Gestion des Manifestations";
        }
        ?>
    </title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- CSS personnalisé -->
    <link href="/mediatheque_manifestations/css/style.css" rel="stylesheet">
</head>
<body>
    <!-- Barre de navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/mediatheque_manifestations/dashboard.php">Gestion des Manifestations</a>
            <div class="navbar-nav">
                <?php if (isset($_SESSION['user'])): ?>
                    <a class="nav-link" href="/mediatheque_manifestations/manifestations/add.php">Ajouter</a>
                    <a class="nav-link" href="/mediatheque_manifestations/logout.php">Déconnexion</a>
                <?php else: ?>
                    <a class="nav-link" href="/mediatheque_manifestations/index.php">Connexion</a>
                <?php endif; ?>
            </div>
        </div>
    </nav>

    <!-- Conteneur principal -->
    <div class="container mt-4">