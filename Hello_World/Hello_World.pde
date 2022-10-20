//Global Variables
int appWidth, appHeight;
//
void setup() {
//Declare Display Geometry:square, landscape, portrait
size(700, 700);
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
//
//If ORIENTATION is wrong... feedback to change it
//if ( orientation==p ) println(instructs);
//
//End setup
//
void draw() {
  circle(370, 350, 300);
  circle(350, 350, 200);
  circle(340, 320, 75);
  circle(325, 395, 75);
  circle(340, 320, 20);
  circle(325, 395, 20);
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End Main Program
