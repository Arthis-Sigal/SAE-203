<?php
namespace models;
class Cinema extends \app\Model{
public function __construct()
{
// Nous définissons la table par défaut de ce modèle
$this->table = "liste_films";
// Nous ouvrons la connexion à la base de données
$this->getConnection();
}

/**
* Retourne un article en fonction de son slug
*
* @param string $slug
* @return void
*/
public function findBySlug(string $slug){
    $sql = "SELECT * FROM `".$this->table."` WHERE `slug`='".$slug."'";
    $query = $this->_connexion->query($sql);
    return $query->fetch_assoc();
    }
    
}
?>