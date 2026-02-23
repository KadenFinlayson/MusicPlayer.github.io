/* DIVs 2D Rectangles
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 279;
int paperHeight = 216;
float CurrentScreenX = appWidth * 10 / paperWidth;
float CurrentScreenY = appHeight * 10 / paperHeight;
float CurrentScreenWidth = appWidth * 180 / paperWidth;
float CurrentScreenHeight = appHeight * 130 / paperHeight;

rect( CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight );

float CSTX = appWidth * 10 / paperWidth;
float CSTY = appHeight * 140 / paperHeight;
float CSTWidth = appWidth * 75 / paperWidth;
float CSTHeight = appHeight * 15 / paperHeight;

rect( CSTX, CSTY, CSTWidth, CSTHeight );

float ProgressBarX = appWidth * 10 / paperWidth;
float ProgressBarY = appHeight * 155 / paperHeight;
float ProgressBarWidth = appWidth * 180 / paperWidth;
float ProgressBarHeight = appHeight * 5 / paperHeight;

rect( ProgressBarX, ProgressBarY, ProgressBarWidth, ProgressBarHeight );

float CFTX = appWidth * 10 / paperWidth;
float CFTY = appHeight * 160 / paperHeight;
float CFTWidth = appWidth * 30 / paperWidth;
float CFTHeight = appHeight * 15 / paperHeight;

rect( CFTX, CFTY, CFTWidth, CFTHeight );

float FPSX = appWidth * 200 / paperWidth;
float FPSY = appHeight * 15 / paperHeight;
float FPSWidth = appWidth * 25 / paperWidth;
float FPSHeight = appHeight * 30 / paperHeight;

rect( FPSX, FPSY, FPSWidth, FPSHeight );

float SPSX = appWidth * 200 / paperWidth;
float SPSY = appHeight * 60 / paperHeight;
float SPSWidth = appWidth * 25 / paperWidth;
float SPSHeight = appHeight * 30 / paperHeight;

rect( SPSX, SPSY, SPSWidth, SPSHeight );

float TPSX = appWidth * 200 / paperWidth;
float TPSY = appHeight * 105 / paperHeight;
float TPSWidth = appWidth * 25 / paperWidth;
float TPSHeight = appHeight * 30 / paperHeight;

rect( TPSX, TPSY, TPSWidth, TPSHeight );

float FSTX = appWidth * 225 / paperWidth;
float FSTY = appHeight * 15 / paperHeight;
float FSTWidth = appWidth * 40 / paperWidth;
float FSTHeight = appHeight * 20 / paperHeight;

rect( FSTX, FSTY, FSTWidth, FSTHeight );

float SSTX = appWidth * 225 / paperWidth;
float SSTY = appHeight * 60 / paperHeight;
float SSTWidth = appWidth * 40 / paperWidth;
float SSTHeight = appHeight * 20 / paperHeight;

rect( SSTX, SSTY, SSTWidth, SSTHeight );

float TSTX = appWidth * 225 / paperWidth;
float TSTY = appHeight * 105 / paperHeight;
float TSTWidth = appWidth * 40 / paperWidth;
float TSTHeight = appHeight * 20 / paperHeight;

rect( TSTX, TSTY, TSTWidth, TSTHeight );
