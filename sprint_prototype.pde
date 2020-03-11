///test

float box1Xposition;
float box1Yposition;
float box1Width;
float box1Height;
float box2Xposition;
float box2Yposition;
float box2Width;
float box2Height;
float mousex;
float mousey;

// test

void setup(){

  size(1280,720);
  background(0,0,0);
  box1Xposition = 100;
  box1Yposition = 100;
  box1Width = 100;
  box1Height = 500;
  box2Xposition = 1080;
  box2Yposition = 100;
  box2Width = 100;
  box2Height = 500;
  
  
}

void draw(){
  mousey = mouseY;
  mousex = mouseX;
background(0,0,0);
      if(Collision(box1Xposition,box1Yposition,box1Width,box1Height) == true){
    background(255,255,255);
  }    else{
   background(0,0,0); 
  }
       if(Collision(box2Xposition,box2Yposition,box2Width,box2Height) == true){
    background(255,255,255);
  }else{
        background(0,0,0);
  }
  rect(box1Xposition,box1Yposition,box1Width,box1Height);
  rect(box2Xposition,box2Yposition,box2Width,box2Height);

  
}

boolean Collision(float x,float y,float w,float h){
  mousey = mouseY;
  mousex = mouseX;
  float tempx = x;
  float tempy = y;
  float tempw = w;
  float temph = h;
  if (mousex >= tempx &&         // right of the left edge AND
    mousex <= tempx + tempw &&    // left of the right edge AND
    mousey >= tempy &&         // below the top AND
    mousey <= tempy + temph) {    // above the bottom

        return true;   
      }
      else{
       return false; 
      }
      
    
      
     
  
  
}
