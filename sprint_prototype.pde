// All variables
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

// Background variables
PImage backgroundLayer;
float backgroundPosition = 0;

void setup() {
  // Set window size
  size(1280, 720);
  // Set background color
  background(0, 0, 0);
  // Set background layer
  backgroundLayer = loadImage("Achtergrond.png");
  
  // Box 1 position & size
  box1Xposition = 100;
  box1Yposition = 100;  
  box1Width = 60;
  box1Height = 500;
  // Box 2 position & size
  box2Xposition = 1080;
  box2Yposition = 100;
  box2Width = 60;
  box2Height = 500;
  // Box 3 position & size
  box3Xposition = 200;
  box3Yposition = 50;
  box3Width = 250;
  box3Height = 100;
  // Box 4 position & size
  box4Xposition = 700;
  box4Yposition = 50;
  box4Width = 300;
  box4Height = 100;
  // Box 5 position & size
  box5Xposition = 300;
  box5Yposition = 650;
  box5Width = 700;
  box5Height = 100;
  // Box 6 position & size
  box6Xposition = 500;
  box6Yposition = 50;
  box6Width = 100;
  box6Height = 100;
}

void draw() {
  // Mouse position
  mousey = mouseY;
  mousex = mouseX;

  // Draw black background
  background(0, 0, 0);
  // Draw backgroundlayer
  image(backgroundLayer, backgroundPosition, backgroundPosition);
  
  // Box 1 collision
  if (mousex >= box1Xposition &&              // Right of the left edge AND
    mousex <= box1Xposition + box1Width &&    // Left of the right edge AND
    mousey >= box1Yposition &&                // Below the top AND
    mousey <= box1Yposition + box1Height) { 

    textSize(20);
    fill(0,255,0);
    text("Hier worden alle groene blokjes neergelegd", 200, height - 540);
    fill(255);
  }
  // Box 2 collision
  if (mousex >= box2Xposition &&              // Right of the left edge AND
    mousex <= box2Xposition + box2Width &&    // Left of the right edge AND
    mousey >= box2Yposition &&                // Below the top AND
    mousey <= box2Yposition + box2Height) { 

    textSize(20);
    fill(255,0,0);
    text("Hier worden alle rode blokjes neergelegd", 650, height - 540);
    fill(255);
  }
  // Box 3 collision
  if (mousex >= box3Xposition &&              // Right of the left edge AND
    mousex <= box3Xposition + box3Width &&    // Left of the right edge AND
    mousey >= box3Yposition &&                // Below the top AND
    mousey <= box3Yposition + box3Height) { 
    
    textSize(20);
    text("Bankfiesches", 200, height - 540);
    
  }
  // Box 4 collision
  if (mousex >= box4Xposition &&              // Right of the left edge AND
    mousex <= box4Xposition + box4Width &&    // Left of the right edge AND
    mousey >= box4Yposition &&                // Below the top AND
    mousey <= box4Yposition + box4Height) { 
    
    textSize(20);
    text("Goud Tier", 700, height - 540);
  }
  // Box 5 collision
  if (mousex >= box5Xposition &&              // Right of the left edge AND
    mousex <= box5Xposition + box5Width &&    // Left of the right edge AND
    mousey >= box5Yposition &&                // Below the top AND
    mousey <= box5Yposition + box5Height) { 

    textSize(20);
    fill(255,0,0);
    text("Hier worden alle rode kaartjes neergelegd", width - 850, height - 80);
    fill(255);
  }
  // Box 6 collision
  if (mousex >= box6Xposition &&              // Right of the left edge AND
    mousex <= box6Xposition + box6Width &&    // Left of the right edge AND
    mousey >= box6Yposition &&                // Below the top AND
    mousey <= box6Yposition + box6Height) { 
    
    textSize(20);
    text("Bankrun", 500, height - 540);
 
  }
  // Boxes rectangles
  rect(box3Xposition, box3Yposition, box3Width, box3Height);
  rect(box1Xposition, box1Yposition, box1Width, box1Height);
  rect(box2Xposition, box2Yposition, box2Width, box2Height);
  rect(box4Xposition, box4Yposition, box4Width, box4Height);
  rect(box5Xposition, box5Yposition, box5Width, box5Height);
  rect(box6Xposition, box6Yposition, box6Width, box6Height);
}
