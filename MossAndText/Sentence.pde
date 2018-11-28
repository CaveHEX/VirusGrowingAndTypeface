class Sentence {
 
  PVector pos;
  float spacing = 35;
  
  ArrayList<Letter> letters;
  
  Sentence(String text) {
    pos = new PVector(width * 0.15, height * 0.4, 10); // 10 on Z to be in the foreground
    this.setSentence(text);
  }
  
  void update() {
    for ( Letter l : letters ) {
     l.update(); 
    }
  }

  void render() {
    for ( Letter l : letters ) {
     l.render(); 
    }
  }

  void run() {
    this.update();
    this.render();
  }


  void setSentence(String text) {
    letters = new ArrayList<Letter>();
    
    for ( int i = 0; i < text.length(); ++i ) {
      PVector letterPos = pos.copy();
      letterPos.x += i * spacing;
      letters.add(new Letter(letterPos, text.charAt(i)));
    }
  }
}
