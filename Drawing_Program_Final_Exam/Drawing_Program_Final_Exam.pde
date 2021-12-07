//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;

void setup() {
  fullScreen();
  population();
  drawingDiameter = displayWidth*1/200;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
} //End setup()

void draw() {
  if (draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  {
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);//this code is for livne vs. circle 
  }//End line draw
}//End draw()

void mousePressed() {
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
