class Game {
  Osos [] arregloOsos;
  int cantOsos = 4;
  int estado = 1;
  Hor pjhora;

  Game() {
    pjhora = new Hor();
    arregloOsos = new Osos[cantOsos];
    for ( int i=0; i<cantOsos; i++ ) {
      arregloOsos[i] = new Osos();
    }
  }

  void draw(PImage fondo) {
    image(fondo, width/2, height/2);
    pjhora.draw();
    for ( int i=0; i<cantOsos; i++ ) {
      arregloOsos[i].draw();
      if ( arregloOsos[i].colision(pjhora.getX(), 
        pjhora.getY(), pjhora.getRadio())){
      }
    }
  }
void movimiento(){
 pjhora.mover(); 
  
}
  boolean gano() {
    if (pjhora.pasoLimite()) {
      return true;
    } else {
      return false;
    }
  }

}
