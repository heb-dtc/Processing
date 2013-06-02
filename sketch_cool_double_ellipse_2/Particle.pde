

class Particle{
  UVec3 pos, dir;
  float r;
  float xD, yD, rD;
  float R,G,B;
  
  Particle(){

    pos = new UVec3(random(width), random(height));
    
    //creating a vector with random magnitude
    dir = new UVec3(random(2,4), 0);
    
    dir.rotate(random(radians(360)));
    
    r = random(10, 30);
    
    defColor();
      
    rD = random(0.5, 2);
    if(random(100) < 50)
      rD = -rD;    
  }
  
  void drawParticle(){
    fill(R,G,B, 20);
    noStroke();
    //stroke(0, 80);
    stroke(R,G,B, 80);
    ellipse(pos.x, pos.y, r, r);
    ellipse(pos.y, pos.x, r, r);
    line(pos.x, pos.y, pos.y, pos.x);
    
    pos.add(dir);
    r = r + rD;
    
    if(pos.x > width-50 || pos.x < 50 || pos.y > height-50 || pos.y < 50){
      dir.rotate(radians(20));
      defColor();
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
