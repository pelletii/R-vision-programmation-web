# Afficher de l'information à partir d'une base de données
## Comprendre la structure du site 
1. afficher la page d'accueil du site et à partir de l'option maintenance, la liste des sections.
2. analyser le script `section.php` et mettre des commentaires pour expliquer chacune des lignes. Ne pas oublier les fonctions appelées qui se trouvent dans d'autres programmes du site
3. expliquer le rôle de `connect.php`
4. expliquer le rôle de `sectionDAO.php`

## Modifier la liste des sections
On souhaite ajouter une colonne avec le nom du référent. Quelques questions à se poser avant de débuter la modification :
- Faut il écrire une nouvelle requête ou modifier une requête existante
- où faut il tester la requête avant de l'écrire dans le programme
- quel est le script à modifier pour ajouter cette information.
- que faut il ajouter comme balises?
- Quelle partie du traitement doit on modifier

## Afficher la liste des lieux
en vous aidant du script *section.php*, vous devrez écrire le script `lieu.php` qui va afficher le nom des lieux et un bouton d'action, `voir détail`. Quelques questions à se poser avant de débuter la modification de l'application web : 

- Faut il écrire une nouvelle requête ou modifier une requête existante
- Faut il ajouter un nouveau script xxxDAO.php
- où faut il tester la requête avant de l'écrire dans le programme
- quel est le script à modifier ou à créer pour ajouter cette fonctionnalité.

## afficher le détail d'un lieu
Quand on clique sur le bouton `voir Détail`, on doit afficher le détail du lieu avec toutes les informations. Attention, 
- les valeurs des clés primaires ne doivent pas être utilisées sur une IHM. 
- les valeurs des clés étrangères ne doiven pas être affichées. On ira cherche les informations dans les autres tables si besoin.

### Démarche
1. modifier le script `lieuDAO.php` afin d'ajouter une fonction qui renvoie le détail d'un lieu à partir de la valeur de la clé primaire passée en paramètre.
2. Créer un script `detailLieu.php` qui affichera le détail du lieu sélectionné
3. Appeler ce script à partir de `lieu.php`

## Afficher le détail d'une section 

en vous aidant du travail réalisé, afficher le détail d'une section lorsqu'on clique sur le bouton `voir Détail`