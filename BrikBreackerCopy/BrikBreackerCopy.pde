final int intro = 0;
final int game  = 1;
final int gameOver = 2;
final int pause = 3;
int mode = game;

Ball ball;
Player player;

ArrayList<Brik> myBriks;

void setup()
{
  size(800, 600, P2D);
  
  myBriks = new ArrayList<Brik>();
  
  ball = new Ball(random(0, width), random(height / 2.5, height - 50), 4, 2, 15);
  player = new Player(width / 2, height + 5, 3, 75);
  
  for(int i = 0; i < 44; i++)
  {
    myBriks.add(new Brik(random(0, width), random(0, height / 2.5), random(30, 50), 1));
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
