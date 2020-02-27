void intro()
{
  background(225);
  
  for(Brik i : myBriks)
  {
    i.appear();
  }
  
  ball.appear();
  player.move();
  player.show();
  
  fill(255, introAlpha);
  if((dist(width / 2, height / 1.5 + 45, mouseX, mouseY) < 70) || (keyPressed && key == ' '))
  {
    if(introAlpha <= 255)
    {
      introAlpha += 25;
    }
  }
  else
  {
    if(introAlpha >= 150)
    {
      introAlpha -= 25;
    }
  }
  
  ellipse(width / 2, height / 1.5 + 45, 140, 140);
  fill(0);
  textSize(15);
  text("press", width / 2, height / 1.5 + 5);
  textSize(40);
  fill(red);
  text("SPACE", width / 2, height / 1.5 + 35);
  textSize(15);
  fill(0);
  text("to start", width / 2, height / 1.5 + 70);
}

void introMR()
{
  if(dist(width / 2, height / 1.5 + 45, mouseX, mouseY) < 70)
  {
    introAlpha = 255;
    
    mode = game;
  }
}

void introKP()
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

void introKR()
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
  
  if(key == ' ')
  {
    introAlpha = 255;
    
    mode = game;
  }
}
