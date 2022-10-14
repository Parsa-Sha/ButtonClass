Button buttonR;
Button buttonG;
Button buttonB;
Button buttonBk;

color bg = 0;
PImage img;


void setup() {
  size(500, 500);
  buttonR = new Button("RED", 100, 100, 50, 50, color(40), color(0), color(0, 255, 255), color(255, 0, 0), 3, 1);
  buttonG = new Button("GREEN", 400, 100, 50, 50, color(40), color(0), color(255, 0, 255), color(0, 255, 0), 3, 1);
  buttonB = new Button("BLUE", 100, 400, 50, 50, color(40), color(0), color(255, 255, 0), color(0, 0, 255), 3, 1);
  buttonBk = new Button("BLACK", 400, 400, 50, 50, color(40), color(0), color(255, 255, 255), color(0, 0, 0), 3, 1);
  
  img = 
}

void draw() {
  background(bg);
  buttonR.show();
  buttonG.show();
  buttonB.show();
  buttonBk.show();
  if (buttonR.press()) bg = color(255, 0, 0);
  if (buttonG.press()) bg = color(0, 255, 0);
  if (buttonB.press()) bg = color(0, 0, 255);
  if (buttonBk.press()) bg = color(0, 0, 0);
 
  
  
  
}
