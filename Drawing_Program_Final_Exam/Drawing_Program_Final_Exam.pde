//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter, rectX, rectY, rectWidth, rectHeight, rectX1, rectY1, rectWidth1, rectHeight1, rectX2, rectY2, rectWidth2, rectHeight2, rectX3, rectY3, rectWidth3, rectHeight3, rectX4, rectY4, rectWidth4, rectHeight4;
Boolean draw=false;
color blue=#39CDF5, purple=#E815D0, yellow=#E8D015, green= #15E848;

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
  fill(blue);
  rect(rectX, rectY, rectWidth, rectHeight);
  fill(purple);
  rect(rectX1, rectX1, rectWidth1, rectHeight1);
  fill(red);
  rect(rectX2, rectX2, rectWidth2, rectHeight2);
  fill(yellow);
  rect(rectX3, rectX3, rectWidth3, rectHeight3);
  fill(green);
  rect(rectX4, rectX4, rectWidth4, rectHeight4);
  
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
