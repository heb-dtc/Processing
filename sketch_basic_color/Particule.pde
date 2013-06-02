class Particle{
  UVec3 pos, dir, posLine;
  float rW, rH;
  float xD, yD, rD;
  float R,G,B;
  
  Particle(float x, float y, float rad){

    pos = new UVec3(x, y);
   
    //creating a vector with random magnitude
    dir = new UVec3(random(2,4), 0);
    dir.rotate(random(radians(360)));
    
    rW = rad;
    rH = rad - random(0.5,2.5);
    defColor();
    rD = 0.8;
  }
  
  void drawParticle(){
    fill(R,G,B);
    //noStroke();
    stroke(255);
    strokeWeight(10);
    ellipse(pos.x, pos.y, rW, rH);
    ellipse(pos.y, pos.x, rH, rW);
    //line(pos.x, pos.y, pos.y, pos.x);
    
    pos.add(dir);
    rW = rW + rD;
    defColor();
    
    if(pos.x > width-50 || pos.x < 50 || pos.y > height-50 || pos.y < 50){
      dir.rotate(radians(20));
      defColor();
    }
    
    if(rW < 30)
      rD = -rD;
    if(rW > 50)
      rD = -rD;
  }
  
  void defColor(){
    R = random(0, 255);
    G = random(0, 255);
    B = random(0, 255);
  }
}
