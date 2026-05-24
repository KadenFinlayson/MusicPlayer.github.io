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
String imageName1 =  "SudnoScreen";
String imageName2 =  "RamSonne";
String imageName3 =  "HtCS";
String fileExension = ".jpg";
String slash = "/";

String imageDirectory = upArrow + slash + upArrow + slash + dependenciesFolder + slash + imagesFolder + slash;
String pathway1 = imageDirectory + imageName1 + fileExension;
String pathway2 = imageDirectory + imageName2 + fileExension;
String pathway3 = imageDirectory + imageName3 + fileExension;

PImage image1 = loadImage(pathway1);
int imageWidth1 = 1200;
int imageHeight1 = 1200;
PImage image2 = loadImage(pathway2);
int imageWidth2 = 256;
int imageHeight2 = 256;
PImage image3 = loadImage(pathway3);
int imageWidth3 = 1200;
int imageHeight3 = 1200;

float CurrentScreenX = appWidth * 10 / paperWidth;
float CurrentScreenY = appHeight * 10 / paperHeight;
float CurrentScreenWidth = appWidth * 140 / paperWidth;
float CurrentScreenHeight = appHeight * 130 / paperHeight;

float imageAspectRatio1 = (float) imageWidth1 / (float) imageHeight1;
float imageHeightAdjusted1 = CurrentScreenHeight;
float imageWidthAdjusted1 = imageHeightAdjusted1 * imageAspectRatio1;
float imageStartX1 = CurrentScreenX + ((CurrentScreenWidth - imageWidthAdjusted1) / 2);
float imageStartY1 = CurrentScreenY;

float imageAspectRatio2 = (float) imageWidth2 / (float) imageHeight2;
float imageHeightAdjusted2 = CurrentScreenHeight;
float imageWidthAdjusted2 = imageHeightAdjusted2 * imageAspectRatio2;
float imageStartX2 = CurrentScreenX + ((CurrentScreenWidth - imageWidthAdjusted2) / 2);
float imageStartY2 = CurrentScreenY;

float imageAspectRatio3 = (float) imageWidth3 / (float) imageHeight3;
float imageHeightAdjusted3 = CurrentScreenHeight;
float imageWidthAdjusted3 = imageHeightAdjusted3 * imageAspectRatio3;
float imageStartX3 = CurrentScreenX + ((CurrentScreenWidth - imageWidthAdjusted3) / 2);
float imageStartY3 = CurrentScreenY;

fill(0);
rect(CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight);

image(image1, imageStartX1, imageStartY1, imageWidthAdjusted1, imageHeightAdjusted1);
image(image2, imageStartX2, imageStartY2, imageWidthAdjusted2, imageHeightAdjusted2);
image(image3, imageStartX3, imageStartY3, imageWidthAdjusted3, imageHeightAdjusted3);
