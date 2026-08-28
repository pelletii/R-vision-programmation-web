<?php
include_once "includes/header.php";
include_once "includes/sectionDAO.php";

$sections = getAllSections();
?>


<h2 class="mb-4">Liste des sections</h2>

<table class="table table-bordered table-striped">
    <thead class="table-light">
        <tr>
            <th>Libellé</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($sections as $section): ?>
            <tr>
                <td><?= htmlspecialchars($section['libelleSection']) ?></td>
                <td>
                    <a href="detailSection.php?id=<?= $section['id'] ?>" class="btn btn-primary btn-sm">
                        Voir détail
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<?php


include_once "includes/footer.php";
