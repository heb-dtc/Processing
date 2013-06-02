UColorTool colors;

void initColor(){
  colors = new UColorTool();
  
  //greens
  colors.addGradient(3, 10, "4AFF15", "EFFF15");
  
  //blues
  colors.addGradient(3, 10, "15FFF9", "09504E");
  
  //yellow
  colors.addGradient(3, 10, "FFFFFF", "FFFF00");
  
  //yellow
  colors.addGradient(3, 10, "FF8008", "FF6600");
  
  colors.generateColors();
}

 
