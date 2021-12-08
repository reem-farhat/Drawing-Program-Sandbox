//Global Variables 
String quitButton = "quit";
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, red=#E00000, black = #000000;
int reset=1;

void quitButtonSetup() 
{
  quitButtonX = displayWidth*19.3/20;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*1/4;
  quitButtonHeight = displayHeight*1/20;
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}//End quitButtonSetup()

void quitButtonDraw() 
{
  //quitButtonHoverOver
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth &&  mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End quitButtonHoverOver
  fill (quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);


}//End quitButtonDraw()

void quitButtonMousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth &&  mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End quitButtonMousePressed()
