class trail {
  int x1;
  int y1;
  int x2;
  int y2;
  color c;
  float size = 5;

  trail(int x1, int y1, int x2, int y2, color c) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.c = c;
  }

  void update() {
    if(size > 0.1){
      size -= 0.1;
    } else {
      trailsToRemove.add(this); 
    }
  }

  void display(){
    strokeWeight(size);
    stroke(c);
    line(x1, y1, x2, y2); 
  }
}