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

println("Start of Console");
String[] fontlist = PFont.list();
printArray(fontlist);

float fontSize = appHeight;
PFont font;
String georgia = "Georgia";
font = createFont(georgia, fontSize);

color blackInk = #050000;
color redInk = #9D1313;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;


text( title, CSTX, CSTY, CSTWidth, CSTHeight );
fill(resetInk);
