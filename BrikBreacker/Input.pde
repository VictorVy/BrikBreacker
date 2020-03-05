void mouseReleased()
{
  if(mode == intro)
    introMR();
  else if(mode == game)
    gameMR();
  else if(mode == lose)
    loseMR();
  else if(mode == win) 
    winMR();
  else if(mode == pause) 
    pauseMR();
  else
    println("Mode Error");
}

void keyPressed()
{
  if(mode == intro)
    introKP();
  else if(mode == game)
    gameKP();
  else if(mode == lose)
    loseKP();
  else if(mode == win) 
    winKP();
  else if(mode == pause) 
    pauseKP();
  else
    println("Mode Error");
}

void keyReleased()
{
  if(mode == intro)
    introKR();
  else if(mode == game)
    gameKR();
  else if(mode == lose)
    loseKR();
  else if(mode == win) 
    winKR();
  else if(mode == pause) 
    pauseKR();
  else
    println("Mode Error");
}
