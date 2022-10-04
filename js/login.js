$(document).ready(function() {

//ouvrire la fenêtre
var a;

a = document.getElementById("connection");

a.addEventListener("click", open);

function open(){
    var afficherlog = document.querySelector("#loginconnect");
    var afficherfond = document.querySelector("#loginfond");
    var no_scroll = document.querySelector("#no_scroll");

        afficherlog.style.display = `block`;
        afficherfond.style.display = `block`;
        no_scroll.style.overflow = `hidden`;
}

//fermer la fenêtre
var x;

x = document.getElementById("croix");

x.addEventListener("click", close);

function close(){
    var afficherlog = document.querySelector("#loginconnect");
    var afficherfond = document.querySelector("#loginfond");
    var no_scroll = document.querySelector("#no_scroll");

    afficherlog.style.display = `none`;
    afficherfond.style.display = `none`;
    no_scroll.style.overflow = `visible`;
}


});
