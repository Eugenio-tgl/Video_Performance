class Flujo{
  
  int pantalla = 1;
  boolean bas = true, dis = true;
  color c;
  boolean pant1 = true, pant2 = true;
  void PantallaActual(){
  switch (pantalla){
    case 1:
    Pantalla_Inicio();
    image(pan1, 0, 0);
    if(pant1)
    {
      pan1.loop();
      pant1 = false;
    }
    break;
    
    case 2:
    Pantalla_Instrucciones();
    pan1.stop();
    if(pant2)
    {
      pan2.loop();
      pant2 = false;
    }
    image(pan2, 0, 0);
    break;
    
    case 3:
    Pantalla_Juego();
    break;
    
    case 4:
    Pantalla_Final();
    break;
  }
  }
  
  void Pantalla_Inicio(){
    
    background(0);
    /*
    textSize(30);
    textAlign(CENTER, CENTER);
    textFont(fuente);
    
    text("Video Performance", 540, 200);
    text("Presione '1' para continuar", 540, 400);
    */
    
    if (keyPressed)
    if(key == '1')
    pantalla++;
    
  }
  
  void Pantalla_Instrucciones(){
    
    background(0);
    /*textSize(30);
    textAlign(CENTER, CENTER);
    textFont(fuente);
    
    text("-Instrucciones-", 540, 100);
    noFill();
    rectMode(CENTER);
    stroke(255);
    strokeWeight(5);
    rect(540, 360, 800, 600, 15);
    rectMode(CORNER);
    
    textSize(30);
    text("Presiona los botones para ", 540, 200);
    text("interactuar con la persona", 540, 250);
    text("Presione '2' para continuar.", 540, 590);
    */
    if (keyPressed)
    if(key == '2')
    {
      background(255);
      pantalla++;
    }
  }
  
  void Pantalla_Juego(){
    background(0);
    if(bas)
      {
        base.loop();
        bas = false;
      }
    v.Estados();
    if(dis) a.display();
  }
  
  void Pantalla_Final(){
    
  }
  
 void DisplayF(){
   dis = false;
  }
  
  void DisplayV(){
   dis = true;
  }

  
}
