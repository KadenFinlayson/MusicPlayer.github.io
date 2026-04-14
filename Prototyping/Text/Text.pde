/* Aspect Ratio
 */
//Display
fullScreen();
println(displayWidth, displayHeight);
int appWidth = displayWidth;
int appHeight = displayHeight;

int paperWidth = 279;
int paperHeight = 216;

float CSTX = appWidth * 10 / paperWidth;
float CSTY = appHeight * 140 / paperHeight;
float CSTWidth = appWidth * 75 / paperWidth;
float CSTHeight = appHeight * 15 / paperHeight;

float FSTX = appWidth * 225 / paperWidth;
float FSTY = appHeight * 15 / paperHeight;
float FSTWidth = appWidth * 40 / paperWidth;
float FSTHeight = appHeight * 20 / paperHeight;

float SSTX = appWidth * 225 / paperWidth;
float SSTY = appHeight * 60 / paperHeight;
float SSTWidth = appWidth * 40 / paperWidth;
float SSTHeight = appHeight * 20 / paperHeight;

float TSTX = appWidth * 225 / paperWidth;
float TSTY = appHeight * 105 / paperHeight;
float TSTWidth = appWidth * 40 / paperWidth;
float TSTHeight = appHeight * 20 / paperHeight;

rect( TSTX, TSTY, TSTWidth, TSTHeight );
rect( SSTX, SSTY, SSTWidth, SSTHeight );
rect( FSTX, FSTY, FSTWidth, FSTHeight );
rect( CSTX, CSTY, CSTWidth, CSTHeight );

String title = "Hello";

println("Start of Console");
String[] fontlist = PFont.list();
printArray(fontlist);

float fontSize1 = appHeight;
float fontSize2 = appHeight;
float fontSize3 = appHeight;
float fontSize4 = appHeight;
//println( fontSize );
PFont font;
String georgia = "Georgia";
font = createFont(georgia, fontSize1);

float fontSizeGeorgia = 58; //fontsize for ~100%
float divHeightGeorgia = CSTHeight;
float GeorgiaAspectRatio = fontSizeGeorgia / divHeightGeorgia;
float textAdjustment = 0.9;
fontSize1 = CSTHeight*GeorgiaAspectRatio * textAdjustment;
fontSize2 = FSTHeight*GeorgiaAspectRatio * textAdjustment;
fontSize3 = SSTHeight*GeorgiaAspectRatio * textAdjustment;
fontSize4 = TSTHeight*GeorgiaAspectRatio * textAdjustment;
//println( fontSize );

color blackInk = #050000;
color redInk = #9D1313;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(blackInk);

textAlign (CENTER, TOP); 
// alignment values [ LEFT / CENTER / RIGHT ] and [ TOP / CENTER / BOTTOM / BASELINE ]
textFont(font, fontSize1);
while (textWidth(title) > CSTWidth) {
  println("here1");
}
text( title, CSTX, CSTY, CSTWidth, CSTHeight );
textFont(font, fontSize2);
while (textWidth(title) > CSTWidth) {
  println("here1");
}
text( title, FSTX, FSTY, FSTWidth, FSTHeight );
textFont(font, fontSize3);
while (textWidth(title) > CSTWidth) {
  println("here1");
}
text( title, SSTX, SSTY, SSTWidth, SSTHeight );
textFont(font, fontSize4);
while (textWidth(title) > CSTWidth) {
  println("here1");
}
text( title, TSTX, TSTY, TSTWidth, TSTHeight );
fill(resetInk);
