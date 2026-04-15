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

float DataX = appWidth * 140 / paperWidth;
float DataY = appHeight * 10 / paperHeight;
float DataWidth = appWidth * 40 / paperWidth;
float DataHeight = appHeight * 130 / paperHeight;

rect( DataX, DataY, DataWidth, DataHeight );
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
float fontSize5 = appHeight;
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
fontSize5 = DataHeight*GeorgiaAspectRatio * textAdjustment;
//println( fontSize );

color blackInk = #050000;
color redInk = #9D1313;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(blackInk);

textAlign (CENTER, TOP); 
// alignment values [ LEFT / CENTER / RIGHT ] and [ TOP / CENTER / BOTTOM / BASELINE ]

float constantDecrease = 0.99;
int iWhile=0;
textFont(font, fontSize1);
while (textWidth(title) > CSTWidth) {
  println("while1");
  iWhile++;
  if ( iWhile>100 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize1);
}

text( title, CSTX, CSTY, CSTWidth, CSTHeight );

textFont(font, fontSize2);
iWhile=0;
textFont(font, fontSize2);
while (textWidth(title) > FSTWidth) {
  println("while1");
  iWhile++;
  if ( iWhile>100 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize2);
}
text( title, FSTX, FSTY, FSTWidth, FSTHeight );

textFont(font, fontSize3);
iWhile=0;
textFont(font, fontSize3);
while (textWidth(title) > SSTWidth) {
  println("while1");
  iWhile++;
  if ( iWhile>100 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize3);
}
text( title, SSTX, SSTY, SSTWidth, SSTHeight );

textFont(font, fontSize4);
iWhile=0;
textFont(font, fontSize4);
while (textWidth(title) > TSTWidth) {
  println("while1");
  iWhile++;
  if ( iWhile>100 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize4);
}
text( title, TSTX, TSTY, TSTWidth, TSTHeight );

textFont(font, fontSize5);
iWhile=0;
textFont(font, fontSize5);
while (textWidth(title) > DataWidth) {
  println("while5");
  iWhile++;
  if ( iWhile>100 ) {
    println("Infinite WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize5);
}
text( title, DataX, DataY, DataWidth, DataHeight );
fill(resetInk);
