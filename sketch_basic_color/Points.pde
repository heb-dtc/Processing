void initPoints(){
  v = new ArrayList<UVec3>();
  col = new ArrayList<Integer>();
  
  float n = random(30, 120);
  
  for(float i=0 ; i < n ; i++){
    v.add(new UVec3(random(width), random(height), random(15, 50)));
    col.add(colors.getRandomColor());
  }
}

