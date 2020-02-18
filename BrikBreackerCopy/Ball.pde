class Ball
{
  float x, y;
  int speed;
  int size;
  int dir;
  
  public Ball(float x, float y, int speed, int size)
  {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.size = size;
    dir = 0;
  }
  
  void move()
  {
    fill(0);
    noStroke();
    ellipse(x, y, size, size);
    
    pushMatrix();
    rotate(radians(dir));
    translate(0, speed);
    popMatrix();
    
    if(x <= 0 + size / 2)
    {
      //speedX = abs(speedX);
    }
    else if(x >= width - size / 2)
    {
      //speedX = -abs(speedX);
    }
    if(y <= 0 + size / 2)
    {
      //speedY = abs(speedY);
    }
    else if(y >= height - size / 2)
    {
      //speedY = -abs(speedY);
    }
    
    if(dist(x, y, player.x, player.y) < (size / 2 + player.size / 2))
    {
      //speedX = (int)(x - player.x) / 9;
      //speedY = (int)(y - player.y) / 9;
    }
  }
}
