//Global Variables 
String quitButton = "X";
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, red=#F51111, black = #000000;
int reset=1;

void quitButtonSetup() 
{
  quitButtonX = displayWidth*19.3/20;
  quitButtonY = displayHeight*0;
  quitButtonWidth = displayWidth*2/20;
  quitButtonHeight = displayHeight*1/20;

}//End quitButtonSetup()

void quitButtonDraw() 
{
  //quitButtonHoverOver
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End quitButtonHoverOver
  fill (quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  textCode(quitButton, 12, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}//End quitButtonDraw()

void quitButtonMousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth &&  mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End quitButtonMousePressed()
