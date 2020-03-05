class Player
{
  PVector position;
  int speed, size, setSize;
  int hp;
  boolean moveRight, moveLeft, moveUp, moveDown;
  
  public Player(float x, float y, int speed, int size, int hp)
  {
    position = new PVector(x, y);
    this.speed = speed;
    this.setSize = size;
    this.size = setSize;
    this.hp = hp;
    moveRight = false;
    moveLeft = false;
    moveUp = false;
    moveDown = false;
  }
  
  void show()
  {
    if(hp == 4)
      fill(0);
    else if(hp == 3)
      fill(100);
    else if(hp == 2)
      fill(150);
    else if(hp == 1)
      fill(180);
    else
      fill(red);
    ellipse(position.x, position.y, size, size);
    if(position.x < width / 2)
      ellipse(position.x + width, position.y, size, size);
    else if(position.x > width / 2);
      ellipse(position.x - width, position.y, size, size);
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
    
    // reset x pos
    if(position.x > width + size)
      position.x -= width;
    else if(position.x < -size)
      position.x += width;
  }
  
  void collide()
  {
    ball.playerDistVect = PVector.sub(position, ball.position);
    ball.playerDist = ball.playerDistVect.mag();
    
    if(ball.playerDist <= ball.size / 2 + size / 2)
    {
      playerHit.rewind();
      playerHit.play();
      
      ball.normalVect = PVector.sub(ball.position, position);
      //ball.normalAngle = degrees(ball.normalVect.heading());
      //ball.angleDiff = degrees(abs(ball.normalVect.heading() - ball.speedVect.heading()));
      
      //if(ball.normalAngle > 0 && ball.normalAngle < 90)
      //{
      //  if(ball.speedVect.x > ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle + ball.angleDiff;
      //  }
      //  else if(ball.speedVect.x < ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle - ball.angleDiff;
      //  }
      //}
      //if(ball.normalAngle > 90 && ball.normalAngle < 180)
      //{
      //  if(ball.speedVect.x > ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle - ball.angleDiff;
      //  }
      //  else if(ball.speedVect.x < ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle + ball.angleDiff;
      //  }
      //}
      //if(ball.normalAngle > -180 && ball.normalAngle < -90)
      //{
      //  if(ball.speedVect.x > ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle + ball.angleDiff;
      //  }
      //  else if(ball.speedVect.x < ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle - ball.angleDiff;
      //  }
      //}
      //if(ball.normalAngle > -90 && ball.normalAngle <= -1)
      //{
      //  if(ball.speedVect.x > ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle - ball.angleDiff;
      //  }
      //  else if(ball.speedVect.x < ball.speedVect.y)
      //  {
      //    ball.bounceAngle = ball.normalAngle + ball.angleDiff;
      //  }
      //}
      
      //ball.bounceVect = PVector.fromAngle(radians(ball.bounceAngle));
      //ball.speedVect = ball.bounceVect.normalize().mult(ball.speedScalar);
      
      ball.speedVect = ball.normalVect.normalize().mult(ball.speedScalar);
    }
  }
  
  void change()
  {
    if(moveRight && moveLeft)
    {
      
    }
    else if(moveRight)
    {
      if(size <= setSize + 30)
      {
        if(!sizeUp.isPlaying())
        {
          sizeUp.rewind();
          sizeUp.play();
        }
        
        size += 1;
      }
    }
    else if(moveLeft)
    {
      if(size >= setSize - 30)
      {
        if(!sizeDown.isPlaying())
        {
          sizeDown.rewind();
          sizeDown.play();
        }
        
        size -= 1;
      }
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
