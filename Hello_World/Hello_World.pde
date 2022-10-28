//Global Variables
int appWidth, appHeight;
float centerHeight, centerWidth, xStart, yStart, widthRect, heightRect;
color black=#000000, white=#FFFFFF, pink=#FA05B5, green=#05FA2B;
color greenNightMode=#05FA00, pinkNightMode=#FA0500;
float thick, thin;
Boolean grayscale=false, randomColor=false, blackBackground=false, nightMode=false;
//
void setup() {
//Declare Display Geometry:square, landscape, portrait
size(700, 400);
//fullScreen(); //Use fullScreen for easy deployment
appWidth = width;
appHeight = height;
//
//Concatenation
println("\t\t\tWidth ="+width, "\tHeight =",height); //key variables
println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
//
//Ternary Operator
String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="turn your phone";
//String orientation = ( appWidth >= appHeight ) ? ls : p;
//println (DO, orientation);
if ( appWidth < appHeight ) { //Declare Landscape Mode
  println(instruct);
} else {
  //Fit CANVAS into Display Monitor
  if ( appWidth > displayWidth ) appWidth = 0; //CANVAS-width will not fit
    if ( appHeight > displayHeight ) appHeight = 0; //CANVAS-height will not fit
    if ( appWidth != 0 && appHeight != 0 ) {
      print("Display Geoemtry is Good to Go.");
    } else {
      println("STOP, is broken");
    }
  }
  //Population
  centerWidth = appWidth * 1/2;
  centerHeight = appHeight * 1/2;
  xStart = centerWidth - (appWidth * 1/4);
  yStart = centerHeight - (appHeight * 1/4);
  widthRect = appWidth * 1/2;
  heightRect = appHeight * 1/2;
  thick = appWidth * 1/70;
  thin = appWidth * 1/140;
} //End setup
//
void draw() {
  if ( grayScale == true ) background(225); //Grey Scale 0-255
  //random(a, b)
  if ( randomColor == true) background( color( random(0, 255), random(255), random(0, 15) ) ); //colour (r,g,b), Night Mode, Casting
  //Night Mode
  if ( blackBackground == true) background (black);
  // 
  //Night Mode Decision
  if (nightMode == true) 
  {
    stroke(greenNightMode);
    fill(pinkNightMode);
  } else 
  {
    stroke(green);
    fill(pink);
  }
  
  rect(xStart, yStart, widthRect, heightRect);
  // Reset default
  fill(white);
  stroke(black);
  strokeWeight(1);
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End Main Program
