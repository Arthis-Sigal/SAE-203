        <div class="mb-5 cinemanimation" style="margin-left: 30vw;">
            <img src="../../image/logocine.png" alt="logo cinéma" style="width: 40vw;">
        </div>
        <div class="row">
<?php foreach($liste_films as $film): ?>

            <div class='col-6 col-lg-4 col-xxl-3 mb-2 filmanimation'>
                <div class='card' style='width:20vw'>
                    <h4 class='card-title text-center'><?= $film['titre_film']?></h4>
                    <a class="popup" href='../../image/<?=$film['image']?>'>
                        <img class='card-img-top img-fluid' src='../../image/<?=$film['image']?>' alt='affiche de <?=$film['titre_film']?>' style='width:100%'>
                    </a>
                    <div class='card-body'>
                        <p>Durée : <?=$film['duree_film']?></p>
                        <p>Style : <?= $film['categorie_film']?></p>
                        <p>Acteur : <?= $film['acteur_film']?></p>
                        <p>Un film de <?= $film['Realisateur']?></p>
                        <p>Producteur : <?= $film['production_film']?></p>
                        <button type='button' id='<?=$film['image_idimage']?>_button' class='btn btn-primary btncinema'>Bande d'annonce</button>
                    </div>
                </div>
                <div class='toast' id='toast_<?=$film['image_idimage']?>'>
                    <div class='toast-header'>
                    <iframe width='560' height='315' src='<?= $film['lien_video']?>' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>
                    <button type='button' class='btn-close' data-bs-dismiss='toast'></button>
                    </div>
                    <div class='toast-body'>
                    </div>
                </div>
            </div>
            
                <script>
                    document.getElementById("<?=$film['image_idimage']?>_button").onclick = function() {
                    var toastElList = [].slice.call(document.querySelectorAll("#toast_<?=$film['image_idimage']?>"))
                    var toastList = toastElList.map(function(toastEl) {
                        return new bootstrap.Toast(toastEl)
                    })
                    toastList.forEach(toast => toast.show()) 
                }
                </script>
<?php endforeach ?>
</div>