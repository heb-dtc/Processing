class Particle{
  UVec3 pos, dir, posLine;
  float r, radiusLine;
  float xD, yD, rD, rDLine;
  float R,G,B;
  
  Particle(){

    pos = new UVec3(300, 300);
    posLine = new UVec3(300, 300);
   
    //creating a vector with random magnitude
    dir = new UVec3(random(2,4), 0);
    dir.rotate(random(radians(360)));
    
    r = 30;
    radiusLine = random(10, 30);
    
    defColor();
    
    rD = 10;
    
    rDLine = random(0.5, 2);
    if(random(100) < 50)
      rDLine = -rDLine   ;    
  }
  
  void drawParticle(){
    fill(R,G,B);
    noStroke();

    //stroke(R,G,B);
    ellipse(pos.x, pos.y, r, r);
    ellipse(posLine.x, posLine.y, radiusLine, radiusLine);
    ellipse(posLine.y, posLine.x, radiusLine, radiusLine);
    //line(pos.x, pos.y, pos.y, pos.x);

    //pos.add(dir);
    posLine.add(dir);
    r = r + rD;
    radiusLine = radiusLine + rDLine;
    defColor();
    
    if(posLine.x > width-50 || posLine.x < 50 || posLine.y > height-50 || posLine.y < 50){
      dir.rotate(radians(20));
      //defColor();
    }
    
    if(r < 30)
      rD = -rD;
    if(r > 200)
      rD = -rD;
      
    if(radiusLine < 5)
      rDLine = -rDLine;
    if(radiusLine > 50)
      rDLine = -rDLine;
  }
  
  void defColor(){
    R = random(0, 255);
    G = random(0, 255);
    B = random(0, 255);
  }
}
