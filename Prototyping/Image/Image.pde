/* Aspect Ratio
*/
//Display
fullScreen();

String upArrow = '..';
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imagename =  "1089044435";
String fileExension = ".jpg";
String open = "/";

String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String pathway1 = imageDirectory + imageName1 + fileExention;

PImage image1 = loadImage( pathway1 );
int imageWidth1 = 700;
int imageHeight1 = 495;

println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;
int paperWidth = 279;
int paperHeight = 216;
float CurrentScreenX = appWidth * 10 / paperWidth;
float CurrentScreenY = appHeight * 10 / paperHeight;
float CurrentScreenWidth = appWidth * 180 / paperWidth;
float CurrentScreenHeight = appHeight * 130 / paperHeight;



rect( CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight );
image( image1, CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight );
