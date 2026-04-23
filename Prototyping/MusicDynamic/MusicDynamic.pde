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
  songName[currentSong] = "Sudno";
  currentSong++;
  songName[currentSong] = "Sonne";
  currentSong++;
  songName[currentSong] = "HTC";
  currentSong=0;

  String songName1 = "Sudno";
  String soundEffect1 = "SpringDoor";
  String fileExtension_mp3 = ".mp3";

  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
  String soundEffectsDirectory = upArrow + open +  upArrow + open +  dependanciesFolder + open + soundEffectsFolder + open;
  String pathway;
  for (int i=0; i<numberOfSongs; i++) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3;
    playList[currentSong ] = minim.loadFile( pathway );
  }

  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( pathway );

  for (int i=0; i<numberOfSongs; i++) {
    if ( playList[i]==null ) {
      println("The Play List did not Load Properly");
      printArray(playList);
      exit();
    }
  }

  if ( soundEffects[currentSong]==null ) {
    println("The Sound Effects did not Load Properly");
    printArray(soundEffects);
    exit();
  }
  playList[currentSong].play();
}//End Setup

void draw() {
  playList[currentSong].play();
}

void mousePressed() {
}
