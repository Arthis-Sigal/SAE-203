
        
        <header id="hautdepage">
            <div class="d-flex justify-content-between bg-secondary mb-3">
                <div class="p-2 text-white"><h1>SAE 203 SIGAL ARTHIS</h1></div>
                <div class="p-2  logounc"><a href="https://unc.nc" target="blank_"><img src="../../image/logounc.png" alt="logo unc"></a></div>
                <div class="d-flex justify-content-between bg-secondary mb-3">
                    <div class="p-2"><h2><a id="connection" class="btn">Login</a></h2></div>
                    <div class="p-2"><h2><a class="btn btn-dark" href="<?= HTMLROOT ?>/main">HOME</a></h2></div>
                </div>
            </div>
            
        </header>
        <main>
            <div class="login" id="loginconnect">
                <div class="container mt-3">
                    <a class="croix" id="croix">X</a>
                    <form>
                        <div class="mb-3 mt-3">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Entrer email" name="email">
                        </div>
                        <div class="mb-3">
                            <label for="pwd">Mot de passe:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Entrer mot de passe" name="pswd">
                        </div>
                        <div class="form-check mb-3">
                            <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="remember"> Se souvenir de moi
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary">Se connecter</button>
                    </form>
                </div>
            </div>
            <div class="fondlogin" id="loginfond"></div>
            <?= $content ?>            
        </main>
        <footer>
            <p class="bold">
                Coordonées
            </p>
            <p>
                Sigal Arthis <br/>
                9 rue victor hugo <br/>
                Téléphone : +687 52.98.50<br/>
                E-mail : <a href="mailto:sigalarthis@gmail.com">sigalarthis@gmail.com</a>
            </p>
            <div class="row" style="text-align: center;">
                <a class="col mx-auto d-block" href="https://www.instagram.com/arthis_sigal/?hl=fr" target="_blank"><img src="views/layout/csslayout/RS/insta.png" alt="instagram"/></a>
                <a class="col mx-auto d-block" href="https://www.facebook.com/arthis.sgl.1/" target="_blank"><img src="views/layout/csslayout/RS/fb.png" alt="facebook"/></a>
                <a class="col mx-auto d-block" href="https://www.youtube.com/channel/UCyWh5HeySA6P-fe64OvkOSQ" target="_blank"><img src="views/layout/csslayout/RS/ytb.png" alt="youtube"/></a>
                <a class="col mx-auto d-block" href="https://twitter.com/Link9754" target="_blank"><img src="views/layout/csslayout/RS/twitter.png" alt="twitter"/></a>
            </div>
        </footer>
