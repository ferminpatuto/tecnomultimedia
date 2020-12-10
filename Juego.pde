class Juego {
  int estado = 0;
  Inicio miInicio;
  Dialogo miDialogo;
  Imagen miImagen;
  Escena miEscena;
  Creditos miCreditos;
  Game miGame;

  void setup(){

  }
  Juego(PApplet miApp) {
      minim = new Minim(miApp);
      player = minim.loadFile("tormenta.wav");
      player.loop();
      miEscena = new Escena();
      miInicio = new Inicio();
      miDialogo = new Dialogo();
      miImagen = new Imagen();
      miCreditos = new Creditos();
      miGame = new Game();
    }
  
  void draw() {    
    if ( estado==0) {
      miInicio.iniciar();
      miInicio.click();
    } else if (estado != -1 && estado != 3) {
      miEscena.draw(miImagen.img[estado], miDialogo.dialogo[estado]);
      miEscena.click();
      miEscena.clickdos();
    } 
    if (estado == -1) {
      miCreditos.creditos(miImagen.logo);
    }
    if (estado==3) {
      miGame.draw(miImagen.img[3]);
    if (miGame.gano()) {
        estado=-1;
    }
      println(estado);
    }
  }


  void keyPressed() {
    miGame.movimiento();
   // if (player.isPlaying() ) 
    //{

     //player.play();
    //} else
    //{
    //player.pause();
    //}
    
  }

  void mouseClicked() {
    if (estado == -1) {
      cambiarAEstado(0);
    }

    if (miEscena.clickdos() && estado ==10) {
      cambiarAEstado(-1);
    }
    if (miEscena.click() && estado ==10) { // escena 10
      cambiarAEstado(0);
    }

    if (miEscena.click() && estado ==9) { // escena 9
      cambiarAEstado(7);
    }
    if (miEscena.clickdos() && estado ==9) {
      cambiarAEstado(6);
    }

    if (miEscena.clickdos() && estado ==8) {
      cambiarAEstado(10);
    }
    if (miEscena.click() && estado ==8) { // escena 8
      cambiarAEstado(9);
    }



    if (miEscena.click() && estado ==7) { // escena 7
      cambiarAEstado(-1);
    }
    if (miEscena.clickdos() && estado ==7) {
      cambiarAEstado(0);
    }

    if (miEscena.click() && estado ==6) { // escena 6
      cambiarAEstado(0);
    }
    if (miEscena.clickdos() && estado ==6) {
      cambiarAEstado(-1);
    }
    if (miEscena.click() && estado ==5) { // escena 5
      cambiarAEstado(7);
    }
    if (miEscena.clickdos() && estado ==5) {
      cambiarAEstado(6);
    }

    if (miEscena.click() && estado ==4) { // escena 4
      cambiarAEstado(5);
    }
    if (miEscena.clickdos() && estado ==4) {
      cambiarAEstado(6);
    }

    if (miEscena.clickdos() && estado ==3) {
      cambiarAEstado(9);
    }
    //  if (miEscena.click() && estado ==3) { // escena 3
    //   cambiarAEstado(-1);
    //}

    //if (miEscena.clickdos() && estado ==2) {
    //cambiarAEstado(8);
    //  }
    if (miEscena.click() && estado ==2) { // escena 2
      cambiarAEstado(3);
    }

    if (miEscena.clickdos() && estado ==1) {
      cambiarAEstado(4);
    }
    if (miEscena.click() && estado ==1) { // escena 1
      cambiarAEstado(2);
    }

    if (miInicio.click() && estado ==0) { //inicio
      cambiarAEstado(1);
    }
  }
  void cambiarAEstado( int nuevoEstado_ ) {
    estado = nuevoEstado_;
    // if ( nuevoEstado_ == 2 ) {
  }
}
