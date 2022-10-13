class Button {
  /*
  
   Default button (No Type):
   X = 100
   Y = 100
   W = 100
   H = 100
   strokeWeight = 1 (not hovering)
   strokeWeight = 3 (hovering)
   stroke = black
   fill = white
   no img, no text
   
   
   Button Types:
   0: Default button, with location + size
   1: Button 0, with stroke & strokeWeight on hover and fill on pressed able to be changed
   2: Button 1, but with non-hover stroke & strokeweight, and not pressed fill
   3: Button 2, with img
   
   */

  float x, y, w, h;
  color cNotHover, cHover, cNotPressed, cPressed;
  PImage img;
  int hoverWeight, hoverNotWeight;
  int buttonType;

  // Type 0
  Button(int type, float X, float Y, float W, float H) {
    buttonType = type; // Location
    x = X;
    y = Y;
    w = W;
    h = H;
    if (type < 2) {
      if (type == 0) {
        cHover = 50;
        cPressed = 0;
        hoverWeight = 3;
      }
      cNotHover = 0;
      cNotPressed = 255;
      hoverNotWeight = 1;
    }
  }

  // Type 1
  Button(int type, float X, float Y, float W, float H, color cStrokeHover, color cFillPressed, int strokeHoverWeight) {
    this(type, X, Y, W, H); // Location, Stroke, Fill
    cHover = cStrokeHover;
    cPressed = cFillPressed;
    hoverWeight = strokeHoverWeight;
  }

  // Type 2
  Button(int type, float X, float Y, float W, float H, color cStrokeHover, color cStrokeNotHover, color cFillPressed, color cFillNotPressed, int strokeHoverWeight, int strokeNotHoverWeight) {
    this(type, X, Y, W, H, cStrokeHover, cFillPressed, strokeHoverWeight); // Location, Stroke, Fill, NotStroke, NotFill
    cNotHover = cStrokeNotHover;
    cNotPressed = cFillNotPressed;
    hoverNotWeight = strokeNotHoverWeight;
  }

  // Type 3
  Button(int type, float X, float Y, float W, float H, color cStrokeHover, color cStrokeNotHover, color cFillPressed, color cFillNotPressed, int strokeHoverWeight, int strokeNotHoverWeight, PImage Image) {
    this(type, X, Y, W, H, cStrokeHover, cFillPressed, strokeHoverWeight, cStrokeNotHover, cFillNotPressed, strokeNotHoverWeight); // Image
    img = Image;
  }

  void show() {
    if (this.hover()) {
      stroke(cHover);
      strokeWeight(hoverWeight);
    } else {
      stroke(cNotHover);
      strokeWeight(hoverNotWeight);
    }

    if (this.press()) fill(cPressed);
    else fill(cNotPressed);

    if (buttonType == 3) {
      imageMode(CENTER);
      image(img, x, y);
    }
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  boolean hover() {
    return boundingBox(x, y, w, h);
  }

  boolean press() {
    if (this.hover() && mousePressed) return true;
    else return false;
  }
}
