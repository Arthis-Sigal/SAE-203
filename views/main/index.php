
    <div class="carouselle">
        <div>
            <a href="<?= HTMLROOT ?>/Cinema"><img src="views/main/carouselle/img/logocinema.png" alt="Cinéma"></a>
        </div>
        <div>
        <a href="<?= HTMLROOT ?>/Jeux"><img src="views/Main/carouselle/img/logojeux.png" alt="2"></a>
        </div>
        <div>
        <a href="<?= HTMLROOT ?>/Football"><img src="views/main/carouselle/img/logofoot.png" alt="3"></a>
        </div>
        <div>
        <a href="../../game/index.html"><img src="views/main/carouselle/img/logorobot.png" alt="4"></a>
        </div>
    </div>

    <div class="presentation">
        <p>Je m'appelle SIGAL Arthis. Je suis en BUT MMI (métier du multimedia et de l'internet) à l'IUT de nouvelle calédonie.
            Sur ce site vous pouvez trouver quelque un de mes centre d'intéré et un mini jeux codée en JavaScript/CSS/HTML.
            Je l'ai codée de A à Z avec mes cours. Juste pour l'animation du ballon que j'ai copier un code existant.
            Au moment où vous liser ces lignes il devrait être
             <?php
                $date = date('H:i');
                echo $date;
            ?>
            donc bonne visite !
        </p>
        <div class="photodemoi">
            <img class="container" src="../../image/ratdestar.jpg" alt="moi fesant mon rat de star">
            <p class="container">Moi avec 47ter</p>
        </div>
    </div>
