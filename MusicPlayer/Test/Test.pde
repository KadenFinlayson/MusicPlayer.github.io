import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// ==========================================
// 1. GLOBAL VARIABLES
// ==========================================
int appWidth, appHeight;
int paperWidth = 279;
int paperHeight = 216;

Minim minim;
AudioPlayer song1, song2, song3;
AudioPlayer currentAudio;

boolean isLooping = false;

// Layout coordinates
float CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight;
float DataX, DataY, DataWidth, DataHeight;
float CSTX, CSTY, CSTWidth, CSTHeight;
float ProgressBarX, ProgressBarY, ProgressBarWidth, ProgressBarHeight;
float CFTX, CFTY, CFTWidth, CFTHeight;
float FPSX, FPSY, FPSWidth, FPSHeight;
float SPSX, SPSY, SPSWidth, SPSHeight;
float TPSX, TPSY, TPSWidth, TPSHeight;
float FSTX, FSTY, FSTWidth, FSTHeight;
float SSTX, SSTY, SSTWidth, SSTHeight;
float TSTX, TSTY, TSTWidth, TSTHeight;
float PSX, PSY, PSWidth, PSHeight;
float ShuffleX, ShuffleY, ShuffleWidth, ShuffleHeight;
float LoopX, LoopY, LoopWidth, LoopHeight;
float NSX, NSY, NSWidth, NSHeight;
float FFFX, FFFY, FFFWidth, FFFHeight;
float FFX, FFY, FFWidth, FFHeight;
float StopX, StopY, StopWidth, StopHeight;
float PlayX, PlayY, PlayWidth, PlayHeight;
float PauseX, PauseY, PauseWidth, PauseHeight;
float RWX, RWY, RWWidth, RWHeight;
float RRWX, RRWY, RRWWidth, RRWHeight;
float MuteX, MuteY, MuteWidth, MuteHeight;
float UnmuteX, UnmuteY, UnmuteWidth, UnmuteHeight;
float CloseX, CloseY, CloseWidth, CloseHeight;

// Typography variables
PFont font;
String title = "Hello";
String songTitle = "Sudno";
String georgia = "Georgia";
float fontSize1, fontSize2, fontSize3, fontSize4, fontSize5, fontSize6;

// Color palette
color blackInk = #050000;
color redInk = #9D1313;
color whiteInk = #FFFFFF;
color lightGrey = #D3D3D3;
color darkGrey = #5A5A5A;
color resetInk = whiteInk;

// Image assets
PImage image1, image2, image3;
float imageStartX1, imageStartY1, imageWidthAdjusted1, imageHeightAdjusted1;
float imageStartX2, imageStartY2, imageWidthAdjusted2, imageHeightAdjusted2;
float imageStartX3, imageStartY3, imageWidthAdjusted3, imageHeightAdjusted3;

float imgStartX_FPS, imgStartY_FPS, imgWAdjusted1, imgHAdjusted1;
float imgStartX_SST, imgStartY_SST, imgWAdjusted2, imgHAdjusted2;
float imgStartX_TPS, imgStartY_TPS, imgWAdjusted3, imgHAdjusted3;

// Song Selector (1 = Sudno, 2 = RamSonne, 3 = HtC)
int currentSong = 1;

// ==========================================
// 2. SETTINGS BLOCK
// ==========================================
void settings() {
  fullScreen();
}

// ==========================================
// 3. SETUP BLOCK
// ==========================================
void setup() {
  appWidth = displayWidth;
  appHeight = displayHeight;

  // Layout Math Calculations
  CurrentScreenX = appWidth * 10 / paperWidth;
  CurrentScreenY = appHeight * 10 / paperHeight;
  CurrentScreenWidth = appWidth * 140 / paperWidth;
  CurrentScreenHeight = appHeight * 130 / paperHeight;

  DataX = appWidth * 140 / paperWidth;
  DataY = appHeight * 10 / paperHeight;
  DataWidth = appWidth * 40 / paperWidth;
  DataHeight = appHeight * 130 / paperHeight;

  CSTX = appWidth * 10 / paperWidth;
  CSTY = appHeight * 140 / paperHeight;
  CSTWidth = appWidth * 75 / paperWidth;
  CSTHeight = appHeight * 15 / paperHeight;

  ProgressBarX = appWidth * 10 / paperWidth;
  ProgressBarY = appHeight * 155 / paperHeight;
  ProgressBarWidth = appWidth * 180 / paperWidth;
  ProgressBarHeight = appHeight * 5 / paperHeight;

  CFTX = appWidth * 10 / paperWidth;
  CFTY = appHeight * 160 / paperHeight;
  CFTWidth = appWidth * 30 / paperWidth;
  CFTHeight = appHeight * 15 / paperHeight;

  FPSX = appWidth * 200 / paperWidth;
  FPSY = appHeight * 15 / paperHeight;
  FPSWidth = appWidth * 25 / paperWidth;
  FPSHeight = appHeight * 30 / paperHeight;

  SPSX = appWidth * 200 / paperWidth;
  SPSY = appHeight * 60 / paperHeight;
  SPSWidth = appWidth * 25 / paperWidth;
  SPSHeight = appHeight * 30 / paperHeight;

  TPSX = appWidth * 200 / paperWidth;
  TPSY = appHeight * 105 / paperHeight;
  TPSWidth = appWidth * 25 / paperWidth;
  TPSHeight = appHeight * 30 / paperHeight;

  FSTX = appWidth * 225 / paperWidth;
  FSTY = appHeight * 15 / paperHeight;
  FSTWidth = appWidth * 40 / paperWidth;
  FSTHeight = appHeight * 20 / paperHeight;

  SSTX = appWidth * 225 / paperWidth;
  SSTY = appHeight * 60 / paperHeight;
  SSTWidth = appWidth * 40 / paperWidth;
  SSTHeight = appHeight * 20 / paperHeight;

  TSTX = appWidth * 225 / paperWidth;
  TSTY = appHeight * 105 / paperHeight;
  TSTWidth = appWidth * 40 / paperWidth;
  TSTHeight = appHeight * 20 / paperHeight;

  PSX = appWidth * 202.5 / paperWidth;
  PSY = appHeight * 180 / paperHeight;
  PSWidth = appWidth * 15 / paperWidth;
  PSHeight = appHeight * 20 / paperHeight;

  ShuffleX = appWidth * 217.5 / paperWidth;
  ShuffleY = appHeight * 180 / paperHeight;
  ShuffleWidth = appWidth * 15 / paperWidth;
  ShuffleHeight = appHeight * 20 / paperHeight;

  LoopX = appWidth * 232.5 / paperWidth;
  LoopY = appHeight * 180 / paperHeight;
  LoopWidth = appWidth * 15 / paperWidth;
  LoopHeight = appHeight * 20 / paperHeight;

  NSX = appWidth * 247.5 / paperWidth;
  NSY = appHeight * 180 / paperHeight;
  NSWidth = appWidth * 15 / paperWidth;
  NSHeight = appHeight * 20 / paperHeight;

  FFFX = appWidth * 175 / paperWidth;
  FFFY = appHeight * 180 / paperHeight;
  FFFWidth = appWidth * 15 / paperWidth;
  FFFHeight = appHeight * 20 / paperHeight;

  FFX = appWidth * 160 / paperWidth;
  FFY = appHeight * 180 / paperHeight;
  FFWidth = appWidth * 15 / paperWidth;
  FFHeight = appHeight * 20 / paperHeight;

  StopX = appWidth * 145 / paperWidth;
  StopY = appHeight * 180 / paperHeight;
  StopWidth = appWidth * 15 / paperWidth;
  StopHeight = appHeight * 20 / paperHeight;

  PlayX = appWidth * 130 / paperWidth;
  PlayY = appHeight * 180 / paperHeight;
  PlayWidth = appWidth * 15 / paperWidth;
  PlayHeight = appHeight * 20 / paperHeight;

  PauseX = appWidth * 115 / paperWidth;
  PauseY = appHeight * 180 / paperHeight;
  PauseWidth = appWidth * 15 / paperWidth;
  PauseHeight = appHeight * 20 / paperHeight;

  RWX = appWidth * 100 / paperWidth;
  RWY = appHeight * 180 / paperHeight;
  RWWidth = appWidth * 15 / paperWidth;
  RWHeight = appHeight * 20 / paperHeight;

  RRWX = appWidth * 85 / paperWidth;
  RRWY = appHeight * 180 / paperHeight;
  RRWWidth = appWidth * 15 / paperWidth;
  RRWHeight = appHeight * 20 / paperHeight;

  MuteX = appWidth * 25 / paperWidth;
  MuteY = appHeight * 180 / paperHeight;
  MuteWidth = appWidth * 15 / paperWidth;
  MuteHeight = appHeight * 20 / paperHeight;

  UnmuteX = appWidth * 10 / paperWidth;
  UnmuteY = appHeight * 180 / paperHeight;
  UnmuteWidth = appWidth * 15 / paperWidth;
  UnmuteHeight = appHeight * 20 / paperHeight;

  CloseX = appWidth * 272 / paperWidth;
  CloseY = appHeight * 0 / paperHeight;
  CloseWidth = appWidth * 7.5 / paperWidth;
  CloseHeight = appHeight * 10 / paperHeight;

  // Font Setup Block
  font = createFont(georgia, 128);

  fontSize1 = CSTHeight * 0.8;
  fontSize2 = FSTHeight * 0.8;
  fontSize3 = SSTHeight * 0.8;
  fontSize4 = TSTHeight * 0.8;
  fontSize5 = DataWidth * 0.25;
  fontSize6 = CFTHeight * 0.45;

  // FIXED PATHWAY: Changed from two up-arrows to exactly ONE up-arrow ("..")
  // This jumps out of MusicPlayer, then moves into Dependencies/Images/
  String upArrow = "..";
  String dependenciesFolder = "Dependencies";
  String imagesFolder = "Images";
  String imageName1 = "SudnoScreen";
  String imageName2 = "RamSonne";
  String imageName3 = "HtCS";
  String fileExtension = ".jpg";
  String slash = "/";

  String imageDirectory = upArrow + slash + upArrow + slash + dependenciesFolder + slash + imagesFolder + slash;
  String pathway1 = imageDirectory + imageName1 + fileExtension;
  String pathway2 = imageDirectory + imageName2 + fileExtension;
  String pathway3 = imageDirectory + imageName3 + fileExtension;

  image1 = loadImage(pathway1);
  int imageWidth1 = 1200;
  int imageHeight1 = 1200;
  float imageAspectRatio1 = (float) imageWidth1 / (float) imageHeight1;
  imageHeightAdjusted1 = CurrentScreenHeight;
  imageWidthAdjusted1 = imageHeightAdjusted1 * imageAspectRatio1;
  imageStartX1 = CurrentScreenX + ((CurrentScreenWidth - imageWidthAdjusted1) / 2);
  imageStartY1 = CurrentScreenY;

  image2 = loadImage(pathway2);
  int imageWidth2 = 256;
  int imageHeight2 = 256;
  float imageAspectRatio2 = (float) imageWidth2 / (float) imageHeight2;
  imageHeightAdjusted2 = CurrentScreenHeight;
  imageWidthAdjusted2 = imageHeightAdjusted2 * imageAspectRatio2;
  imageStartX2 = CurrentScreenX + ((CurrentScreenWidth - imageWidthAdjusted2) / 2);
  imageStartY2 = CurrentScreenY;

  image3 = loadImage(pathway3);
  int imageWidth3 = 1200;
  int imageHeight3 = 1200;
  float imageAspectRatio3 = (float) imageWidth3 / (float) imageHeight3;
  imageHeightAdjusted3 = CurrentScreenHeight;
  imageWidthAdjusted3 = imageHeightAdjusted3 * imageAspectRatio3;
  imageStartX3 = CurrentScreenX + ((CurrentScreenWidth - imageWidthAdjusted3) / 2);
  imageStartY3 = CurrentScreenY;

  // FPS Box Artwork Sizing
  float imgAspect1 = (float)1200 / (float)1200;
  imgHAdjusted1 = FPSHeight * 0.9;
  imgWAdjusted1 = imgHAdjusted1 * imgAspect1;
  imgStartX_FPS = FPSX + ((FPSWidth - imgWAdjusted1) / 2);
  imgStartY_FPS = FPSY + ((FPSHeight - imgHAdjusted1) / 2);

  float imgAspect2 = (float)256 / (float)256;
  imgHAdjusted2 = SPSHeight * 0.9;
  imgWAdjusted2 = imgHAdjusted2 * imgAspect2;
  imgStartX_SST = SPSX + ((SPSWidth - imgWAdjusted2) / 2);
  imgStartY_SST = SPSY + ((SPSHeight - imgHAdjusted2) / 2);

  float imgAspect3 = (float)1200 / (float)1200;
  imgHAdjusted3 = TPSHeight * 0.9;
  imgWAdjusted3 = imgHAdjusted3 * imgAspect3;
  imgStartX_TPS = TPSX + ((TPSWidth - imgWAdjusted3) / 2);
  imgStartY_TPS = TPSY + ((TPSHeight - imgHAdjusted3) / 2);

  minim = new Minim(this);

  String musicFolder = "Music";
  String musicDirectory = upArrow + slash + upArrow + slash + dependenciesFolder + slash + musicFolder + slash;

  String absoluteAudioFolder = sketchPath(musicDirectory);

  song1 = minim.loadFile(absoluteAudioFolder + "Sudno.mp3");
  song2 = minim.loadFile(absoluteAudioFolder + "Sonne.mp3");
  song3 = minim.loadFile(absoluteAudioFolder + "HTC.mp3");

  currentAudio = song1;
  
}
// ==========================================
// 4. DRAWING LOOP WITH FIXED LAYER ORDER
// ==========================================
void draw() {
  background(200);
  stroke(0);

  // 1. DRAW STATIC UTILITY PANELS ON THE BOTTOM LAYOUT FIRST
  fill(255);
  rect( CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight );
  rect( DataX, DataY, DataWidth, DataHeight );
  rect( CSTX, CSTY, CSTWidth, CSTHeight );
  rect( CFTX, CFTY, CFTWidth, CFTHeight );
  rect( FPSX, FPSY, FPSWidth, FPSHeight );
  rect( SPSX, SPSY, SPSWidth, SPSHeight );
  rect( TPSX, TPSY, TPSWidth, TPSHeight );
  rect( FSTX, FSTY, FSTWidth, FSTHeight );
  rect( SSTX, SSTY, SSTWidth, SSTHeight );
  rect( TSTX, TSTY, TSTWidth, TSTHeight );

  // 2. DRAW THE EMPTY PROGRESS BAR CONTAINER BACKGROUND
  fill(255);
  rect( ProgressBarX, ProgressBarY, ProgressBarWidth, ProgressBarHeight );

  // 3. LAYER THE RED PROGRESS INDICATOR DIRECTLY ON TOP
  if (currentAudio != null && currentAudio.length() > 0) {
    // Finds the precise percentage tracking ratio of the current track
    float playPercentage = (float) currentAudio.position() / (float) currentAudio.length();
    
    // Scales the red filling width dimension matching your grid layout
    float filledWidth = ProgressBarWidth * playPercentage;
    
    fill(redInk);
    noStroke(); // Clears borders so the tracking timeline looks slick
    rect( ProgressBarX, ProgressBarY, filledWidth, ProgressBarHeight );
    stroke(0);  // Restores standard framework borders for subsequent buttons
  }

  if (image1 != null) image(image1, imgStartX_FPS, imgStartY_FPS, imgWAdjusted1, imgHAdjusted1);
  if (image2 != null) image(image2, imgStartX_SST, imgStartY_SST, imgWAdjusted2, imgHAdjusted2);
  if (image3 != null) image(image3, imgStartX_TPS, imgStartY_TPS, imgWAdjusted3, imgHAdjusted3);

  // 2. DRAW HOVER REACTIVE BUTTON BACKGROUNDS ON TOP OF PANELS
  // Previous Song (PS)
  if (mouseX >= PSX && mouseX <= PSX + PSWidth && mouseY >= PSY && mouseY <= PSY + PSHeight) fill(lightGrey);
  else fill(255);
  rect(PSX, PSY, PSWidth, PSHeight);

  // Shuffle
  if (mouseX >= ShuffleX && mouseX <= ShuffleX + ShuffleWidth && mouseY >= ShuffleY && mouseY <= ShuffleY + ShuffleHeight) fill(lightGrey);
  else fill(255);
  rect(ShuffleX, ShuffleY, ShuffleWidth, ShuffleHeight);

  // Loop
  if (mouseX >= LoopX && mouseX <= LoopX + LoopWidth && mouseY >= LoopY && mouseY <= LoopY + LoopHeight) fill(lightGrey);
  else fill(255);
  rect(LoopX, LoopY, LoopWidth, LoopHeight);

  // Next Song (NS)
  if (mouseX >= NSX && mouseX <= NSX + NSWidth && mouseY >= NSY && mouseY <= NSY + NSHeight) fill(lightGrey);
  else fill(255);
  rect(NSX, NSY, NSWidth, NSHeight);

  // Fast Fast Forward (FFF)
  if (mouseX >= FFFX && mouseX <= FFFX + FFFWidth && mouseY >= FFFY && mouseY <= FFFY + FFFHeight) fill(lightGrey);
  else fill(255);
  rect(FFFX, FFFY, FFFWidth, FFFHeight);

  // Fast Forward (FF)
  if (mouseX >= FFX && mouseX <= FFX + FFWidth && mouseY >= FFY && mouseY <= FFY + FFHeight) fill(lightGrey);
  else fill(255);
  rect(FFX, FFY, FFWidth, FFHeight);

  // Stop
  if (mouseX >= StopX && mouseX <= StopX + StopWidth && mouseY >= StopY && mouseY <= StopY + StopHeight) fill(lightGrey);
  else fill(255);
  rect(StopX, StopY, StopWidth, StopHeight);

  // Play
  if (mouseX >= PlayX && mouseX <= PlayX + PlayWidth && mouseY >= PlayY && mouseY <= PlayY + PlayHeight) fill(lightGrey);
  else fill(255);
  rect(PlayX, PlayY, PlayWidth, PlayHeight);

  // Pause
  if (mouseX >= PauseX && mouseX <= PauseX + PauseWidth && mouseY >= PauseY && mouseY <= PauseY + PauseHeight) fill(lightGrey);
  else fill(255);
  rect(PauseX, PauseY, PauseWidth, PauseHeight);

  // Rewind (RW)
  if (mouseX >= RWX && mouseX <= RWX + RWWidth && mouseY >= RWY && mouseY <= RWY + RWHeight) fill(lightGrey);
  else fill(255);
  rect(RWX, RWY, RWWidth, RWHeight);

  // Fast Rewind (RRW)
  if (mouseX >= RRWX && mouseX <= RRWX + RRWWidth && mouseY >= RRWY && mouseY <= RRWY + RRWHeight) fill(lightGrey);
  else fill(255);
  rect(RRWX, RRWY, RRWWidth, RRWHeight);

  // Mute
  if (mouseX >= MuteX && mouseX <= MuteX + MuteWidth && mouseY >= MuteY && mouseY <= MuteY + MuteHeight) fill(lightGrey);
  else fill(255);
  rect(MuteX, MuteY, MuteWidth, MuteHeight);

  // Unmute
  if (mouseX >= UnmuteX && mouseX <= UnmuteX + UnmuteWidth && mouseY >= UnmuteY && mouseY <= UnmuteY + UnmuteHeight) fill(lightGrey);
  else fill(255);
  rect(UnmuteX, UnmuteY, UnmuteWidth, UnmuteHeight);

  // 3. CLOSE PANEL WITH RED HOVER GLOW SYSTEM
  if (mouseX >= CloseX && mouseX <= CloseX + CloseWidth && mouseY >= CloseY && mouseY <= CloseY + CloseHeight) fill(redInk);
  else fill(255);
  rect( CloseX, CloseY, CloseWidth, CloseHeight );
  stroke(blackInk);
  strokeWeight(2);
  line(CloseX + 2, CloseY + 2, CloseX + CloseWidth - 2, CloseY + CloseHeight - 2);
  line(CloseX + 2, CloseY + CloseHeight - 2, CloseX + CloseWidth - 2, CloseY + 2);
  strokeWeight(1);

  // 4. ALBUM ART RENDERING WINDOW
  fill(0);
  rect(CurrentScreenX, CurrentScreenY, CurrentScreenWidth, CurrentScreenHeight);

  if (currentSong == 1 && image1 != null) {
    image(image1, imageStartX1, imageStartY1, imageWidthAdjusted1, imageHeightAdjusted1);
  } else if (currentSong == 2 && image2 != null) {
    image(image2, imageStartX2, imageStartY2, imageWidthAdjusted2, imageHeightAdjusted2);
  } else if (currentSong == 3 && image3 != null) {
    image(image3, imageStartX3, imageStartY3, imageWidthAdjusted3, imageHeightAdjusted3);
  } else {
    fill(100);
    textAlign(CENTER, CENTER);
    text("[ Image Missing from directory ]", CurrentScreenX + CurrentScreenWidth/2, CurrentScreenY + CurrentScreenHeight/2);
  }

  // 5. TYPOGRAPHY STRINGS RENDERER
  if (currentSong == 1) {
    songTitle = "Playing: Sudno";
  } else if (currentSong == 2) {
    songTitle = "Playing: Sonne";
  } else if (currentSong == 3) {
    songTitle = "Playing: HtC";
  }

String timeString = "0:00/0:00"; 
  
  if (currentAudio != null) {
    int currentMs = currentAudio.position();
    int currentSec = (currentMs / 1000) % 60;
    int currentMin = (currentMs / (1000 * 60)) % 60;
    
    int totalMs = currentAudio.length();
    int totalSec = (totalMs / 1000) % 60;
    int totalMin = (totalMs / (1000 * 60)) % 60;
    
    timeString = currentMin + ":" + nf(currentSec, 2) + " / " + totalMin + ":" + nf(totalSec, 2);
  }

  fill(blackInk);
  textAlign(CENTER, CENTER);

  textFont(font, fontSize1);
  text(songTitle, CSTX, CSTY, CSTWidth, CSTHeight);

  textFont(font, fontSize2);
  text("Sudno", FSTX, FSTY, FSTWidth, FSTHeight); 
  textFont(font, fontSize3);
  text("Sonne", SSTX, SSTY, SSTWidth, SSTHeight); 
  textFont(font, fontSize4);
  text("HtC", TSTX, TSTY, TSTWidth, TSTHeight); 
  textFont(font, fontSize5);
  
  textAlign(CENTER, TOP);
  text("Data", DataX, DataY, DataWidth, DataHeight);
  textFont(font, fontSize6); text(timeString, CFTX, CFTY, CFTWidth, CFTHeight);

  // 6. HOVER REACTIVE CUSTOM VECTOR ICONS
  float cx, cy, s, tipX, tipY;

  // Previous Song (PS)
  cx = PSX + PSWidth/2;
  cy = PSY + PSHeight/2;
  s = min(PSWidth, PSHeight)*0.5;
  if (mouseX >= PSX && mouseX <= PSX + PSWidth && mouseY >= PSY && mouseY <= PSY + PSHeight) fill(darkGrey);
  else fill(0);
  triangle(cx+s*0.3, cy-s*0.5, cx+s*0.3, cy+s*0.5, cx-s*0.4, cy);
  rect(cx+s*0.35, cy-s*0.5, s*0.2, s);

  // Shuffle
  cx = ShuffleX + ShuffleWidth/2;
  cy = ShuffleY + ShuffleHeight/2;
  s = min(ShuffleWidth, ShuffleHeight)*0.5;
  noFill();
  if (mouseX >= ShuffleX && mouseX <= ShuffleX + ShuffleWidth && mouseY >= ShuffleY && mouseY <= ShuffleY + ShuffleHeight) stroke(darkGrey);
  else stroke(0);
  ellipse(cx, cy, s*1.2, s*1.2);
  if (mouseX >= ShuffleX && mouseX <= ShuffleX + ShuffleWidth && mouseY >= ShuffleY && mouseY <= ShuffleY + ShuffleHeight) fill(darkGrey);
  else fill(0);
  tipX = cx + s*0.6;
  tipY = cy;
  triangle(tipX, tipY, tipX - s*0.3, tipY - s*0.2, tipX - s*0.3, tipY + s*0.2);
  tipX = cx - s*0.6;
  triangle(tipX, tipY, tipX + s*0.3, tipY - s*0.2, tipX + s*0.3, tipY + s*0.2);
  stroke(0);

  // Loop
  cx = LoopX + LoopWidth/2;
  cy = LoopY + LoopHeight/2;
  s = min(LoopWidth, LoopHeight)*0.5;
  noFill();
  if (mouseX >= LoopX && mouseX <= LoopX + LoopWidth && mouseY >= LoopY && mouseY <= LoopY + LoopHeight) stroke(darkGrey);
  else stroke(0);
  ellipse(cx, cy, s*1.2, s*1.2);
  if (mouseX >= LoopX && mouseX <= LoopX + LoopWidth && mouseY >= LoopY && mouseY <= LoopY + LoopHeight) fill(darkGrey);
  else fill(0);
  tipX = cx + s*0.6;
  triangle(tipX, cy, tipX - s*0.3, cy - s*0.2, tipX - s*0.3, cy + s*0.2);
  stroke(0);

  // Next Song (NS)
  cx = NSX + NSWidth/2;
  cy = NSY + NSHeight/2;
  s = min(NSWidth, NSHeight)*0.5;
  if (mouseX >= NSX && mouseX <= NSX + NSWidth && mouseY >= NSY && mouseY <= NSY + NSHeight) fill(darkGrey);
  else fill(0);
  triangle(cx-s*0.3, cy-s*0.5, cx-s*0.3, cy+s*0.5, cx+s*0.4, cy);
  rect(cx-s*0.55, cy-s*0.5, s*0.2, s);

  // Fast Fast Forward (FFF)
  cx = FFFX + FFFWidth/2;
  cy = FFFY + FFFHeight/2;
  s = min(FFFWidth, FFFHeight)*0.5;
  if (mouseX >= FFFX && mouseX <= FFFX + FFFWidth && mouseY >= FFFY && mouseY <= FFFY + FFFHeight) fill(darkGrey);
  else fill(0);
  triangle(cx-s*0.6, cy-s*0.5, cx-s*0.6, cy+s*0.5, cx-s*0.1, cy);
  triangle(cx-s*0.1, cy-s*0.5, cx-s*0.1, cy+s*0.5, cx+s*0.4, cy);
  triangle(cx+s*0.4, cy-s*0.5, cx+s*0.4, cy+s*0.5, cx+s*0.9, cy);

  // Fast Forward (FF)
  cx = FFX + FFWidth/2;
  cy = FFY + FFHeight/2;
  s = min(FFWidth, FFHeight)*0.5;
  if (mouseX >= FFX && mouseX <= FFX + FFWidth && mouseY >= FFY && mouseY <= FFY + FFHeight) fill(darkGrey);
  else fill(0);
  triangle(cx-s*0.4, cy-s*0.5, cx-s*0.4, cy+s*0.5, cx, cy);
  triangle(cx, cy-s*0.5, cx, cy+s*0.5, cx+s*0.4, cy);

  // Stop
  cx = StopX + StopWidth/2;
  cy = StopY + StopHeight/2;
  s = min(StopWidth, StopHeight)*0.5;
  if (mouseX >= StopX && mouseX <= StopX + StopWidth && mouseY >= StopY && mouseY <= StopY + StopHeight) fill(darkGrey);
  else fill(0);
  rectMode(CENTER);
  rect(cx, cy, s, s);
  rectMode(CORNER);

  // Play
  cx = PlayX + PlayWidth/2;
  cy = PlayY + PlayHeight/2;
  s = min(PlayWidth, PlayHeight)*0.5;
  if (mouseX >= PlayX && mouseX <= PlayX + PlayWidth && mouseY >= PlayY && mouseY <= PlayY + PlayHeight) fill(darkGrey);
  else fill(0);
  triangle(cx-s*0.3, cy-s*0.6, cx-s*0.3, cy+s*0.6, cx+s*0.5, cy);

  // Pause
  cx = PauseX + PauseWidth/2;
  cy = PauseY + PauseHeight/2;
  s = min(PauseWidth, PauseHeight)*0.5;
  if (mouseX >= PauseX && mouseX <= PauseX + PauseWidth && mouseY >= PauseY && mouseY <= PauseY + PauseHeight) fill(darkGrey);
  else fill(0);
  rectMode(CENTER);
  rect(cx-s*0.3, cy, s*0.3, s);
  rect(cx+s*0.3, cy, s*0.3, s);
  rectMode(CORNER);

  // Rewind (RW)
  cx = RWX + RWWidth/2;
  cy = RWY + RWHeight/2;
  s = min(RWWidth, RWHeight)*0.5;
  if (mouseX >= RWX && mouseX <= RWX + RWWidth && mouseY >= RWY && mouseY <= RWY + RWHeight) fill(darkGrey);
  else fill(0);
  triangle(cx+s*0.4, cy-s*0.5, cx+s*0.4, cy+s*0.5, cx, cy);
  triangle(cx, cy-s*0.5, cx, cy+s*0.5, cx-s*0.4, cy);

  // Fast Rewind (RRW)
  cx = RRWX + RRWWidth/2;
  cy = RRWY + RRWHeight/2;
  s = min(RRWWidth, RRWHeight)*0.5;
  if (mouseX >= RRWX && mouseX <= RRWX + RRWWidth && mouseY >= RRWY && mouseY <= RRWY + RRWHeight) fill(darkGrey);
  else fill(0);
  triangle(cx+s*0.6, cy-s*0.5, cx+s*0.6, cy+s*0.5, cx+s*0.1, cy);
  triangle(cx+s*0.1, cy-s*0.5, cx+s*0.1, cy+s*0.5, cx-s*0.4, cy);
  triangle(cx-s*0.4, cy-s*0.5, cx-s*0.4, cy+s*0.5, cx-s*0.9, cy);

  // Mute
  cx = MuteX + MuteWidth/2;
  cy = MuteY + MuteHeight/2;
  s = min(MuteWidth, MuteHeight)*0.45;
  if (mouseX >= MuteX && mouseX <= MuteX + MuteWidth && mouseY >= MuteY && mouseY <= MuteY + MuteHeight) {
    fill(darkGrey);
    stroke(darkGrey);
  } else {
    fill(0);
    stroke(0);
  }
  rect(cx - s*0.6, cy - s*0.25, s*0.3, s*0.5);
  triangle(cx + s*0.2, cy - s*0.45, cx + s*0.2, cy + s*0.45, cx - s*0.3, cy);
  strokeWeight(2);
  line(cx + s*0.35, cy - s*0.35, cx + s*0.7, cy + s*0.35);
  line(cx + s*0.7, cy - s*0.35, cx + s*0.35, cy + s*0.35);
  strokeWeight(1);
  stroke(0);

  // Unmute
  cx = UnmuteX + UnmuteWidth/2;
  cy = UnmuteY + UnmuteHeight/2;
  s = min(UnmuteWidth, UnmuteHeight)*0.45;
  if (mouseX >= UnmuteX && mouseX <= UnmuteX + UnmuteWidth && mouseY >= UnmuteY && mouseY <= UnmuteY + UnmuteHeight) {
    fill(darkGrey);
    stroke(darkGrey);
  } else {
    fill(0);
    stroke(0);
  }
  rect(cx - s*0.6, cy - s*0.25, s*0.3, s*0.5);
  triangle(cx + s*0.2, cy - s*0.45, cx + s*0.2, cy + s*0.45, cx - s*0.3, cy);
  noFill();
  strokeWeight(2);
  arc(cx + s*0.45, cy, s*0.6, s*0.6, -PI/4, PI/4);
  arc(cx + s*0.6, cy, s*0.9, s*0.9, -PI/4, PI/4);
  strokeWeight(1);
  stroke(0);
}

// ==========================================
// 5. INTERACTION BLOCKS
// ==========================================
void mousePressed() {
  // 1. QUIT BUTTON: Safely closes down the program window process
  if (mouseX >= CloseX && mouseX <= CloseX + CloseWidth && mouseY >= CloseY && mouseY <= CloseY + CloseHeight) {
    if (currentAudio != null) currentAudio.close(); // Close audio safely first
    minim.stop();
    exit();
  }

  // 2. PLAY BUTTON: Plays the active target song file
  if (mouseX >= PlayX && mouseX <= PlayX + PlayWidth && mouseY >= PlayY && mouseY <= PlayY + PlayHeight) {
    println("Play Button Clicked!");
    if (currentAudio != null) {
      if (isLooping) currentAudio.loop(); else currentAudio.play();;
    }
  }

  // 3. PAUSE BUTTON: Freezes playback right where it is
  if (mouseX >= PauseX && mouseX <= PauseX + PauseWidth && mouseY >= PauseY && mouseY <= PauseY + PauseHeight) {
    println("Pause Button Clicked!");
    if (currentAudio != null) {
      currentAudio.pause();
    }
  }

  // 4. STOP BUTTON: Stops playback completely and rewinds track to the beginning
  if (mouseX >= StopX && mouseX <= StopX + StopWidth && mouseY >= StopY && mouseY <= StopY + StopHeight) {
    println("Stop Button Clicked!");
    if (currentAudio != null) {
      currentAudio.pause();
      currentAudio.cue(0); // Rewinds back to millisecond 0
    }
  }

  // 5. NEXT SONG (NS) BUTTON: Switches image and audio forward together
  if (mouseX >= NSX && mouseX <= NSX + NSWidth && mouseY >= NSY && mouseY <= NSY + NSHeight) {
    println("Next Track Swapped!");
    if (currentAudio != null) {
      currentAudio.pause();   // Pause old track
      currentAudio.cue(0);    // Rewind old track
    }

    currentSong++;
    if (currentSong > 3) currentSong = 1;

    // Swap active pointer to match the index selection tracking configuration
    if (currentSong == 1) currentAudio = song1;
    else if (currentSong == 2) currentAudio = song2;
    else if (currentSong == 3) currentAudio = song3;

    if (currentAudio != null) {
      currentAudio.cue(0);
      if (isLooping) currentAudio.loop(); else currentAudio.play(); 
    }
  }

  // 6. PREVIOUS SONG (PS) BUTTON: Switches image and audio backward together
  if (mouseX >= PSX && mouseX <= PSX + PSWidth && mouseY >= PSY && mouseY <= PSY + PSHeight) {
    println("Previous Track Swapped!");
    if (currentAudio != null) {
      currentAudio.pause();   // Pause old track
      currentAudio.cue(0);    // Rewind old track
    }

    currentSong--;
    if (currentSong < 1) currentSong = 3;

    // Swap active pointer to match the index selection tracking configuration
    if (currentSong == 1) currentAudio = song1;
    else if (currentSong == 2) currentAudio = song2;
    else if (currentSong == 3) currentAudio = song3;

    if (currentAudio != null) {
      currentAudio.cue(0);
      if (isLooping) currentAudio.loop(); else currentAudio.play(); 
    }
  }

  // 7. MUTE BUTTON BOUND CHECK
  if (mouseX >= MuteX && mouseX <= MuteX + MuteWidth && mouseY >= MuteY && mouseY <= MuteY + MuteHeight) {
    println("Mute Button Clicked!");
    if (currentAudio != null) {
      currentAudio.mute(); // Silences the audio track completely without pausing it
    }
  }

  // 8. UNMUTE BUTTON BOUND CHECK
  if (mouseX >= UnmuteX && mouseX <= UnmuteX + UnmuteWidth && mouseY >= UnmuteY && mouseY <= UnmuteY + UnmuteHeight) {
    println("Unmute Button Clicked!");
    if (currentAudio != null) {
      currentAudio.unmute(); // Restores the audio volume instantly back to normal
    }
  }
  
  // 9. FAST FAST FORWARD (FFF) BUTTON: Skips forward 10 seconds
  if (mouseX >= FFFX && mouseX <= FFFX + FFFWidth && mouseY >= FFFY && mouseY <= FFFY + FFFHeight) {
    println("Fast Fast Forward Clicked: Skipping 10s");
    if (currentAudio != null) {
      currentAudio.skip(10000); 
    }
  }

  // 10. FAST FORWARD (FF) BUTTON: Skips forward 5 seconds
  if (mouseX >= FFX && mouseX <= FFX + FFWidth && mouseY >= FFY && mouseY <= FFY + FFHeight) {
    println("Fast Forward Clicked: Skipping 5s");
    if (currentAudio != null) {
      currentAudio.skip(5000); 
    }
  }

  // 11. REWIND (RW) BUTTON: Jumps backward 5 seconds
  if (mouseX >= RWX && mouseX <= RWX + RWWidth && mouseY >= RWY && mouseY <= RWY + RWHeight) {
    println("Rewind Clicked: Going back 5s");
    if (currentAudio != null) {
      currentAudio.skip(-5000); // Using a negative number jumps backward!
    }
  }

  // 12. FAST REWIND (RRW) BUTTON: Jumps backward 10 seconds
  if (mouseX >= RRWX && mouseX <= RRWX + RRWWidth && mouseY >= RRWY && mouseY <= RRWY + RRWHeight) {
    println("Fast Rewind Clicked: Going back 10s");
    if (currentAudio != null) {
      currentAudio.skip(-10000); 
    }
  }
  
  // 13. SHUFFLE BUTTON BOUND CHECK: Picks a completely random track
  if (mouseX >= ShuffleX && mouseX <= ShuffleX + ShuffleWidth && mouseY >= ShuffleY && mouseY <= ShuffleY + ShuffleHeight) {
    println("Shuffle Clicked: Choosing a random song!");
    
    // Stop and rewind what is currently playing
    if (currentAudio != null) {
      currentAudio.pause();
      currentAudio.cue(0);
    }
    
    // Pick a random number between 1 and 3
    int nextRandomSong = int(random(1, 4));
    
    // If it picks the same song that is already playing, force it to try again
    while (nextRandomSong == currentSong) {
      nextRandomSong = int(random(1, 4));
    }
    
    currentSong = nextRandomSong;
    
    // Link the new random pointers
    if (currentSong == 1) currentAudio = song1;
    else if (currentSong == 2) currentAudio = song2;
    else if (currentSong == 3) currentAudio = song3;
    
    // Play the new track
    if (currentAudio != null) {
      currentAudio.cue(0);
      currentAudio.play();
    }
  }

  // 14. LOOP BUTTON BOUND CHECK: Toggles infinite repeating on or off
  if (mouseX >= LoopX && mouseX <= LoopX + LoopWidth && mouseY >= LoopY && mouseY <= LoopY + LoopHeight) {
    println("Loop Button Clicked!");
    if (currentAudio != null) {
      // Toggle loop mode back and forth
      isLooping = !isLooping; 
      
      if (isLooping) {
        println("Infinite Looping: ON");
        currentAudio.loop(); // Tells Minim to repeat this track forever
      } else {
        println("Infinite Looping: OFF");
        currentAudio.play(); // Switches back to standard play mode
      }
    }
  }
}

void keyPressed() {
}
