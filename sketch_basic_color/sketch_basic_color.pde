import unlekker.util.*;
import unlekker.modelbuilder.*;
import unlekker.modelbuilder.filter.*;
import ec.util.*;

ArrayList<UVec3> v;
ArrayList<Integer> col;
ArrayList<Particle> pList;

boolean doInit = false;

float prevX, prevY;

void setup(){
  size(600,600);
  pList = new ArrayList<Particle>();
  
  initAll();
}

void draw(){
  background(50);
  
  for(int i=0 ; i < pList.size() ; i++){
    //fill(col.get(i));
    Particle p = pList.get(i);
    p.drawParticle();
  }
  
  if(doInit){
    initAll();
    doInit = false;
  }
}

void initAll(){
  initColor();
  initPoints();
  
  pList = new ArrayList<Particle>();
  
  for(int i=0 ; i < v.size() ; i++){
    UVec3 tmp = v.get(i);
    
    Particle p = new Particle(tmp.x, tmp.y, tmp.z);
    pList.add(p);
  }
}

void mousePressed(){
  doInit = true;
}
