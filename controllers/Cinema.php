<?php
    namespace controllers;
    class Cinema extends \app\Controller{
        /**
        * Cette méthode affiche la liste des articles
        *
        * @return void
        */
        public function index(){
        // On instancie le modèle "Articles"
        $this->loadModel('Cinema');
        // On stocke la liste des articles dans $articles
        $liste_films = $this->Cinema->getAll();
        // On envoie les données à la vue index
        $this->render('index', compact('liste_films'));
        
        
        /**
* Méthode permettant d'afficher un article à partir de son slug
*
* @param string $slug
* @return void
*/

    }
    public function lire(string $slug){
        // On instancie le modèle "Article"
        $this->loadModel('Articles');
        // On stocke l'article dans $article
        $articles = $this->Articles->findBySlug($slug);
        // On envoie les données à la vue lire
        $this->render('lire', compact('articles'));
            }
}
?>

