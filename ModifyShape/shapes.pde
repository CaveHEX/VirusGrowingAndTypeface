PShape makeShapeCircle() {
  PShape s = createShape();

  float rad = 230;

  s.beginShape();
  s.noFill();
  s.stroke(0, 0, 100);

  for ( float a = 0; a < TWO_PI; a += TWO_PI / 1000 ) {
    float x = cos(a) * rad;
    float y = sin(a) * rad;
    s.stroke(ryb(degrees(a)), 100, 100);
    s.vertex(x, y, 0);
  }

  s.endShape();

  //s.enableStyle();

  return s;
}

PShape makeShapeDiamond() {
  float r = 120;

  PShape s = createShape();

  s.beginShape(TRIANGLES);

  float x, y, z;

  // Top

  z = 0;
  x = cos(0) * r;
  y = sin(0) * r;
  s.vertex(x, y, z);

  x = cos(PI) * r;
  y = sin(PI) * r;
  s.vertex(x, y, z);

  x = cos(HALF_PI) * r;
  y = sin(HALF_PI) * r;
  s.vertex(x, y, z);

  x = cos(0) * r;
  y = sin(0) * r;
  s.vertex(x, y, z);

  x = cos(PI) * r;
  y = sin(PI) * r;
  s.vertex(x, y, z);

  x = cos(-HALF_PI) * r;
  y = sin(-HALF_PI) * r;
  s.vertex(x, y, z);

  // Tip
  for ( int i = 0; i < 3; ++i ) {
    float x1 = cos(HALF_PI * i) * r;
    float y1 = sin(HALF_PI * i) * r;
    float x2 = cos(HALF_PI * (i + 1)) * r;
    float y2 = sin(HALF_PI * (i + 1)) * r;
    s.vertex(x1, y1, z);
    s.vertex(x2, y2, z);
    s.vertex(0, 0, r);
  }

  s.endShape();

  s.disableStyle();

  return s;
}

PShape makeShapeWeird() {
  PShape shape = createShape();

  shape.beginShape();
  shape.noFill();
  shape.stroke(0, 0, 100);
  vertex(0, 0, 0);
  for ( float a = 0; a < TWO_PI; a += TWO_PI/10000) {
    float x = cos(a * sin(a*4.2)) * cos(a * 0.001) * 120;
    float y = sin(a * cos(a*0.64)) * sin(a * 5.0) * 120;
    float z = cos(a * 6.45) * 50 + sin(a * 0.8) * 120;
    shape.stroke(ryb(degrees(a)), 100, 100);
    shape.vertex(x, y, z);
  }
  shape.endShape();

  //shape.disableStyle();

  return shape;
}
