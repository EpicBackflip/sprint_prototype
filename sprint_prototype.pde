//test
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
float box3Xposition;
float box3Yposition;
float box3Width;
float box3Height;
float box4Xposition;
float box4Yposition;
float box4Width;
float box4Height;
float box5Xposition;
float box5Yposition;
float box5Width;
float box5Height;
float box6Xposition;
float box6Yposition;
float box6Width;
float box6Height;


void setup() {

  size(1280, 720);
  background(0, 0, 0);
  
  box1Xposition = 100;
  box1Yposition = 100;
  box1Width = 60;
  box1Height = 500;
  box2Xposition = 1080;
  box2Yposition = 100;
  box2Width = 60;
  box2Height = 500;
  box3Xposition = 200;
  box3Yposition = 50;
  box3Width = 250;
  box3Height = 100;
  box4Xposition = 700;
  box4Yposition = 50;
  box4Width = 300;
  box4Height = 100;
  box5Xposition = 300;
  box5Yposition = 650;
  box5Width = 700;
  box5Height = 100;
  box6Xposition = 500;
  box6Yposition = 50;
  box6Width = 100;
  box6Height = 100;
}

void draw() {

  mousey = mouseY;
  mousex = mouseX;

  background(0, 0, 0);
   if (mousex >= box1Xposition &&         // Right of the left edge AND
    mousex <= box1Xposition + box1Width &&    // Left of the right edge AND
    mousey >= box1Yposition &&         // Below the top AND
    mousey <= box1Yposition + box1Height) { 
      background(255,255,255);
    }
       if (mousex >= box2Xposition &&         // Right of the left edge AND
    mousex <= box2Xposition + box2Width &&    // Left of the right edge AND
    mousey >= box2Yposition &&         // Below the top AND
    mousey <= box2Yposition + box2Height) { 
      background(255,255,255);
    }
   if (mousex >= box3Xposition &&         // Right of the left edge AND
    mousex <= box3Xposition + box3Width &&    // Left of the right edge AND
    mousey >= box3Yposition &&         // Below the top AND
    mousey <= box3Yposition + box3Height) { 
      background(255,255,255);
    }
    if (mousex >= box4Xposition &&         // Right of the left edge AND
    mousex <= box4Xposition + box4Width &&    // Left of the right edge AND
    mousey >= box4Yposition &&         // Below the top AND
    mousey <= box4Yposition + box4Height) { 
      background(255,255,255);
    }
    if (mousex >= box5Xposition &&         // Right of the left edge AND
    mousex <= box5Xposition + box5Width &&    // Left of the right edge AND
    mousey >= box5Yposition &&         // Below the top AND
    mousey <= box5Yposition + box5Height) { 
      background(255,255,255);
    }
        if (mousex >= box6Xposition &&         // Right of the left edge AND
    mousex <= box6Xposition + box6Width &&    // Left of the right edge AND
    mousey >= box6Yposition &&         // Below the top AND
    mousey <= box6Yposition + box6Height) { 
      background(255,255,255);
    }
  //if (Collision(box1Xposition, box1Yposition, box1Width, box1Height) == true) {
  //  background(255, 255, 255);
  //} else {
  //  background(0, 0, 0);
  //}
  
  //if (Collision(box2Xposition, box2Yposition, box2Width, box2Height) == true) {
  //  background(255, 255, 255);
  //} else {
  //  background(0, 0, 0);
  //}
  rect(box3Xposition, box3Yposition, box3Width, box3Height);
  rect(box1Xposition, box1Yposition, box1Width, box1Height);
  rect(box2Xposition, box2Yposition, box2Width, box2Height);
  rect(box4Xposition, box4Yposition, box4Width, box4Height);
  rect(box5Xposition, box5Yposition, box5Width, box5Height);
  rect(box6Xposition, box6Yposition, box6Width, box6Height);

}

boolean Collision(float x, float y, float w, float h) {
  mousey = mouseY;
  mousex = mouseX;
  float tempx = x;
  float tempy = y;
  float tempw = w;
  float temph = h;
  
  if (mousex >= tempx &&         // Right of the left edge AND
    mousex <= tempx + tempw &&    // Left of the right edge AND
    mousey >= tempy &&         // Below the top AND
    mousey <= tempy + temph) {    // Above the bottom

    return true;
  } else {
    return false;
  }
}
