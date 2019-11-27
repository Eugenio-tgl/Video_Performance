class Videos{
  
  color c;
  boolean[] est = new boolean[7]; 
  boolean Base = true, s = true;
  
  Videos(){
   for(int i = 0; i <= 4; i++)
     est[i] = false; 
  }
  
  void Determinador(float x, float y){
    
    for(int i=0; i<=5; i++)
      if(((x > (150 + 130*i) && (x < 300 + 130*i)) && ((y > 0 ) && (y < 50))))
        Reproducir(i);
  }
  
  void Reproducir(int n){
    switch (n){
      case 0:
      toser.play();
      est[0] = true;
      break;
      
      case 1:
      baile.play();
      est[1] = true;
      break;
      
      case 2:
      sonido.play();
      est[2] = true;
      break;
      
      case 3:
      grito.play();
      est[3] = true;
      break;
      
      case 4:
      risa.play();
      est[4] = true;
      break;
      
      case 5:
      golpe.play();
      est[5] = true;
      break;
    }
  }
  
  void Estados(){
    
    if (Base)
    {
     for(int i = 0; i <= width; i+=15)
      for(int j= 0; j <= height; j+=15)
      {
        c = color (base.get(i, j));
        
        stroke(c);
        strokeWeight(10);
        noFill();
        line(i, j, i + random(-30, 30), j + random(0, 30));
      } 
    }
    
    if(est[0])
    {
      for(int i = 0; i <= width; i+=15)
        for(int j= 0; j <= height; j+=15)
        {
          c = color (toser.get(i, j));

          stroke(c);
          strokeWeight(10);
          noFill();
          line(i, j, i + random(-30, 30), j + random(0, 30));
        }
        Base = false;
        if(toser.time() > 11)
        {
          toser.stop();
          est[0] = false;
          Base = true;
          base.loop();
          p.DisplayV();
        }
    }
      
    if(est[1])
    {
      for(int i = 0; i <= width; i+=15)
        for(int j= 0; j <= height; j+=15)
        {
          c = color (baile.get(i, j));
          
          stroke(c);
          strokeWeight(10);
          noFill();
          line(i, j, i + random(-30, 30), j + random(0, 30));
        }
        
        Base = false;
        if(baile.time() > 13)
        {
          baile.stop();
          est[1] = false;
          Base = true;
          base.loop();
          p.DisplayV();
        }
    }
    
    if(est[2])
    {
      for(int i = 0; i <= width; i+=15)
        for(int j= 0; j <= height; j+=15)
        {
          c = color (sonido.get(i, j));
          
          stroke(c);
          strokeWeight(10);
          noFill();
          line(i, j, i + random(-30, 30), j + random(0, 30));
        }
        if(s)
        {
          if(sonido.time() > 1)
            {
              son.play();
              s = false;
            }
 
        }
        
        if(sonido.time() > 6)
        son.stop();
        
        Base = false;
        if(sonido.time() > 12)
        {
          sonido.stop();
          est[2] = false;
          Base = true;
          base.loop();
          p.DisplayV();
          s = true;
        }
    }
    
    if(est[3])
    {
      for(int i = 0; i <= width; i+=15)
        for(int j= 0; j <= height; j+=15)
        {
          c = color (grito.get(i, j));
          
          stroke(c);
          strokeWeight(10);
          noFill();
          line(i, j, i + random(-30, 30), j + random(0, 30));
        }
        Base = false;
        if(grito.time() > 11)
        {
          grito.stop();
          est[3] = false;
          Base = true;
          base.loop();
          p.DisplayV();
        }
    }
    
    if(est[4])
    {
      for(int i = 0; i <= width; i+=15)
        for(int j= 0; j <= height; j+=15)
        {
          c = color (risa.get(i, j));
          
          stroke(c);
          strokeWeight(10);
          noFill();
          line(i, j, i + random(-30, 30), j + random(0, 30));
        }
        
        Base = false;
        if(risa.time() > 14)
        {
          risa.stop();
          est[4] = false;
          Base = true;
          base.loop();
          p.DisplayV();
        }
    }
    
    if(est[5])
    {
      for(int i = 0; i <= width; i+=15)
        for(int j= 0; j <= height; j+=15)
        {
          c = color (golpe.get(i, j));
          
          stroke(c);
          strokeWeight(10);
          noFill();
          line(i, j, i + random(-30, 30), j + random(0, 30));
        }
        
        Base = false;
        if(golpe.time() > 11)
        {
          golpe.stop();
          est[5] = false;
          Base = true;
          base.loop();
          p.DisplayV();
        }
    }
    
  }
  
  void EstadoCero(){
   for(int i = 0; i <= 5; i++)
     est[i] = false;
    
  }
  
}
