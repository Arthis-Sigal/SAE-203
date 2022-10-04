var yPos = 0;
var xPos = 0;




//--------------------------------COMMANDE--------------------------------//

document.addEventListener('keydown', function() {

//Monter Z
    if (event.code == "KeyW") {
         
                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");
        
                yPos -= 10;
                perso.style.transform = `rotate(-90deg)`
                the_cube.style.transform = `translate3d(${xPos}px, ${yPos}px, 0)`;
        }

//Descendre S
        if (event.code == "KeyS") {
        
                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");

                yPos += 10;

                perso.style.transform = `rotate(90deg)`
                the_cube.style.transform = `translate3d(${xPos}px, ${yPos}px, 0)`;
        }

//Droite D
        if (event.code == "KeyD") {
         
                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");

                xPos += 10;

                perso.style.transform = `rotate(0deg)`
                the_cube.style.transform = `translate3d( ${xPos}px, ${yPos}px, 0)`;
        } 

//Gauche Q
        if (event.code == "KeyA") {
         
                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");
        

                xPos -= 10;

                perso.style.transform = `rotate(180deg)`
                the_cube.style.transform = `translate3d( ${xPos}px, ${yPos}px, 0)`;
        } 

//Monter Droite E
        if (event.code == "KeyE") {

                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");

                yPos -= 10;
                xPos += 10;
        
                perso.style.transform = `rotate(-45deg)`
                the_cube.style.transform = `translate3d( ${xPos}px, ${yPos}px, 0)`;

        } 

 //Monter Gauche A
        if (event.code == "KeyQ") {

                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");

                yPos -= 10;
                xPos -= 10;
        
                perso.style.transform = `rotate(-135deg)`
                the_cube.style.transform = `translate3d( ${xPos}px, ${yPos}px, 0)`;
        } 

//Decendre Droite X
        if (event.code == "KeyZ") {
         
                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");

                yPos += 10;
                xPos -= 10;
                
                perso.style.transform = `rotate(135deg)`;
                the_cube.style.transform = `translate3d( ${xPos}px, ${yPos}px, 0)`;
        } 


//Decendre Gauche W
        if (event.code == "KeyX") {
         
                the_cube = document.querySelector("#the_cube");
                perso = document.querySelector("#perso");

                yPos += 10;
                xPos += 10;
        
                perso.style.transform = `rotate(45deg)`;
                the_cube.style.transform = `translate3d( ${xPos}px, ${yPos}px, 0)`;
        }

       
 });

 //--------------------------------BALLON--------------------------------//



let dvd = document.getElementById('dvd');
let interval_id;
let x_incr = 1;
let y_incr = 1;

function init() {
        

  dvd.style.position = 'absolute';
  setInterval(frame, 5);
}

function handle_collision() {
  let dvd_height = dvd.offsetHeight;
  let dvd_width = dvd.offsetWidth;
  let left = dvd.offsetLeft;
  let top = dvd.offsetTop;
  let win_height = window.innerHeight;
  let win_width = window.innerWidth;

  if (left <= 0 || left + dvd_width >= win_width) {
    x_incr = ~x_incr + 1;

  }
  if (top <= 0 || top + dvd_height >= win_height) {
    y_incr = ~y_incr + 1;

  }
}

function frame() {
  handle_collision();
  dvd.style.top = dvd.offsetTop + y_incr;
  dvd.style.left = dvd.offsetLeft + x_incr;
}

init();




 //--------------------------------Victoire--------------------------------//


 
 var perso = document.getElementById('the_cube');
 console.log(
   perso.getBoundingClientRect().left,
   perso.getBoundingClientRect().top,
   dvd.getBoundingClientRect().left,
   dvd.getBoundingClientRect().top
   );

   var lp, tp, ld, td;

lp = perso.getBoundingClientRect().left;
tp = perso.getBoundingClientRect().top;
ld = dvd.getBoundingClientRect().left;
td = dvd.getBoundingClientRect().top;
   if(lp = ld) {
           console.log (
                   "yoyoyo"
           )
   }