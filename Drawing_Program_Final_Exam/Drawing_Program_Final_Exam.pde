//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;

void setup() {
  fullScreen();
  population();
  quitButtonSetup();
  textSetup();
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
} //End setup()

void draw() {
  quitButtonDraw();
  if (draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  {
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);//this code is for line vs. circle 
  }//End line draw
}//End draw()

void mousePressed() {
  //
  quitButtonMousePressed(); 
  //
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  {
    if (draw == false) 
    {
      draw = true;
    } else {
      draw = false;
    }//End boolean
  }//End line draw
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
