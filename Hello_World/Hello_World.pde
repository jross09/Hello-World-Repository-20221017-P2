//Global Variables
int appWidth, appHeight;
//
void setup() {
//Declare Display Geometry:square, landscape, portrait
size(400, 700);
//fullScreen(); //Use fullScreen for easy deployment
appWidth = width;
appHeight = height;
//
//Concatenation
println("\t\t\tWidth ="+width, "\tHeight =",height); //key variables
println("Display Monitor:", "\twidth="+displayWidth, "& height="+displayHeight);
//
//Ternary Operator
//String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="turn your phone";
//String orientation = ( appWidth >= appHeight ) ? ls : p;
//println (DO, orientation);
if ( appWidth < appHeight ) { //Declare Landscape Mode
  println();
} else {
  if (appWidth > displayWidth) appWidth = 0; //CANVAS-width will not fit
  if (appHeight > displayHeight) appHeight = 0; //CANVAS-height will not fit
  if (appWidth != 0 && appHeight != 0) 
    print("Display Geometry is Good to Go");
  } {
    println("STOP, is broken"); } 
}
//
//If ORIENTATION is wrong... feedback to change it
//if ( orientation==p ) println(instructs);
//
//Fit CANVAS into Display Monitor
//End setup
//
void draw() {
  ellipse(120, 40, 20, 50);
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End Main Program
