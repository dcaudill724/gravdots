class gravdot{
  PVector position;
  float strength;
  
  gravdot(int x, int y, float strength){
    position = new PVector(x, y);
    this.strength = map(strength, 0, 255, 1, 5);
  }
  
  void applyForce(){
    
    for(circle c : circles){
      PVector dir = PVector.sub(position, c.position).normalize();
      float distance = constrain(dir.mag(), 5.0, 15.0);
      dir.mult(strength / sq(distance));
      c.addForce(dir);
    }
  }
}