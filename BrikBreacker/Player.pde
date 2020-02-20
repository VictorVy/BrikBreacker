class Player
{
  float x, y;
  int speed, size;
  boolean moveRight, moveLeft, moveUp, moveDown;
  
  public Player(float x, float y, int speed, int size)
  {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.size = size;
    moveRight = false;
    moveLeft = false;
    moveUp = false;
    moveDown = false;
  }
  
  void show()
  {
    fill(0);
    noStroke();
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
    
    if(moveUp && moveDown)
    {
      
    }
    else if(moveUp)
    {
      y -= speed / 1.5;
    }
    else if(moveDown)
    {
      y += speed / 1.5;
    }
    
    if(x < size / 2)
    {
      x = size / 2;
    }
    else if(x > width - size / 2)
    {
      x = width - size / 2;
    }
    
    if(y < height - 40)
    {
      y = height - 40;
    }
    else if(y > height + 10)
    {
      y = height + 10;
    }
  }
}
