class VectorField {

  float step = 5;
  float ex_x = 0.003;
  float ex_y = 0.003;
  float ex_time = 0.003;

  color col = color(120, 50, 100);

  VectorField() {
  }

  void update() {
  }

  void render() {
    beginShape(LINES);

    for ( float x = 0; x < width; x += step ) {
      for ( float y = 0; y < height; y += step ) {
        float n = noise(x * ex_x, y * ex_y, frameCount * ex_time);
        stroke(hsbVaryHS(col, n * 20, n * 50), n * 255);
        float len = 10 + n * 30;
        float angle = n * TWO_PI;
        float x_ = cos(angle) * len;
        float y_ = sin(angle) * len;
        
        vertex(x + x_, y + y_, 0);
        vertex(x - x_, y - y_, 0);
      }
    }

    endShape();
  }

  void run() {
    this.update();
    this.render();
  }
  
  float getNoise(PVector vec) {
    return noise(vec.x * ex_x, vec.y * ex_y, frameCount * ex_time);
  }
}
