class Player
{
  float x, y;
  int speed, size;
  boolean moveRight, moveLeft;
  
  public Player(float x, float y, int speed, int size)
  {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.size = size;
    moveRight = false;
    moveLeft = false;
  }
  
  void show()
  {
    ellipse(x, y, size, size);
  }
  
  void move()
  {
    if(moveRight && moveLeft)
    {
      
    }
    else if(moveRight)
    {
      x += speed;
    }
    else if(moveLeft)
    {
      x -= speed;
    }
    
    if(x < size / 2)
    {
      x = size / 2;
    }
    else if(x > width - size / 2)
    {
      x = width - size / 2;
    }
  }
}
