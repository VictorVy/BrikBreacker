
void win()
{
  fill(225, gameOverAlpha);
  noStroke();
  rect(0, 0, width, height);
  
  textSize(winTextSize);
  
  
  if(winTextSize >= 150)
  {
    winTextSize += winTextSizeAccel * 50;
    fill(0, gameOverAlpha);
    noStroke();
    ellipse(width / 2, height / 2, winTextSize - 250, winTextSize - 250);
  }
  else
    winTextSize += winTextSizeAccel;
  
  fill(0, gameOverAlpha);
  text("YOU WIN", width / 2, height / 2);
  
  if(gameOverAlpha <= 255)
  {
    gameOverAlpha += gameOverAlphaAccel;
    gameOverAlphaAccel += 0.01;
  }
  else
  {
    setup();
    mode = intro;
  }
}

void winMR()
{
  
}

void winKP()
{
  
}

void winKR()
{
  
}
