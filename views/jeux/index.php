<div class="mb-5" style="margin-left: 30vw;">
            <img class="jeuxanimation" src="../../image/logojeux.png" alt="logo cinéma" style="width: 40vw;">
        </div>
        <div class="row">
<?php foreach($liste_jeux as $jeux): ?>

            <div class='col-6 col-lg-4 col-xxl-3 mb-2 gameanimation'>
                <div class='card' style='width:20vw'>
                    <h4 class='card-title text-center'><?= $jeux['titre_jeux']?></h4>
                    <a class="popup" href='../../image/<?=$jeux['image']?>'>
                        <img class='card-img-top img-fluid' src='../../image/<?=$jeux['image']?>' alt='affiche de <?=$jeux['titre_jeux']?>' style='width:100%'>
                    </a>
                    <div class='card-body'>
                        <p>Durée : <?=$jeux['temps_jeux']?></p>
                        <p>Catégorie : <?= $jeux['categorie_jeux']?></p>
                        <p>Date : <?= $jeux['date_jeux']?></p>
                        <p>Développer par <?= $jeux['developpeur_jeux']?></p>
                        <p>Edité par <?= $jeux['editeur_jeux']?></p>
                        <button type='button' id='<?=$jeux['image_idimage']?>_button' class='btn btn-primary'>Bande d'annonce</button>
                    </div>
                </div>
                <div class='toast' id='toast_<?=$jeux['image_idimage']?>'>
                    <div class='toast-header'>
                    <iframe width='560' height='315' src='<?= $jeux['lien_video']?>' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>
                    <button type='button' class='btn-close' data-bs-dismiss='toast'></button>
                    </div>
                    <div class='toast-body'>
                    </div>
                </div>
            </div>
            
                <script>
                    document.getElementById('<?=$jeux['image_idimage']?>_button').onclick = function() {
                    var toastElList = [].slice.call(document.querySelectorAll('#toast_<?=$jeux['image_idimage']?>'))
                    var toastList = toastElList.map(function(toastEl) {
                        return new bootstrap.Toast(toastEl)
                    })
                    toastList.forEach(toast => toast.show()) 
                }
                </script>
<?php endforeach ?>
</div>