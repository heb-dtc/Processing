import unlekker.util.*;
import unlekker.modelbuilder.*;
import unlekker.modelbuilder.filter.*;
import ec.util.*;

Particle p;

void setup(){
  size(600, 600);
  background(255);
  p = new Particle();
}

void draw(){
  p.drawParticle();
}
