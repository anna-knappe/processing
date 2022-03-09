// Disturbing Moire pattern creator

float x = 0;
float y = 0;
float x2 = 0;
float y2 = height;

float xspeed = 6;
float yspeed = 3;
float xspeed2 = 4;
float yspeed2 = 2;

void setup() {
  size(800, 600);
  background(255);

  for (int i =0; i < height; i+= 2) {
    stroke(0);
    line(0, i, width, i);
  }
}

void draw() {

  x += xspeed;
  y += yspeed;
  x2 += xspeed2;
  y2 += yspeed2;
 
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  if ((x2 > width) || (x2 < 0)) {
    xspeed2 = xspeed2 * -1;
  }
  if ((y2 > height) || (y2 < 0)) {
    yspeed2 = yspeed2 * -1;
  }

  noStroke();
  noFill();
  stroke(0);
  line(x, y, x2, y2);
}
