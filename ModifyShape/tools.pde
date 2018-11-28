void push() {
  pushMatrix();
  pushStyle();
}

void pop() {
  popMatrix();
  popStyle();
}

void screenshot() {
  save("data/img/img_" + str(round(random(1000, 9999))) + ".png");
}

void record(int nb) {
  saveFrame("data/movie/img#####.png");
  if ( frameCount > nb ) {
    exit();
  }
}

// Converts a PShape full of limits to a complete 3D Pshape
PShape charToShape(char c) {
  PShape s_char = g_font.getShape(c);
  
  PShape s = createShape();
  
  s.beginShape();
  
  s.noFill();
  
  for ( int i = 0; i < s_char.getVertexCount() - 1; ++i ) {
    PVector ver = s_char.getVertex(i);
    float hue = map(i, 0, s_char.getVertexCount(), 0, 360);
    s.stroke(ryb(hue), 100, 100);
    s.vertex(ver.x, ver.y, 0);
  }
  
  s.endShape();
    
  return s;
}
