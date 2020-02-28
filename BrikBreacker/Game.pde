void game()
{
  background(225);
  
  for(Brik i : myBriks)
  {
    i.appear();
    i.collide();
  }
  
  if(introAlpha > 0)
  {
    fill(255, introAlpha);
    noStroke();
    ellipse(width / 2, height / 1.5 + 45, 140, 140);
    fill(0, introAlpha);
    textSize(15);
    text("press", width / 2, height / 1.5 + 5);
    textSize(40);
    fill(red, introAlpha);
    text("SPACE", width / 2, height / 1.5 + 35);
    textSize(15);
    fill(0, introAlpha);
    text("to start", width / 2, height / 1.5 + 70);
    introAlpha -= 50;
  }
  
  ball.move();
  ball.appear();
  ball.collisionCheck();
  
  player.show();
  player.move();
  player.collide();
  
  if(kills >= myBriks.size())
  {
    mode = win;
  }
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
  
  switch(key)
  {
    case 'd':
      player.moveRight = true;
      break;
    case 'a':
      player.moveLeft = true;
      break;
    case 'w':
      player.moveUp = true;
      break;
    case 's':
      player.moveDown = true;
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
    case UP:
      player.moveUp = false;
      break;
    case DOWN:
      player.moveDown = false;
  }
  
  switch(key)
  {
    case 'd':
      player.moveRight = false;
      break;
    case 'a':
      player.moveLeft = false;
      break;
    case 'w':
      player.moveUp = false;
      break;
    case 's':
      player.moveDown = false;
      break;
  }
}
