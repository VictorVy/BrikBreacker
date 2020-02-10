class Ball
{
  float x, y;
  int speedX, speedY;
  int size;
  
  public Ball(float x, float y, int speedX, int speedY, int size)
  {
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    this.size = size;
  }
  
  void move()
  {
    ellipse(x, y, size, size);
    
    x += speedX;
    y += speedY;
    
    if(x <= 0 + size / 2)
    {
      speedX = abs(speedX);
    }
    else if(x >= width - size / 2)
    {
      speedX = -abs(speedX);
    }
    if(y <= 0 + size / 2)
    {
      speedY = abs(speedY);
    }
    else if(y >= height - size / 2)
    {
      speedY = -abs(speedY);
    }
  }
}
