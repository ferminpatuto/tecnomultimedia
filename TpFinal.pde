/* Fermin patuto
legajo 81777/2
Tp final
Se arreglo el sonido, y el llegar al final de pantalla*/
import ddf.minim.*;
Minim  minim;
AudioPlayer player;
Juego juego;

boolean DEBUG = false;
void setup() {
  size(600, 400);
  background(240);
  surface.setResizable(true);
  imageMode(CENTER);
  textAlign(CENTER);
  juego = new Juego(this);
  frameRate(14);
  juego.setup();
}

void draw() {
  juego.draw();
}




void mouseClicked() {
  juego.mouseClicked();
}



void keyPressed() {
  juego.keyPressed();
}
