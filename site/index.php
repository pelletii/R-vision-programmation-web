<?php include_once "includes/header.php"; ?>

<div class="container">

    <h2 class="text-center mb-4">Bienvenue dans notre association</h2>

    <div class="row">

        <!-- MUSIQUE -->
        <div class="col-md-4">
            <div class="card shadow h-100 text-center">
                <div class="card-body">
                    <h3>🎵 Musique</h3>
                    <p>Apprenez et pratiquez différents instruments avec nos ateliers.</p>
                    <a href="musique.php?section=1" class="btn btn-primary">Découvrir</a>
                </div>
            </div>
        </div>

        <!-- THEATRE -->
        <div class="col-md-4">
            <div class="card shadow h-100 text-center">
                <div class="card-body">
                    <h3>🎭 Théâtre</h3>
                    <p>Exprimez-vous sur scène et développez votre talent d'acteur.</p>
                    <a href="theatre.php" class="btn btn-danger">Découvrir</a>
                </div>
            </div>
        </div>

        <!-- PEINTURE -->
        <div class="col-md-4">
            <div class="card shadow h-100 text-center">
                <div class="card-body">
                    <h3>🎨 Peinture</h3>
                    <p>Libérez votre créativité avec nos ateliers artistiques.</p>
                    <a href="peinture.php" class="btn btn-success">Découvrir</a>
                </div>
            </div>
        </div>

    </div>

</div>
<?php include_once "includes/footer.php"; ?>
