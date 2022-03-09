float t = 0,
      n,
      y;
int x = 0,
    dist = 5;

void setup() {
  size(800, 600);
  frameRate(15);
  noStroke();
}

void draw() {
  background(0);
  for (int a = 0; a < 3; a++) {
    
    fill(random(255), random(255), random(255));
    
    for (int i = 0; i < width/dist; i ++) {
  
      n = noise(t);
      y = map(n,0,1,0,height);
  
      ellipse(x,y,dist,dist);
  
      x+= dist;
      t += 0.01;
    }
  x = 0;
  y = 0;
  }
}
