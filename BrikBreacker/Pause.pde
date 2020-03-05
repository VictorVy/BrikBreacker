void pause()
{
  image(get, 0, 0);
  
  fill(255, 50);
  rect(0, 0, width, height);
  
  //beginShape();
  
  //noStroke();
  //fill(255, 255);
  //vertex(0, 0);
  //vertex(width, 0);
  
  //fill(255, 0);
  //vertex(width, height / 4);
  //vertex(0, height / 4);
  
  //endShape();
  
  fill(0);
  textAlign(CENTER);
  textSize(42);
  text("PAUSED", width / 2, height / 1.5);
}

void pauseMR()
{
  
}

void pauseKP()
{
  
}

void pauseKR()
{
  switch(key)
  {
    case TAB:
      pauseFX.rewind();
      pauseFX.play();
      mode = game;
      break;
  }
}
