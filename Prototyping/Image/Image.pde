/* Aspect Ratio
*/
//Display
fullScreen();

String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 =  "1089044435";
String fileExension = ".jpg";
String open = "/";

//Concatenation
String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String pathway1 = imageDirectory + imageName1 + fileExension;

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

//Image: Aspect Ratio
println( float(imageWidth1) / float(imageHeight1));
//Ternary Operator for Aspect Ratio: GreatOne
float image1AspectRatio_GreatOne = ( imageWidth1 > imageHeight1 ) ? float(imageWidth1) / float(imageHeight1) : float(imageHeight1) / float(imageWidth1);
println(image1AspectRatio_GreatOne);
float imageWidthAdjusted1 = CurrentScreenWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= CurrentScreenWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreatOne : imageWidthAdjusted1 / image1AspectRatio_GreatOne ; 
rect( CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight );
image( image1, CurrentScreenX, CurrentScreenY, imageWidthAdjusted1, imageHeightAdjusted1 );
