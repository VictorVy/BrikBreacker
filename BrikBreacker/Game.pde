void game()
{
  background(225);
  
  ball.move();
  
  player.show();
  player.move();
}

void gameMR()
{
  
}

void gameKP()
{
  switch(keyCode)
  {
    case RIGHT:
      player.moveRight = true;
      break;
    case LEFT:
      player.moveLeft = true;
      break;
  }
}

void gameKR()
{
  switch(keyCode)
  {
    case RIGHT:
      player.moveRight = false;
      break;
    case LEFT:
      player.moveLeft = false;
      break;
  }
}
