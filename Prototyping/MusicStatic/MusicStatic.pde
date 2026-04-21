//Library - minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; 
int numberOfSongs = 1;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;

//Display
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;

minim = new Minim(this);
String upArrow = "..";
String open = "/";
String musicFolder = "Music/";
String soundEffectsFolder = "Sound Effects";
String dependanciesFolder = "Dependancies";
String songName1 = "";
String soundEffect1 = "";
String fileExtension_mp3 = ".mp3";

String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open;
String soundEffectsDirectory = upArrow + open +  upArrow + open +  dependanciesFolder + open + soundEffectsFolder + open;
String file = musicDirectory + songName1 + fileExtension_mp3;
playList[currentSong ] = minim.loadFile( file );
file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile( file );

if ( playList[currentSong]==null || soundEffects[currentSong]==null ) {
  println("The Play List or Sound Effects did not Load Properly");
  printArray(playList);
  printArray(soundEffects);
