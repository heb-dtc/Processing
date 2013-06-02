
int col;

class Particle{
  UVec3 pos, dir;
  float r;
  float xD, yD, rD, dirD;
  float R,G,B;
  float countdown;
  
  Particle(){

    pos = new UVec3( width/2 + random(-100, 100), height/2 + random(-100,100));
    
    //creating a vector with random magnitude
    dir = new UVec3(random(2,4), 0);
    dir.rotate(random(radians(360)));
    
    r = random(10, 30);
    rD = random(0.5, 2);
    if(random(100) < 50)
      rD = -rD;    
    
     //initColor();
    //defColor();
    reinit();
  }
  
  void reinit(){
    
    col = colors.getRandomColor();
    
    dirD = random(0.25, 1.0);
    if(random(100) < 50) dirD = -dirD;
    
    countdown = random(150, 300);
  }    
  
  void drawParticle(){
    
    fill(col, 50);
    
    countdown = countdown - 1;
    if(countdown < 0)
      reinit();
      
    //fill(R,G,B, 10);
    noStroke();
    //stroke(0, 80);
    ellipse(pos.x, pos.y, r, r);
    ellipse(pos.y, pos.x, r, r);
    line(pos.x, pos.y, pos.y, pos.x);
    
    pos.add(dir);
    r = r + rD;
    dir.rotate(radians(dirD));
    
    //dirD = random(0.5, 1.5);
    //if(random(100) < 50) dirD = -dirD;
    
    if(pos.x > width-50 || pos.x < 50 || pos.y > height-50 || pos.y < 50){
      dir.rotate(radians(5));
      //defColor();
    }
    
    if(r < 5)
      rD = -rD;
    if(r > 50)
      rD = -rD;
  }
  
  void defColor(){
    R = random(0, 255);
    G = random(0, 255);
    B = random(0, 255);
  }
}
