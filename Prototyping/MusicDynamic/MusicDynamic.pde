//Library - minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;

void setup() {
  //Display
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;

// music loading
  minim = new Minim(this);
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependanciesFolder = "Dependencies";
  
  String[] songName = new String[numberOfSongs];
  songName[0] = "";
  songName[1] = "";
  songName[2] = "";
  
  String songName1 = "Sudno";
  String soundEffect1 = "SpringDoor";
  String fileExtension_mp3 = ".mp3";

  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open +  upArrow + open +  dependanciesFolder + open + soundEffectsFolder + open;
  String pathway = musicDirectory + songName1 + fileExtension_mp3;
  println(pathway);
  playList[currentSong ] = minim.loadFile( pathway );
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  println(pathway);
  soundEffects[currentSong] = minim.loadFile( pathway );

  if ( playList[currentSong]==null || soundEffects[currentSong]==null ) {
    println("The Play List or Sound Effects did not Load Properly");
    printArray(playList);
    printArray(soundEffects);
  } else {
    playList[currentSong].play();
    printArray(playList);
  }
}//End Setup

void draw() {
}

void mousePressed() {
}
