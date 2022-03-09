// A sketch that takes images from the root folder, imports them to an array
// and draws a pointillized presentation of the first image.
// Click to switch the image.

int imageAmount = 10;
int speed = 200;
int index = 0;
int offSetX;
int offSetY;

PImage [] imageList;

void setup() {

  background(0);
  fullScreen(P3D);
  noStroke();

  createImageList();
  margins();
}

void createImageList() {
  imageList = new PImage[imageAmount];

  for (int i=0; i < imageAmount; i++) {
    imageList[i] = loadImage(i+".jpg");
  }
}

void margins() {
  offSetX = (displayWidth - imageList[index].width)/2; 
  offSetY = (displayHeight - imageList[index].height)/2;
}

void mousePressed() {
  index++;

  if (index >= imageAmount) {
    index = 0;
  }
}

void pointillism() {
  int posX;
  int posY;
  int location;
  float r, g, b;

  posX     = int(random(imageList[index].width)); 
  posY     = int(random(imageList[index].height)); 
  location = posX + (posY * imageList[index].width);

  margins();

  for (int i=0; i<speed; i++)  // 
  {
    posX     = int(random(imageList[index].width));  
    posY     = int(random(imageList[index].height)); 
    location = posX + (posY * imageList[index].width); 

    r = red(imageList[index].pixels[location]); 
    g = green(imageList[index].pixels[location]); 
    b = blue(imageList[index].pixels[location]); 

    fill(r, g, b, 75); 
    ellipse(posX+offSetX, posY+offSetY, 3, 3);   

  }
}

void draw() {
  pointillism();
}
