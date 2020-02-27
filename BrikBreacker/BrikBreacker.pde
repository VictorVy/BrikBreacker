final int intro = 0;
final int game  = 1;
final int gameOver = 2;
final int pause = 3;
int mode = intro;

color red = #C61A1A;

PFont robomono;

Ball ball;
Player player;

int introAlpha = 150;

ArrayList<Brik> myBriks;
int k = 60;

void setup()
{
  size(800, 600);
  
  textAlign(CENTER, CENTER);
  robomono = createFont("robomono.ttf", 24);
  textFont(robomono);
  
  myBriks = new ArrayList<Brik>();
  
  ball = new Ball(width / 2, height / 1.75, 0, 1, 4, 15);
  player = new Player(width / 2, height + 10, 3, 75);
  
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
}

void draw()
{
  if(mode == intro)
    intro();
  else if(mode == game)
    game();
  else if(mode == gameOver)
    gameOver();
  else if(mode == pause) 
    pause();
  else
    println("Mode Error");
}
