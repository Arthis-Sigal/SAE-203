<div class="logofoot">
            <img class="footanimationFOTBALL" src="../../image/fo.png" alt="logo cinéma" style="width: 10vw;"> <!-- <a href="https://fr.freepik.com/vecteurs-libre/ballon-football-realiste-isole-vecteur-blanc_10601489.htm#query=foot&position=5&from_view=search">Image de macrovector</a> sur Freepik -->
            <img class="footanimationO rotaballon" src="../../image/o.png" alt="logo cinéma" style="width: 10vw;">
            <img class="footanimationFOTBALL" src="../../image/tball.png" alt="logo cinéma" style="width: 15vw;">
        </div>
        <div class="row">
<?php foreach($liste_joueur as $joueur): ?>

            <div class='col-6 col-lg-4 col-xxl-3 mb-2 joueuranimation'>
                <div class='card' style='width:20vw'>
                    <h4 class='card-title text-center'><?= $joueur['nom_joueur']?></h4>
                    <a class="popup" href='../../image/<?=$joueur['image']?>'>
                        <img class='card-img-top img-fluid' src='../../image/<?=$joueur['image']?>' alt='affiche de <?=$joueur['nom_joueur']?>' style='width:100%'>
                    </a>
                    <div class='card-body'>
                        <p>Club : <?=$joueur['club_joueur']?></p>
                        <p>Poste : <?= $joueur['activite_joueur']?> (<?= $joueur['age_joueur']?> ans)</p>
                        <p class="text-primary h6">STAT EN CLUB</p>
                        <p>Match : <?= $joueur['match_joueur']?></p>
                        <p>But : <?= $joueur['but_joueur']?></p>
                        <p>Passe décisive : <?= $joueur['pass_joueur']?></p>
                        <button type='button' id='<?=$joueur['image_idimage']?>_button' class='btn btn-primary'>Best of</button>
                    </div>
                </div>
                <div class='toast' id='toast_<?=$joueur['image_idimage']?>'>
                    <div class='toast-header'>
                    <iframe width='560' height='315' src='<?= $joueur['lien_video']?>' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>
                    <button type='button' class='btn-close' data-bs-dismiss='toast'></button>
                    </div>
                    <div class='toast-body'>
                    </div>
                </div>
            </div>
            
                <script>
                    document.getElementById('<?=$joueur['image_idimage']?>_button').onclick = function() {
                    var toastElList = [].slice.call(document.querySelectorAll('#toast_<?=$joueur['image_idimage']?>'))
                    var toastList = toastElList.map(function(toastEl) {
                        return new bootstrap.Toast(toastEl)
                    })
                    toastList.forEach(toast => toast.show()) 
                }
                </script>
<?php endforeach ?>
</div>