void lose()
{
  fill(0, gameOverAlpha);
  noStroke();
  rect(0, 0, width, height);
  
  textSize(loseTextSize);
  loseTextSize -= loseTextSizeAccel;
  if(loseTextSize > 0)
  {
    fill(225, gameOverAlpha);
    text("YOU LOSE", width / 2, height / 2);
  }
  
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

void loseMR()
{
  
}

void loseKP()
{
  
}

void loseKR()
{
  
}
