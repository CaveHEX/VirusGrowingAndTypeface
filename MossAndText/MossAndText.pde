import java.util.*;

VectorField vf;
Sentence sentence;
PFont g_font;

void setup() {
  size(1000, 1000, P3D);
  colorMode(HSB, 360, 100, 100);
  frameRate(60);

  vf = new VectorField();
  g_font = loadFont("SitkaSmall-Bold-48.vlw");
  
  sentence = new Sentence("Fish'n chips!");
}


void draw() {
  background(0);

  push();

  vf.run();
  sentence.run();

  pop();
}
