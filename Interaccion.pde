class Interaccion{
  
  float x, y;
  
  /*Interaccion(float x_, float y_)
  {
    this.x = x_;
    this.y = y_;
  }*/
  
  void display(){
    textAlign(CENTER, CENTER);
   // textFont(fuente);
   strokeWeight(3);
   stroke(30);
   for(int i=0; i<=5; i++)
   {
    fill(100,0, 0);
    rect(150+(130*i), 0, 130, 50, 10,10,10,10); 
   }
   Identificador();
   
   fill(200);
   textFont(fuente);
   textSize(18);
   text("Toser", 220, 25);
   text("Bailar", 350, 25);
   text("Sonido", 480, 25);
   text("Gritar", 610, 25);
   text("Reirse", 740, 25);
   text("Golpearse", 870, 25);
  }
  
  void Identificador()
  {
    x = mouseX;
    y = mouseY;
    
    for(int i=0; i<=5; i++)
    {
      if(((x > (130*i+150) && (x < 300 + 130*i)) && ((y > 0 ) && (y < 50))))
        {
          fill(150, 0, 0);
          rect(150+(130*i), 0, 130, 50, 10, 10, 10, 10); 
        }
      }
    }
  }
