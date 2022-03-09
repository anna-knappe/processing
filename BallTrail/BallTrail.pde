// A sketch that draws trail lines of bouncing balls

Ball []listOfBalls;

void setup(){
  fullScreen(P3D);
  background(0);
  prepareBalls();
}

void prepareBalls(){
  listOfBalls = new NewBall[500];
  
  for (int i=0;i<listOfBalls.length;i++){
    listOfBalls[i] = new NewBall(i);
    listOfBalls[i].init();
  }
}

void eraseBackground(){
  fill(0,10);
  rect(0,0,width,height);
}

void moveBalls(){
  float distance;

  for (int i=0;i<listOfBalls.length;i++){  
    for (int j=i;j<listOfBalls.length;j++){
      distance = dist(listOfBalls[i].posX,listOfBalls[i].posY ,listOfBalls[j].posX,listOfBalls[j].posY);
      
      if (distance < 100){
       
         stroke(255,50);
         strokeWeight(0.5);
         line( listOfBalls[i].posX,listOfBalls[i].posY,listOfBalls[j].posX,listOfBalls[j].posY);
      }
    }
    listOfBalls[i].show();
    listOfBalls[i].move();
  }
}
  
void draw(){
  eraseBackground();
  moveBalls();
}
