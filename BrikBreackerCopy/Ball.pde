class Ball
{
  PVector position;
  PVector speedVect;
  float speedScalar;
  float direction;
  int size;
  
  float playerDist;
  PVector playerDistVect;
  PVector normalVect;
  float angleDiff;
  PVector bounceVect;
  float normalAngle;
  
  public Ball(float x, float y, float run, float rise, float speedScalar, int size)
  {
    position = new PVector(x, y);
    this.speedScalar = speedScalar;
    speedVect = new PVector(run, rise).mult(speedScalar);
    this.size = size;
  }
  
  void appear()
  {
    fill(0);
    noStroke();
    ellipse(position.x, position.y, size, size);
  }
  
  void move()
  {
    position.add(speedVect);
  }
  
  void collisionCheck()
  {
    // walls
    if(position.x <= 0 + size / 2)
    {
      speedVect.x = abs(speedVect.x);
    }
    else if(position.x >= width - size / 2)
    {
      speedVect.x = -abs(speedVect.x);
    }
    if(position.y <= 0 + size / 2)
    {
      speedVect.y = abs(speedVect.y);
    }
    else if(position.y >= height - size / 2)
    {
      speedVect.y = -abs(speedVect.y);
    }
    
    // player
    playerDistVect = PVector.sub(player.position, position);
    playerDist = playerDistVect.mag();
    
    if(playerDist <= size / 2 + player.size / 2)
    {
      normalVect = PVector.sub(position, player.position);
      angleDiff = abs(speedVect.heading() - normalVect.heading());
      
      normalAngle = degrees(normalVect.heading());
      if(normalAngle > 0 && normalAngle < 90)
      {
        
      }
      bounceVect = 
      
      speedVect = normalVect.normalize().mult(speedScalar);
    }
  }
}
