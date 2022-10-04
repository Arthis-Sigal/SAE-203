<?php
    namespace controllers;
    class Football extends \app\Controller{
        /**
        * Cette méthode affiche la liste des articles
        *
        * @return void
        */
        public function index(){
        // On instancie le modèle "Articles"
        $this->loadModel('Football');
        // On stocke la liste des articles dans $articles
        $liste_joueur = $this->Football->getAll();
        // On envoie les données à la vue index
        $this->render('index', compact('liste_joueur'));
        
        
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

