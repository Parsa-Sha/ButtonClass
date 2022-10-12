class Button{
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
  
  Button(int type, float X, float Y, float W, float H) {
    buttonType = type;
    x = X;
    y = Y;
    w = W;
    h = H;
  }
  
  Button(int type, float X, float Y, float W, float H, color cStrokeHover, color cFillPressed) {
    this(type, X, Y, W, H);
    cHover = cStrokeHover;
    cPressed = cFillPressed;
  }
  
  
  Button(float X, float Y, float W, float H, color cStrokeHover, color cStrokeNotHover, color cFillPressed, color cFillNotPressed, int strokeHoverWeight, int strokeNotHoverWeight){
    x = X;
    y = Y;
    w = W;
    h = H;
    cHover = cStrokeHover;
    cNotHover = cStrokeNotHover;
    cPressed = cFillPressed;
    cNotPressed = cFillNotPressed;
    hoverWeight = strokeHoverWeight;
    hoverNotWeight = strokeNotHoverWeight;
  }

  Button(float X, float Y, float W, float H, color cStrokeHover, color cStrokeNotHover, color cFillPressed, color cFillNotPressed, int strokeHoverWeight, int strokeNotHoverWeight, PImage Image){
    x = X;
    y = Y;
    w = W;
    h = H;
    cHover = cStrokeHover;
    cNotHover = cStrokeNotHover;
    cPressed = cFillPressed;
    cNotPressed = cFillNotPressed;
    hoverWeight = strokeHoverWeight;
    hoverNotWeight = strokeNotHoverWeight;
    img = Image;
  }
  
  void show() {
    if (img != null) {
      image(img, x, y);
    }
    stroke();
  }
  
  void act() {
  
  }
  
  boolean hover() {
    return true;
  }
  
  boolean press() {
    return true;
  }
  
  
}
