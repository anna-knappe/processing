class Ball {
  
  int posX;
  int posY;
  int directionVertical;
  int directionHorizontal;
  int diameter;
  int radious;
  color myColor;
  int speedX;
  int speedY;
  int MyName;
  
  Ball(int name){
    
    MyName = name;
  }
    
  void init(){
    
    speedX = (int)random(1,10);
    speedY = (int)random(1,10);
    directionVertical = 1;
    directionHorizontal = 1;
    posY = (int)random(0,height);
    posX = (int)random(100,width-100);
    
    changeAppearance();
  }
  
  void changeAppearance(){
    
    diameter = (int)random(50,100);
    radious = (diameter/2);
    myColor = color(random(0,255),random(0,255),random(0,255));
  }
  
  void move(){
    
    
    posX += (directionHorizontal * speedX);
    
    if (posX > (width-radious)){
      
      directionHorizontal *= -1;
     
      changeAppearance();
      speedX = (int)random(1,10);
      
      posX = (width-radious);
    }
    
    if (posX <= radious){
      
      directionHorizontal *= -1;
        
      changeAppearance();
      speedX = (int)random(1,10);
      
      posX = radious;
    }
    
    
    posY += (directionVertical * speedY);
    
    if (posY > (height-radious)){
      
      directionVertical *= -1;
     
      //changeAppearance();
      speedY = (int)random(10,20);
      
      posY = (height-radious);
    }
    
    if (posY <= radious){
      
      directionVertical *= -1;
        
      //changeAppearance();
      speedY = (int)random(10,20);
      posY = radious;
    }
    
    
  }
  
  void show(){
    
    fill(myColor);
    noStroke();
    
    //ellipse(posX, posY, diameter, diameter);   // comment this line and check what is different
  }
}
