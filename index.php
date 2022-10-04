<!DOCTYPE html> <!-- bcp d'erreur au validateur, mais c'est à cause du php dans les pages -->
<html lang="fr">
<head>

        <meta charset="UTF-8">
        <title>SAE 203</title>


        <!-- JQUERY -->
        <script src="views/Main/carouselle/jquery-3.6.0.min.js"></script>

        <!-- BOOTSTARP -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>

        <!-- PERSO -->
        <link rel="stylesheet" href="css/monstyle.css">
        <link rel="stylesheet" href="css/animation.css">
        <link rel="stylesheet" href="views/layout/csslayout/commun.css">
        <script src="js/login.js"></script>
        <script src="js/scroll.js"></script>

                <!-- CAROUSELLE -->
        <link rel="stylesheet" href="views/Main/carouselle/css/css.css">
        <link rel="stylesheet" href="views/Main/carouselle/slick/slick.css">
        <link rel="stylesheet" href="views/Main/carouselle/slick/slick-theme.css">
        <script src="views/Main/carouselle/slick/slick.min.js"></script>
        <script src="views/Main/carouselle/js/js.js"></script>

        <!-- Agrandisement image -->
        <link rel="stylesheet" href="magnific-popup/magnific-popup.css">
        <script src="magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="js/js_pop_up.js"></script>


</head>
<body id="no_scroll">
<?php
// On définit le chemin absolu vers la racine du site
// pour garantir l'inclusion des fichiers nécessaires
// require_once des Contrôleurs, Modèles, Vues, ...
define('ROOT', str_replace('index.php','',$_SERVER['SCRIPT_FILENAME']));
define('HTMLROOT', $_SERVER['SERVER_NAME'] == "sae203.hopto.org" ? "/~pseudo": "");
// Inclusion des classes de base nécessaires aux modèles et aux contrôleurs
require_once(ROOT.'app/Model.php');
require_once(ROOT.'app/Controller.php');
// On sépare les paramètres et on les met dans le tableau $params
$params = explode('/', $_GET['p']);
// Si au moins 1 paramètre existe
if($params[0] != ""){
// On sauvegarde le 1er paramètre dans $controller en mettant sa 1ère lettre en majuscule
$controller = "\\controllers\\".ucfirst($params[0]);
// On sauvegarde le 2ème paramètre dans $action si il existe, sinon index
$action = isset($params[1]) ? $params[1] : 'index';
if(file_exists(ROOT.str_replace('\\', DIRECTORY_SEPARATOR, $controller).'.php')) {
// On appelle le contrôleur
require_once(ROOT.str_replace('\\', DIRECTORY_SEPARATOR, $controller).'.php');
// On instancie le contrôleur
$controller = new $controller();
if(method_exists($controller, $action)){
    // On supprime les 2 premiers paramètres
    unset($params[0]);
    unset($params[1]);
    // On appelle la méthode $action du contrôleur $controller
    call_user_func_array([$controller,$action], $params);
    } else {
    // On envoie le code réponse 404
    http_response_code(404);
    echo "La page recherchée n'existe pas";
    }
    } else {
    // On envoie le code réponse 404
    http_response_code(404);
    echo "La page recherchée n'existe pas";
    }
    }else{
    // Ici aucun paramètre n'est défini
    // On appelle le contrôleur par défaut
    require_once(ROOT.'controllers/Main.php');
    // On instancie le contrôleur
    $controller = new \controllers\Main();
    // On appelle la méthode index
    $controller->index();
    }


    //echo "<pre>".
    //print_r($_server, true)."</pre>";
    ?>
    
</body>
</html>



