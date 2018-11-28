class Letter {

  PVector pos;
  float angle;
  float amp = PI / 4;
  char c;
  color col = color(0, 0, 0);
  
  Letter(PVector pos_, char c_) {
    pos = pos_.copy();
    c = c_;
    angle = 0;
  }

  void update() {
    angle = map(vf.getNoise(pos), 0, 1, -amp, amp);
  }

  void render() {
    push();
    translate(pos.x, pos.y, pos.z);
    rotateZ(angle);
    fill(col);
    textFont(g_font);
    textSize(50);
    textAlign(CENTER, CENTER);
    text(str(c), 0, 0);
    pop();
  }

  void run() {
    this.update();
    this.render();
  }
}
