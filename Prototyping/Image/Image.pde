/* Aspect Ratio
 */
//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
int paperWidth = 279;
int paperHeight = 216;

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
int imageWidth2 = 700;
int imageHeight2 = 495;

float CurrentScreenX = appWidth * 10 / paperWidth;
float CurrentScreenY = appHeight * 10 / paperHeight;
float CurrentScreenWidth = appWidth * 180 / paperWidth;
float CurrentScreenHeight = appHeight * 130 / paperHeight;

//Image: Aspect Ratio
float image2AspectRatio_GreatOne = ( imageWidth2 > imageHeight2 ) ? float(imageWidth2) / float(imageHeight2) : float(imageHeight2) / float(imageWidth2);
float imageWidthAdjusted2 = CurrentScreenWidth;
float imageHeightAdjusted1;

if ( imageWidth2 >= CurrentScreenWidth ) {
  imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRatio_GreatOne;
  while ( imageHeightAdjusted1 > CurrentScreenHeight ) {
    imageWidthAdjusted2 *= 0.99;
    imageHeightAdjusted1 = imageWidthAdjusted2 / image2AspectRatio_GreatOne ; 
  }

} else {
  imageHeightAdjusted1 = imageWidthAdjusted2 * image2AspectRatio_GreatOne;
  while ( imageHeightAdjusted1 > CurrentScreenHeight ) {
    imageWidthAdjusted2 *= 0.99;
    imageHeightAdjusted1 = imageWidthAdjusted2 * image2AspectRatio_GreatOne ; 
  }
}

rect(CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight);
image(image1, CurrentScreenX, CurrentScreenY, imageWidthAdjusted2, imageHeightAdjusted1);
