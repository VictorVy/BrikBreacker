void mouseReleased()
{
  if(mode == intro)
    introMR();
  else if(mode == game)
    gameMR();
  else if(mode == gameOver)
    gameOverMR();
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
  else if(mode == gameOver)
    gameOverKP();
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
  else if(mode == gameOver)
    gameOverKR();
  else if(mode == pause) 
    pauseKR();
  else
    println("Mode Error");
}
