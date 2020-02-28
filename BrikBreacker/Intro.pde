void intro()
{
  background(225);
  
  for(Brik i : myBriks)
  {
    i.appear();
  }
  
  ball.appear();
  player.change();
  player.show();
  
  noStroke();
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
  
  fill(0, introFadeAlpha);
  noStroke();
  rect(0, 0, width, height);
  
  if(introFadeAlpha >= 0)
  {
    introFadeAlpha -= introFadeAlphaAccel;
    introFadeAlphaAccel += 0.05;
  }
}

void introMR()
{
  if((dist(width / 2, height / 1.5 + 45, mouseX, mouseY) < 70) && introFadeAlpha <= 0)
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
  
  if(key == ' ' && introFadeAlpha <= 0)
  {
    introAlpha = 255;
    
    mode = game;
  }
}
