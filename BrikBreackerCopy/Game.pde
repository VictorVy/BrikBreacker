void game()
{
  background(225);
  
  for(Brik i : myBriks)
  {
    i.appear();
    i.collide();
  }
  
  ball.move();
  ball.appear();
  ball.collisionCheck();
  
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
    case UP:
      player.moveUp = true;
      break;
    case DOWN:
      player.moveDown = true;
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
    case UP:
      player.moveUp = false;
      break;
    case DOWN:
      player.moveDown = false;
  }
}
