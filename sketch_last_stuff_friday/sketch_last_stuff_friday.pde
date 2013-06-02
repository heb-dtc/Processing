//import processing.pdf.*;

import unlekker.util.*;
import unlekker.modelbuilder.*;
import unlekker.modelbuilder.filter.*;
import ec.util.*;

ArrayList<Particle> pList;
boolean doPDF = false;


void setup(){
  size(600, 600);
  background(0);
  
  initColor();
  pList = new ArrayList<Particle>();
  pList.add(new Particle());
}

void draw(){
  for(int i=0 ; i < pList.size() ; i++){
    Particle p = pList.get(i);
    p.drawParticle();
  }
}

void mousePressed(){
  Particle p = new Particle();
  p.pos.set(mouseX, mouseY);
  
  pList.add(p);
}

/*void keyPressed(){
  
  if(doPDF == false){
    //beginRecord(PDF, UIO.getIncrementalFileName(this.getClass().getSimpleName() + " ###.pdf", sketchPath));
    beginRecord(PDF, UIO.getIncrementalFilename(this.getClass().getSimpleName() + " ###.pdf",sketchPath));
    doPDF = true;
  }
  else{
    endRecord();
    doPDF = false;
  }
}*/
