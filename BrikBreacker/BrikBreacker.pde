import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioPlayer introFX;
AudioPlayer sizeUp;
AudioPlayer sizeDown;
AudioPlayer start;
AudioPlayer loseLife;
AudioPlayer playerHit;
AudioPlayer brikHit;
AudioPlayer wallHit;
AudioPlayer loseFX;
AudioPlayer winFX;
AudioPlayer pauseFX;

final int intro = 0;
final int game  = 1;
final int lose = 2;
final int win = 3;
final int pause = 4;
int mode = intro;

color red = #C61A1A;

PFont robomono;

Ball ball;
Player player;

int introAlpha;
float introFadeAlpha;
float introFadeAlphaAccel;
float gameOverAlpha;
float gameOverAlphaAccel;
float loseTextSize;
float loseTextSizeAccel;
float winTextSize;
float winTextSizeAccel;

ArrayList<Brik> myBriks;
int k = 60;

int kills;

PImage get;

void setup()
{
  size(800, 600, FX2D);
  
  minim = new Minim(this);
  
  introFX = minim.loadFile("intro.wav");
  sizeUp = minim.loadFile("sizeUp.wav");
  sizeDown = minim.loadFile("sizeDown.wav");
  start = minim.loadFile("start.wav");
  loseLife = minim.loadFile("loseLife.wav");
  playerHit = minim.loadFile("playerHit.wav");
  brikHit = minim.loadFile("brikHit.wav");
  wallHit = minim.loadFile("wallHit.wav");
  loseFX = minim.loadFile("lose.wav");
  winFX = minim.loadFile("win.wav");
  pauseFX = minim.loadFile("pause.wav");
  
  introFX.rewind();
  introFX.play();
  
  textAlign(CENTER, CENTER);
  robomono = createFont("robomono.ttf", 24);
  textFont(robomono);
  
  myBriks = new ArrayList<Brik>();
  
  ball = new Ball(width / 2, height / 1.75, 0, 1, 4, 15);
  player = new Player(width / 2, height + 10, 3, 75, 4);
  
  //myBriks.add(new Brik(width / 2, height / 2, 50, 1));
  
  for(int i = 80; i < width; i += 80)
  { 
    while(k < height / 2)
    {
      if(i == 80 || i == width / 2 || i == width - 80)
        myBriks.add(new Brik(i, k, 50, 1));
      else
        myBriks.add(new Brik(i, k, 50, 2));
      
      k += 60;
    }
    
    if(k % 60 == 0)
    {
      k = 85;
    }
    else
    {
      k = 60;
    }
  }
  
  introAlpha = 150;
  introFadeAlpha = 255;
  introFadeAlphaAccel = 0.5;
  gameOverAlpha = 0;
  gameOverAlphaAccel = 0.1;
  loseTextSize = width / 2;
  loseTextSizeAccel = 2;
  winTextSize = 0;
  winTextSizeAccel = 1;
  
  kills = 0;
}

void draw()
{
  if(mode == intro)
    intro();
  else if(mode == game)
    game();
  else if(mode == lose)
    lose();
  else if(mode == win) 
    win();
  else if(mode == pause) 
    pause();
  else
    println("Mode Error");
}
