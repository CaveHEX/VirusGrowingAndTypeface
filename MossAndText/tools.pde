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
