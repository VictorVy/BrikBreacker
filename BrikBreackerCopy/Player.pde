class Player
{
  PVector position;
  int speed, size;
  boolean moveRight, moveLeft, moveUp, moveDown;
  
  public Player(float x, float y, int speed, int size)
  {
    position = new PVector(x, y);
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
    ellipse(position.x, position.y, size, size);
  }
  
  void move()
  {
    if(moveRight && moveLeft)
    {
      
    }
    else if(moveRight)
    {
      position.x += speed;
    }
    else if(moveLeft)
    {
      position.x -= speed;
    }
    
    if(moveUp && moveDown)
    {
      
    }
    else if(moveUp)
    {
      position.y -= speed / 1.5;
    }
    else if(moveDown)
    {
      position.y += speed / 1.5;
    }
    
    if(position.x < size / 2)
    {
      position.x = size / 2;
    }
    else if(position.x > width - size / 2)
    {
      position.x = width - size / 2;
    }
    
    if(position.y < height - 40)
    {
      position.y = height - 40;
    }
    else if(position.y > height + 10)
    {
      position.y = height + 10;
    }
  }
}
