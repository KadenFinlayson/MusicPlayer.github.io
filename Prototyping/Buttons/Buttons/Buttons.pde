println(displayWidth, displayHeight);
fullScreen();

int appWidth = displayWidth;
int appHeight = displayHeight;

int paperWidth = 279;
int paperHeight = 216;

background(200);
stroke(0);

// reusable variables
float cx, cy, s;
float rectWidth, rectHeight;
float tipX, tipY;

//---------------- PS ----------------
float PSX = appWidth * 202.5 / paperWidth;
float PSY = appHeight * 180 / paperHeight;
float PSWidth = appWidth * 15 / paperWidth;
float PSHeight = appHeight * 20 / paperHeight;

fill(255);
rect(PSX, PSY, PSWidth, PSHeight);

cx = PSX + PSWidth/2;
cy = PSY + PSHeight/2;
s = min(PSWidth, PSHeight)*0.5;

fill(0);
triangle(cx+s*0.3, cy-s*0.5, cx+s*0.3, cy+s*0.5, cx-s*0.4, cy);
rect(cx+s*0.35, cy-s*0.5, s*0.2, s);

//---------------- Shuffle ----------------
float ShuffleX = appWidth * 217.5 / paperWidth;
float ShuffleY = appHeight * 180 / paperHeight;
float ShuffleWidth = appWidth * 15 / paperWidth;
float ShuffleHeight = appHeight * 20 / paperHeight;

fill(255);
rect(ShuffleX, ShuffleY, ShuffleWidth, ShuffleHeight);

cx = ShuffleX + ShuffleWidth/2;
cy = ShuffleY + ShuffleHeight/2;
s = min(ShuffleWidth, ShuffleHeight)*0.5;

noFill();
ellipse(cx, cy, s*1.2, s*1.2);

fill(0);
// two triangles on circle circumference
tipX = cx + s*0.6; tipY = cy;
triangle(tipX, tipY, tipX - s*0.3, tipY - s*0.2, tipX - s*0.3, tipY + s*0.2);
tipX = cx - s*0.6;
triangle(tipX, tipY, tipX + s*0.3, tipY - s*0.2, tipX + s*0.3, tipY + s*0.2);

//---------------- Loop ----------------
float LoopX = appWidth * 232.5 / paperWidth;
float LoopY = appHeight * 180 / paperHeight;
float LoopWidth = appWidth * 15 / paperWidth;
float LoopHeight = appHeight * 20 / paperHeight;

fill(255);
rect(LoopX, LoopY, LoopWidth, LoopHeight);

cx = LoopX + LoopWidth/2;
cy = LoopY + LoopHeight/2;
s = min(LoopWidth, LoopHeight)*0.5;

noFill();
ellipse(cx, cy, s*1.2, s*1.2);

fill(0);
tipX = cx + s*0.6;
triangle(tipX, cy, tipX - s*0.3, cy - s*0.2, tipX - s*0.3, cy + s*0.2);

//---------------- NS ----------------
float NSX = appWidth * 247.5 / paperWidth;
float NSY = appHeight * 180 / paperHeight;
float NSWidth = appWidth * 15 / paperWidth;
float NSHeight = appHeight * 20 / paperHeight;

fill(255);
rect(NSX, NSY, NSWidth, NSHeight);

cx = NSX + NSWidth/2;
cy = NSY + NSHeight/2;

fill(0);
triangle(cx-s*0.3, cy-s*0.5, cx-s*0.3, cy+s*0.5, cx+s*0.4, cy);
rect(cx-s*0.55, cy-s*0.5, s*0.2, s);

//---------------- FFF ----------------
float FFFX = appWidth * 175 / paperWidth;
float FFFY = appHeight * 180 / paperHeight;
float FFFWidth = appWidth * 15 / paperWidth;
float FFFHeight = appHeight * 20 / paperHeight;

fill(255);
rect(FFFX, FFFY, FFFWidth, FFFHeight);

cx = FFFX + FFFWidth/2;
cy = FFFY + FFFHeight/2;

fill(0);
triangle(cx-s*0.6, cy-s*0.5, cx-s*0.6, cy+s*0.5, cx-s*0.1, cy);
triangle(cx-s*0.1, cy-s*0.5, cx-s*0.1, cy+s*0.5, cx+s*0.4, cy);
triangle(cx+s*0.4, cy-s*0.5, cx+s*0.4, cy+s*0.5, cx+s*0.9, cy);

//---------------- FF ----------------
float FFX = appWidth * 160 / paperWidth;
float FFY = appHeight * 180 / paperHeight;
float FFWidth = appWidth * 15 / paperWidth;
float FFHeight = appHeight * 20 / paperHeight;

fill(255);
rect(FFX, FFY, FFWidth, FFHeight);

cx = FFX + FFWidth/2;
cy = FFY + FFHeight/2;

fill(0);
triangle(cx-s*0.4, cy-s*0.5, cx-s*0.4, cy+s*0.5, cx, cy);
triangle(cx, cy-s*0.5, cx, cy+s*0.5, cx+s*0.4, cy);

//---------------- Stop ----------------
float StopX = appWidth * 145 / paperWidth;
float StopY = appHeight * 180 / paperHeight;
float StopWidth = appWidth * 15 / paperWidth;
float StopHeight = appHeight * 20 / paperHeight;

fill(255);
rect(StopX, StopY, StopWidth, StopHeight);

cx = StopX + StopWidth/2;
cy = StopY + StopHeight/2;

fill(0);
rectMode(CENTER);
rect(cx, cy, s, s);
rectMode(CORNER);

//---------------- Play ----------------
float PlayX = appWidth * 130 / paperWidth;
float PlayY = appHeight * 180 / paperHeight;
float PlayWidth = appWidth * 15 / paperWidth;
float PlayHeight = appHeight * 20 / paperHeight;

fill(255);
rect(PlayX, PlayY, PlayWidth, PlayHeight);

cx = PlayX + PlayWidth/2;
cy = PlayY + PlayHeight/2;

fill(0);
triangle(cx-s*0.3, cy-s*0.6, cx-s*0.3, cy+s*0.6, cx+s*0.5, cy);

//---------------- Pause ----------------
float PauseX = appWidth * 115 / paperWidth;
float PauseY = appHeight * 180 / paperHeight;
float PauseWidth = appWidth * 15 / paperWidth;
float PauseHeight = appHeight * 20 / paperHeight;

fill(255);
rect(PauseX, PauseY, PauseWidth, PauseHeight);

cx = PauseX + PauseWidth/2;
cy = PauseY + PauseHeight/2;

fill(0);
rectMode(CENTER);
rect(cx-s*0.3, cy, s*0.3, s);
rect(cx+s*0.3, cy, s*0.3, s);
rectMode(CORNER);

//---------------- RW ----------------
float RWX = appWidth * 100 / paperWidth;
float RWY = appHeight * 180 / paperHeight;
float RWWidth = appWidth * 15 / paperWidth;
float RWHeight = appHeight * 20 / paperHeight;

fill(255);
rect(RWX, RWY, RWWidth, RWHeight);

cx = RWX + RWWidth/2;
cy = RWY + RWHeight/2;

fill(0);
triangle(cx+s*0.4, cy-s*0.5, cx+s*0.4, cy+s*0.5, cx, cy);
triangle(cx, cy-s*0.5, cx, cy+s*0.5, cx-s*0.4, cy);

//---------------- RRW ----------------
float RRWX = appWidth * 85 / paperWidth;
float RRWY = appHeight * 180 / paperHeight;
float RRWWidth = appWidth * 15 / paperWidth;
float RRWHeight = appHeight * 20 / paperHeight;

fill(255);
rect(RRWX, RRWY, RRWWidth, RRWHeight);

cx = RRWX + RRWWidth/2;
cy = RRWY + RRWHeight/2;

fill(0);
triangle(cx+s*0.6, cy-s*0.5, cx+s*0.6, cy+s*0.5, cx+s*0.1, cy);
triangle(cx+s*0.1, cy-s*0.5, cx+s*0.1, cy+s*0.5, cx-s*0.4, cy);
triangle(cx-s*0.4, cy-s*0.5, cx-s*0.4, cy+s*0.5, cx-s*0.9, cy);

//---------------- MUTE SPEAKER ----------------
float MuteX = appWidth * 25 / paperWidth;
float MuteY = appHeight * 180 / paperHeight;
float MuteWidth = appWidth * 15 / paperWidth;
float MuteHeight = appHeight * 20 / paperHeight;

fill(255);
rect(MuteX, MuteY, MuteWidth, MuteHeight);

cx = MuteX + MuteWidth/2;
cy = MuteY + MuteHeight/2;
s = min(MuteWidth, MuteHeight)*0.45;

fill(0); // speaker color

// speaker body
rect(cx - s*0.6, cy - s*0.25, s*0.3, s*0.5);

// speaker cone
triangle(
  cx + s*0.2, cy - s*0.45,
  cx + s*0.2, cy + s*0.45,
  cx - s*0.3, cy
);

// mute X
strokeWeight(2);
line(cx + s*0.35, cy - s*0.35, cx + s*0.7, cy + s*0.35);
line(cx + s*0.7, cy - s*0.35, cx + s*0.35, cy + s*0.35);
strokeWeight(1);

//---------------- UNMUTE SPEAKER ----------------
float UnmuteX = appWidth * 10 / paperWidth;
float UnmuteY = appHeight * 180 / paperHeight;
float UnmuteWidth = appWidth * 15 / paperWidth;
float UnmuteHeight = appHeight * 20 / paperHeight;

fill(255);
rect(UnmuteX, UnmuteY, UnmuteWidth, UnmuteHeight);

cx = UnmuteX + UnmuteWidth/2;
cy = UnmuteY + UnmuteHeight/2;
s = min(UnmuteWidth, UnmuteHeight)*0.45;

fill(0); // speaker color

// speaker body
rect(cx - s*0.6, cy - s*0.25, s*0.3, s*0.5);

// speaker cone
triangle(
  cx + s*0.2, cy - s*0.45,
  cx + s*0.2, cy + s*0.45,
  cx - s*0.3, cy
);

// sound waves
noFill();
strokeWeight(2);
arc(cx + s*0.45, cy, s*0.6, s*0.6, -PI/4, PI/4);
arc(cx + s*0.6, cy, s*0.9, s*0.9, -PI/4, PI/4);
strokeWeight(1);
