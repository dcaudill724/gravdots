class circle{
  PVector position;
  PVector prevPos;
  int size;
  PVector velocity;
  color c;
  
  circle(int x, int y, int size, color c){
    position = new PVector(x, y);
    prevPos = position.copy();
    velocity = new PVector(0, 0);
    this.size = size;
    this.c = c;
  }
  
  void addForce(PVector force){
    velocity.add(force);
  }
  
  void update(){
    prevPos = position.copy();
    position.add(velocity);
    trails.add(new trail((int)position.x, (int)position.y, (int)prevPos.x, (int)prevPos.y, c));
  }
  
  void display(){
    strokeWeight(5);
    stroke(c);
    line(position.x, position.y, prevPos.x, prevPos.y); 
  }
}