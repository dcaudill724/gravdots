
ArrayList<circle> circles;
ArrayList<gravdot> gravdots;

ArrayList<trail> trails = new ArrayList<trail>();
ArrayList<trail> trailsToRemove = new ArrayList<trail>();


void setup(){
  size(600, 600);
  
  circles = new ArrayList<circle>();
  gravdots = new ArrayList<gravdot>();
  
  circles.add(new circle(100, 100, 5, color(0, 200, 255)));
  circles.add(new circle(500, 500, 5, color(255, 200, 0)));
  
  
  for(int i = 0; i < 5; i++){
    gravdots.add(new gravdot((int)random(600), (int)random(600), random(255))); 
  }
}

void draw(){ 
  background(0);
  
  for(gravdot g : gravdots){
    g.applyForce(); 
  }
  
  for(circle c : circles){
    c.update();
    c.display(); 
  }
  
  for(trail t : trails){
    t.update();
    t.display();
  }
  for(trail t : trailsToRemove){
    trails.remove(t);
  }
}