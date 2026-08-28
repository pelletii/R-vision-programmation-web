<!doctype html>
<html lang="fr">
  <head>
    <meta charset="UTF-8" />
    <title>Association Culturelle</title>

    <!-- Bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
    <div class="container">
    <!-- HEADER IMAGE -->
    <header
      class="header-image text-center text-white d-flex align-items-center justify-content-center"
    >
      <h1>Association Culturelle</h1>
    </header>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="index.php">Accueil</a>

    <button
      class="navbar-toggler"
      data-bs-toggle="collapse"
      data-bs-target="#menu"
    >
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="menu">
      <ul class="navbar-nav ms-auto">

        <li class="nav-item">
          <a class="nav-link" href="connexion.php">Connexion</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="musique.php">Musique</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="theatre.php">Théâtre</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="peinture.php">Peinture</a>
        </li>

        <!-- MENU MAINTENANCE -->
        <li class="nav-item dropdown">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="maintenanceDropdown"
            role="button"
            data-bs-toggle="dropdown"
            aria-expanded="false"
          >
            Maintenance
          </a>
          <ul class="dropdown-menu" aria-labelledby="maintenanceDropdown">
            <li>
              <a class="dropdown-item" href="section.php">Section</a>
            </li>
            <li>
              <a class="dropdown-item" href="activite.php">Activité</a>
            </li>
            <li>
              <a class="dropdown-item" href="lieu.php">Lieu</a>
            </li>
          </ul>
        </li>

      </ul>
    </div>
  </div>
</nav>
