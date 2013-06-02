import unlekker.util.*;
import unlekker.modelbuilder.*;
import unlekker.modelbuilder.filter.*;
import ec.util.*;

ArrayList<Particle> partList;
Particle p;

void setup(){
  size(600, 600);
  background(0);
  partList = new ArrayList<Particle>();
  partList.add(new Particle());
}

void draw(){
  for(int i=0 ; i < partList.size() ; i++){
    Particle p = partList.get(i);
    p.drawParticle();
  }
}

void mousePressed(){
  Particle p = new Particle();
  //p.pos.set(mouseX, mouseY);
  partList.add(p);
}
