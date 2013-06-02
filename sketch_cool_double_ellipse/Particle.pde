class Particle{
  float x, y, r;
  float xD, yD, rD;
  float R,G,B;
  
  Particle(){
    x = random(width);
    y = random(height);
    r = random(10, 30);
    
    defColor();
    
    //xD = random(-2 , 2);
    //yD = random(-2, 2);
    
    xD = random(3, 5);
    if(random(100)<50)
      xD = -xD;
      
    yD = random(3, 5);
    if(random(100)<50)
      yD = -yD;
      
    rD = random(0.5, 2);
    if(random(100) < 50)
      rD = -rD;    
  }
  
  void drawParticle(){
    fill(R,G,B, 70);
    noStroke();
    stroke(0, 80);
    ellipse(x, y, r, r);
    ellipse(y, x, r, r);
    x = x + xD;
    y = y + yD;
    r = r + rD;
    
    if(x > width){
      xD = -xD;
      defColor();
    }
    if( x < 0){
      xD = -xD;
      defColor();
    }
    if(y > height){
      yD = -yD;
      defColor();
    }
    if( y < 0){
      yD = -yD;
      defColor();
    }
    if(r < 5)
      rD = -rD;
    if(r > 50)
      rD = -rD;
    
   xD = xD + random(-0.5, 0.5);
   yD = yD + random(-0.5, 0.5);
  }
  
  void defColor(){
    R = random(0, 255);
    G = random(0, 255);
    B = random(0, 255);
  }
}
