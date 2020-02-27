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
    
    // reset x pos
    if(position.x > width + size)
      position.x -= width;
    else if(position.x < -size)
      position.x += width;
    
    if(position.y < height - 40)
    {
      position.y = height - 40;
    }
    else if(position.y > height + 10)
    {
      position.y = height + 10;
    }
  }
  
  void collide()
  {
    ball.playerDistVect = PVector.sub(position, ball.position);
    ball.playerDist = ball.playerDistVect.mag();
    
    if(ball.playerDist <= ball.size / 2 + size / 2)
    {
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
}
