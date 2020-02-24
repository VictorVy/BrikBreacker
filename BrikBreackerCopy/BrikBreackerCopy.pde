final int intro = 0;
final int game  = 1;
final int gameOver = 2;
final int pause = 3;
int mode = game;

Ball ball;
Player player;

ArrayList<Brik> myBriks;
int k = 60;

void setup()
{
  size(800, 600, P2D);
  
  myBriks = new ArrayList<Brik>();
  
  ball = new Ball(width / 2, random(height / 2, height - 50), 0, 4, 15);
  player = new Player(width / 2, height + 10, 3, 75);
  
  for(int i = 80; i < width; i += 80)
  { 
    while(k < height / 2)
    {
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
