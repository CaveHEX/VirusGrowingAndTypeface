PShape g_shape;
PFont g_font;

void setup() {
  size(1000, 1000, P3D);
  colorMode(HSB, 360, 100, 100);
  frameRate(60);

  g_font = createFont("Magnificent.ttf", 128);
  //g_shape = makeShapeWeird();
  //g_shape = makeShapeCircle();
  g_shape = charToShape('M');
}

void draw() {
  background(0);

  push();
  float shake_amp = 0.1;

  for ( int i = 0; i < g_shape.getVertexCount(); ++i ) {
    PVector ver = g_shape.getVertex(i);
    ver.x += random(-shake_amp, shake_amp);
    ver.y += random(-shake_amp, shake_amp);
    ver.z += random(-shake_amp, shake_amp);
    g_shape.setVertex(i, ver);
  }

  translate(width * 0.5, height * 0.5, 0);
  rotateY(sin(frameCount * 0.1) * PI / 6);
  scale(1.3);
  noFill();
  stroke(0, 0, 100);
  shape(g_shape);
  pop();

  fill(0, 0, 100);
  text("Press keys to change the selection", 10, 100);
}

void keyPressed() {
  g_shape = charToShape(key);
}
