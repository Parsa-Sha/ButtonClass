Button buttonR;
Button buttonG;
Button buttonB;

color bg = 0;


void setup() {
  size(500, 500);
  buttonR = new Button(0, 100, 100, 50, 50);
}

void draw() {
  background(bg);
  buttonR.show();
  if (buttonR.press()) bg = color(255, 0, 0);
  
  
}
