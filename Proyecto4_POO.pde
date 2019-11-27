import processing.sound.*;
import processing.video.*;

Movie base, toser, baile, sonido, grito, risa, golpe, pan1, pan2;

Flujo p;
Interaccion a;
Videos v;

PFont fuente;
SoundFile cancion, son;

void setup(){
  size(1080, 720);
  background(0);
  cursor(CROSS);
  
  pan1 = new Movie(this,"p1.mov");
  pan2 = new Movie(this,"p2.mov");
  base = new Movie(this,"base.mov");
  toser = new Movie(this, "mov1.mov");
  baile = new Movie(this, "mov2.mov");
  sonido = new Movie(this,"mov4.mov");
  grito = new Movie(this, "mov5.mov");
  risa = new Movie(this, "mov3.mov");
  golpe = new Movie(this,"mov6.mov");

  p = new Flujo();
  a = new Interaccion();
  v = new Videos();
  
  fuente = loadFont("Fuente.vlw");
  cancion = new SoundFile(this, "Can.mp3");
  cancion.loop();
  son = new SoundFile(this, "Son.mp3");
}

void movieEvent(Movie m) {
    if (m == base)
      base.read();
      
    if (m == toser) 
      toser.read();
      
    if (m == baile)
      baile.read();
      
    if (m == sonido) 
      sonido.read();
      
    if (m == grito)
      grito.read();
      
    if (m == risa)
      risa.read();
      
    if (m == golpe)
      golpe.read();
      
    if (m == pan1)
      pan1.read();
    
    if (m == pan2)
      pan2.read();
}

void mousePressed(){
  base.stop();
  p.DisplayF();
  v.Determinador(mouseX, mouseY);  
}

void draw(){
  p.PantallaActual();
}
