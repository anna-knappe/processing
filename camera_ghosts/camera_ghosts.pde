import processing.video.*;

Capture cam;

void setup() {
  fullScreen();
  //size(1920, 1080);
  background(255);
  noStroke();
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("no cameras");
    exit();
  } else {
    println("Cameras: ");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    //cam = new Capture(this, cameras[0]);
    cam = new Capture(this, width, height, "pipeline:avfvideosrc device-index=0 ! video/x-raw, width=640, height=480, framerate=30/1");
    cam.start();
  
  }
}

void captureEvent(Capture cam) {
  cam.read();
}

void ellipses() {
  
  cam.loadPixels();
  
  int posX = int(random(cam.width));
  int posY = int(random(cam.height));
  int loc = posX + posY * cam.width; 
  
  float r = red(cam.pixels[loc]);
  float g = green(cam.pixels[loc]);
  float b = blue(cam.pixels[loc]);
  
  fill(r, g, b, 75);
  
  float w = random(3, 15);
  float h = random(5, 15);
  
  rect(posX, posY, w, h);
  
}

void transparency() {
  tint(255, 10);
  image(cam, 0, 0);
}


void draw() {
  
  for (int i = 0; i < 20; i++) {
    ellipses();
  }
  
  //transparency();
  
}
